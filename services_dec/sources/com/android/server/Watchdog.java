package com.android.server;

import android.app.IActivityController;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.biometrics.face.V1_0.IBiometricsFace;
import android.hardware.biometrics.fingerprint.V2_1.IBiometricsFingerprint;
import android.hardware.health.V2_0.IHealth;
import android.hidl.manager.V1_0.IServiceManager;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructRlimit;
import android.util.Slog;
import com.android.server.am.ActivityManagerService;
import com.android.server.wm.SurfaceAnimationThread;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Watchdog extends Thread {
    private static final long CHECK_INTERVAL = 30000;
    private static final int COMPLETED = 0;
    private static final boolean DB = false;
    public static final boolean DEBUG = false;
    private static final long DEFAULT_TIMEOUT = 60000;
    private static final int OVERDUE = 3;
    static final String TAG = "Watchdog";
    private static final int WAITED_HALF = 2;
    private static final int WAITING = 1;
    private static Watchdog sWatchdog;
    private ActivityManagerService mActivity;
    private boolean mAllowRestart;
    private IActivityController mController;
    private final ArrayList<HandlerChecker> mHandlerCheckers;
    private final List<Integer> mInterestingJavaPids;
    private final HandlerChecker mMonitorChecker;
    private final OpenFdMonitor mOpenFdMonitor;
    public static final String[] NATIVE_STACKS_OF_INTEREST = {"/system/bin/audioserver", "/system/bin/cameraserver", "/system/bin/drmserver", "/system/bin/mediadrmserver", "/system/bin/mediaserver", "/system/bin/netd", "/system/bin/sdcard", "/system/bin/surfaceflinger", "/system/bin/vold", "media.extractor", "media.metrics", "media.codec", "media.swcodec", "com.android.bluetooth", "/apex/com.android.os.statsd/bin/statsd"};
    public static final List<String> HAL_INTERFACES_OF_INTEREST = Arrays.asList("android.hardware.audio@2.0::IDevicesFactory", "android.hardware.audio@4.0::IDevicesFactory", "android.hardware.audio@5.0::IDevicesFactory", "android.hardware.audio@6.0::IDevicesFactory", IBiometricsFace.kInterfaceName, IBiometricsFingerprint.kInterfaceName, "android.hardware.bluetooth@1.0::IBluetoothHci", "android.hardware.camera.provider@2.4::ICameraProvider", "android.hardware.gnss@1.0::IGnss", "android.hardware.graphics.allocator@2.0::IAllocator", "android.hardware.graphics.composer@2.1::IComposer", IHealth.kInterfaceName, "android.hardware.light@2.0::ILight", "android.hardware.media.c2@1.0::IComponentStore", "android.hardware.media.omx@1.0::IOmx", "android.hardware.media.omx@1.0::IOmxStore", "android.hardware.neuralnetworks@1.0::IDevice", "android.hardware.power.stats@1.0::IPowerStats", "android.hardware.sensors@1.0::ISensors", "android.hardware.sensors@2.0::ISensors", "android.hardware.sensors@2.1::ISensors", "android.hardware.vr@1.0::IVr", "android.system.suspend@1.0::ISystemSuspend");

    public interface Monitor {
        void monitor();
    }

    public final class HandlerChecker implements Runnable {
        private Monitor mCurrentMonitor;
        private final Handler mHandler;
        private final String mName;
        private int mPauseCount;
        private long mStartTime;
        private final long mWaitMax;
        private final ArrayList<Monitor> mMonitors = new ArrayList<>();
        private final ArrayList<Monitor> mMonitorQueue = new ArrayList<>();
        private boolean mCompleted = true;

        HandlerChecker(Handler handler, String name, long waitMaxMillis) {
            this.mHandler = handler;
            this.mName = name;
            this.mWaitMax = waitMaxMillis;
        }

        void addMonitorLocked(Monitor monitor) {
            this.mMonitorQueue.add(monitor);
        }

        public void scheduleCheckLocked() {
            if (this.mCompleted) {
                this.mMonitors.addAll(this.mMonitorQueue);
                this.mMonitorQueue.clear();
            }
            if ((this.mMonitors.size() == 0 && this.mHandler.getLooper().getQueue().isPolling()) || this.mPauseCount > 0) {
                this.mCompleted = true;
            } else {
                if (!this.mCompleted) {
                    return;
                }
                this.mCompleted = false;
                this.mCurrentMonitor = null;
                this.mStartTime = SystemClock.uptimeMillis();
                this.mHandler.postAtFrontOfQueue(this);
            }
        }

        boolean isOverdueLocked() {
            return !this.mCompleted && SystemClock.uptimeMillis() > this.mStartTime + this.mWaitMax;
        }

        public int getCompletionStateLocked() {
            if (this.mCompleted) {
                return 0;
            }
            long latency = SystemClock.uptimeMillis() - this.mStartTime;
            long j = this.mWaitMax;
            if (latency < j / 2) {
                return 1;
            }
            if (latency < j) {
                return 2;
            }
            return 3;
        }

        public Thread getThread() {
            return this.mHandler.getLooper().getThread();
        }

        public String getName() {
            return this.mName;
        }

        String describeBlockedStateLocked() {
            if (this.mCurrentMonitor == null) {
                return "Blocked in handler on " + this.mName + " (" + getThread().getName() + ")";
            }
            return "Blocked in monitor " + this.mCurrentMonitor.getClass().getName() + " on " + this.mName + " (" + getThread().getName() + ")";
        }

        @Override // java.lang.Runnable
        public void run() {
            Monitor monitor;
            int size = this.mMonitors.size();
            for (int i = 0; i < size; i++) {
                synchronized (Watchdog.this) {
                    monitor = this.mMonitors.get(i);
                    this.mCurrentMonitor = monitor;
                }
                monitor.monitor();
            }
            synchronized (Watchdog.this) {
                this.mCompleted = true;
                this.mCurrentMonitor = null;
            }
        }

        public void pauseLocked(String reason) {
            this.mPauseCount++;
            this.mCompleted = true;
            Slog.i(Watchdog.TAG, "Pausing HandlerChecker: " + this.mName + " for reason: " + reason + ". Pause count: " + this.mPauseCount);
        }

        public void resumeLocked(String reason) {
            int i = this.mPauseCount;
            if (i > 0) {
                this.mPauseCount = i - 1;
                Slog.i(Watchdog.TAG, "Resuming HandlerChecker: " + this.mName + " for reason: " + reason + ". Pause count: " + this.mPauseCount);
                return;
            }
            Slog.wtf(Watchdog.TAG, "Already resumed HandlerChecker: " + this.mName);
        }
    }

    final class RebootRequestReceiver extends BroadcastReceiver {
        RebootRequestReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context c, Intent intent) {
            if (intent.getIntExtra("nowait", 0) != 0) {
                Watchdog.this.rebootSystem("Received ACTION_REBOOT broadcast");
                return;
            }
            Slog.w(Watchdog.TAG, "Unsupported ACTION_REBOOT broadcast: " + intent);
        }
    }

    private static final class BinderThreadMonitor implements Monitor {
        private BinderThreadMonitor() {
        }

        @Override // com.android.server.Watchdog.Monitor
        public void monitor() {
            Binder.blockUntilThreadAvailable();
        }
    }

    public static Watchdog getInstance() {
        if (sWatchdog == null) {
            sWatchdog = new Watchdog();
        }
        return sWatchdog;
    }

    private Watchdog() {
        super("watchdog");
        this.mHandlerCheckers = new ArrayList<>();
        this.mAllowRestart = true;
        this.mInterestingJavaPids = new ArrayList();
        HandlerChecker handlerChecker = new HandlerChecker(FgThread.getHandler(), "foreground thread", 60000L);
        this.mMonitorChecker = handlerChecker;
        this.mHandlerCheckers.add(handlerChecker);
        this.mHandlerCheckers.add(new HandlerChecker(new Handler(Looper.getMainLooper()), "main thread", 60000L));
        this.mHandlerCheckers.add(new HandlerChecker(UiThread.getHandler(), "ui thread", 60000L));
        this.mHandlerCheckers.add(new HandlerChecker(IoThread.getHandler(), "i/o thread", 60000L));
        this.mHandlerCheckers.add(new HandlerChecker(DisplayThread.getHandler(), "display thread", 60000L));
        this.mHandlerCheckers.add(new HandlerChecker(AnimationThread.getHandler(), "animation thread", 60000L));
        this.mHandlerCheckers.add(new HandlerChecker(SurfaceAnimationThread.getHandler(), "surface animation thread", 60000L));
        addMonitor(new BinderThreadMonitor());
        this.mOpenFdMonitor = OpenFdMonitor.create();
        this.mInterestingJavaPids.add(Integer.valueOf(Process.myPid()));
    }

    public void init(Context context, ActivityManagerService activity) {
        this.mActivity = activity;
        context.registerReceiver(new RebootRequestReceiver(), new IntentFilter("android.intent.action.REBOOT"), "android.permission.REBOOT", null);
    }

    private static boolean isInterestingJavaProcess(String processName) {
        return processName.equals(StorageManagerService.sMediaStoreAuthorityProcessName) || processName.equals("com.android.phone");
    }

    public void processStarted(String processName, int pid) {
        if (isInterestingJavaProcess(processName)) {
            Slog.i(TAG, "Interesting Java process " + processName + " started. Pid " + pid);
            synchronized (this) {
                this.mInterestingJavaPids.add(Integer.valueOf(pid));
            }
        }
    }

    public void processDied(String processName, int pid) {
        if (isInterestingJavaProcess(processName)) {
            Slog.i(TAG, "Interesting Java process " + processName + " died. Pid " + pid);
            synchronized (this) {
                this.mInterestingJavaPids.remove(Integer.valueOf(pid));
            }
        }
    }

    public void setActivityController(IActivityController controller) {
        synchronized (this) {
            this.mController = controller;
        }
    }

    public void setAllowRestart(boolean allowRestart) {
        synchronized (this) {
            this.mAllowRestart = allowRestart;
        }
    }

    public void addMonitor(Monitor monitor) {
        synchronized (this) {
            this.mMonitorChecker.addMonitorLocked(monitor);
        }
    }

    public void addThread(Handler thread) {
        addThread(thread, 60000L);
    }

    public void addThread(Handler thread, long timeoutMillis) {
        synchronized (this) {
            String name = thread.getLooper().getThread().getName();
            this.mHandlerCheckers.add(new HandlerChecker(thread, name, timeoutMillis));
        }
    }

    public void pauseWatchingCurrentThread(String reason) {
        synchronized (this) {
            for (HandlerChecker hc : this.mHandlerCheckers) {
                if (Thread.currentThread().equals(hc.getThread())) {
                    hc.pauseLocked(reason);
                }
            }
        }
    }

    public void resumeWatchingCurrentThread(String reason) {
        synchronized (this) {
            for (HandlerChecker hc : this.mHandlerCheckers) {
                if (Thread.currentThread().equals(hc.getThread())) {
                    hc.resumeLocked(reason);
                }
            }
        }
    }

    void rebootSystem(String reason) {
        Slog.i(TAG, "Rebooting system because: " + reason);
        IPowerManager pms = ServiceManager.getService("power");
        try {
            pms.reboot(false, reason, false);
        } catch (RemoteException e) {
        }
    }

    private int evaluateCheckerCompletionLocked() {
        int state = 0;
        for (int i = 0; i < this.mHandlerCheckers.size(); i++) {
            HandlerChecker hc = this.mHandlerCheckers.get(i);
            state = Math.max(state, hc.getCompletionStateLocked());
        }
        return state;
    }

    private ArrayList<HandlerChecker> getBlockedCheckersLocked() {
        ArrayList<HandlerChecker> checkers = new ArrayList<>();
        for (int i = 0; i < this.mHandlerCheckers.size(); i++) {
            HandlerChecker hc = this.mHandlerCheckers.get(i);
            if (hc.isOverdueLocked()) {
                checkers.add(hc);
            }
        }
        return checkers;
    }

    private String describeCheckersLocked(List<HandlerChecker> checkers) {
        StringBuilder builder = new StringBuilder(128);
        for (int i = 0; i < checkers.size(); i++) {
            if (builder.length() > 0) {
                builder.append(", ");
            }
            builder.append(checkers.get(i).describeBlockedStateLocked());
        }
        return builder.toString();
    }

    private static ArrayList<Integer> getInterestingHalPids() {
        try {
            IServiceManager serviceManager = IServiceManager.getService();
            ArrayList<IServiceManager.InstanceDebugInfo> dump = serviceManager.debugDump();
            HashSet<Integer> pids = new HashSet<>();
            for (IServiceManager.InstanceDebugInfo info : dump) {
                if (info.pid != -1 && HAL_INTERFACES_OF_INTEREST.contains(info.interfaceName)) {
                    pids.add(Integer.valueOf(info.pid));
                }
            }
            return new ArrayList<>(pids);
        } catch (RemoteException e) {
            return new ArrayList<>();
        }
    }

    static ArrayList<Integer> getInterestingNativePids() {
        ArrayList<Integer> pids = getInterestingHalPids();
        int[] nativePids = Process.getPidsForCommands(NATIVE_STACKS_OF_INTEREST);
        if (nativePids != null) {
            pids.ensureCapacity(pids.size() + nativePids.length);
            for (int i : nativePids) {
                pids.add(Integer.valueOf(i));
            }
        }
        return pids;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0151  */
    /* JADX WARN: Code duplicated, block: B:73:0x0154  */
    /* JADX WARN: Code duplicated, block: B:74:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x015e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0168  */
    /* JADX WARN: Code duplicated, block: B:78:0x0170  */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ac, code lost:
    
        android.util.EventLog.writeEvent(com.android.server.EventLogTags.WATCHDOG, r11);
        r0 = new java.util.ArrayList<>(r21.mInterestingJavaPids);
        r5 = android.os.SystemClock.uptimeMillis();
        r0 = new java.lang.StringBuilder();
        r0.append(com.android.server.MemoryPressureUtil.currentPsiState());
        r0 = new com.android.internal.os.ProcessCpuTracker(false);
        r0 = new java.io.StringWriter();
        r16 = com.android.server.am.ActivityManagerService.dumpStackTraces(r0, r0, new android.util.SparseArray(), getInterestingNativePids(), r0);
        android.os.SystemClock.sleep(5000);
        r0.update();
        r0.append(r0.printCurrentState(r5));
        r0.append(r0.getBuffer());
        doSysRq('w');
        doSysRq('l');
        r4 = r11;
        r0 = new com.android.server.Watchdog.AnonymousClass1(r21, "watchdogWriteToDropbox");
        r0.start();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0120, code lost:
    
        r0.join(2000);
     */
    /* JADX WARN: Instruction removed from duplicated block: B:78:0x0170, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:? -> B:85:0x01ae). Please report as a decompilation issue!!! */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.Watchdog.run():void");
    }

    private void doSysRq(char c) {
        try {
            FileWriter sysrq_trigger = new FileWriter("/proc/sysrq-trigger");
            sysrq_trigger.write(c);
            sysrq_trigger.close();
        } catch (IOException e) {
            Slog.w(TAG, "Failed to write to /proc/sysrq-trigger", e);
        }
    }

    public static final class OpenFdMonitor {
        private static final int FD_HIGH_WATER_MARK = 12;
        private final File mDumpDir;
        private final File mFdHighWaterMark;

        public static OpenFdMonitor create() {
            if (!Build.IS_DEBUGGABLE) {
                return null;
            }
            try {
                StructRlimit rlimit = Os.getrlimit(OsConstants.RLIMIT_NOFILE);
                File fdThreshold = new File("/proc/self/fd/" + (rlimit.rlim_cur - 12));
                return new OpenFdMonitor(new File(ActivityManagerService.ANR_TRACE_DIR), fdThreshold);
            } catch (ErrnoException errno) {
                Slog.w(Watchdog.TAG, "Error thrown from getrlimit(RLIMIT_NOFILE)", errno);
                return null;
            }
        }

        OpenFdMonitor(File dumpDir, File fdThreshold) {
            this.mDumpDir = dumpDir;
            this.mFdHighWaterMark = fdThreshold;
        }

        private void dumpOpenDescriptors() throws ErrnoException {
            String resolvedPath;
            List<String> dumpInfo = new ArrayList<>();
            String fdDirPath = String.format("/proc/%d/fd/", Integer.valueOf(Process.myPid()));
            File[] fds = new File(fdDirPath).listFiles();
            if (fds == null) {
                dumpInfo.add("Unable to list " + fdDirPath);
            } else {
                for (File f : fds) {
                    String fdSymLink = f.getAbsolutePath();
                    try {
                        resolvedPath = Os.readlink(fdSymLink);
                    } catch (ErrnoException ex) {
                        resolvedPath = ex.getMessage();
                    }
                    dumpInfo.add(fdSymLink + "\t" + resolvedPath);
                }
            }
            try {
                File dumpFile = File.createTempFile("anr_fd_", "", this.mDumpDir);
                Path out = Paths.get(dumpFile.getAbsolutePath(), new String[0]);
                Files.write(out, dumpInfo, StandardCharsets.UTF_8, new OpenOption[0]);
            } catch (IOException ex2) {
                Slog.w(Watchdog.TAG, "Unable to write open descriptors to file: " + ex2);
            }
        }

        public boolean monitor() throws ErrnoException {
            if (this.mFdHighWaterMark.exists()) {
                dumpOpenDescriptors();
                return true;
            }
            return false;
        }
    }
}
