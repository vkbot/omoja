package com.android.server.storage;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Binder;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.util.ArrayMap;
import android.util.DataUnit;
import android.util.Slog;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.EventLogTags;
import com.android.server.SystemService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.InstructionSets;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.utils.PriorityDump;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceStorageMonitorService extends SystemService {
    private static final long DEFAULT_CHECK_INTERVAL = 60000;
    public static final String EXTRA_SEQUENCE = "seq";
    private static final int MSG_CHECK = 1;
    private static final int MSG_UPDATA_PROP = 2;
    static final int OPTION_FORCE_UPDATE = 1;
    private static final String PROPERTY_NAME_LOW_MEMERY_LEVER = "sys.lowstorage.state.level";
    static final String SERVICE = "devicestoragemonitor";
    private static final String TAG = "DeviceStorageMonitorService";
    private static final String TV_NOTIFICATION_CHANNEL_ID = "devicestoragemonitor.tv";
    private boolean isFirstUpdateProp;
    private CacheFileDeletedObserver mCacheFileDeletedObserver;
    private volatile int mForceLevel;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private final DeviceStorageMonitorInternal mLocalService;
    private NotificationManager mNotifManager;
    private final Binder mRemoteService;
    private final AtomicInteger mSeq;
    private final ArrayMap<UUID, State> mStates;
    int newLevel;
    int oldLevel;
    private static final long DEFAULT_LOG_DELTA_BYTES = DataUnit.MEBIBYTES.toBytes(64);
    private static final long BOOT_IMAGE_STORAGE_REQUIREMENT = DataUnit.MEBIBYTES.toBytes(250);

    private static class State {
        private static final int LEVEL_FULL = 2;
        private static final int LEVEL_LOW = 1;
        private static final int LEVEL_NORMAL = 0;
        private static final int LEVEL_UNKNOWN = -1;
        public long lastUsableBytes;
        public int level;

        private State() {
            this.level = 0;
            this.lastUsableBytes = JobStatus.NO_LATEST_RUNTIME;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isEntering(int level, int oldLevel, int newLevel) {
            return newLevel >= level && (oldLevel < level || oldLevel == -1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isLeaving(int level, int oldLevel, int newLevel) {
            return newLevel < level && (oldLevel >= level || oldLevel == -1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String levelToString(int level) {
            if (level == -1) {
                return "UNKNOWN";
            }
            if (level == 0) {
                return PriorityDump.PRIORITY_ARG_NORMAL;
            }
            if (level == 1) {
                return "LOW";
            }
            if (level == 2) {
                return "FULL";
            }
            return Integer.toString(level);
        }
    }

    private State findOrCreateState(UUID uuid) {
        State state = this.mStates.get(uuid);
        if (state == null) {
            State state2 = new State();
            this.mStates.put(uuid, state2);
            return state2;
        }
        return state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void check() {
        StorageManager storage = (StorageManager) getContext().getSystemService(StorageManager.class);
        int seq = this.mSeq.get();
        if (storage == null) {
            return;
        }
        Iterator it = storage.getWritablePrivateVolumes().iterator();
        while (it.hasNext()) {
            VolumeInfo vol = (VolumeInfo) it.next();
            File file = vol.getPath();
            long fullBytes = storage.getStorageFullBytes(file);
            long lowBytes = storage.getStorageLowBytes(file);
            if (lowBytes < DataUnit.MEBIBYTES.toBytes(3072L)) {
                lowBytes = DataUnit.MEBIBYTES.toBytes(3072L);
            }
            if (fullBytes < DataUnit.MEBIBYTES.toBytes(2048L)) {
                fullBytes = DataUnit.MEBIBYTES.toBytes(2048L);
            }
            Slog.i(TAG, "system_monitor: low memery threshold  " + (lowBytes / 1024) + "K");
            StringBuilder sb = new StringBuilder();
            sb.append("system_monitor: full memery threshold  ");
            Iterator it2 = it;
            sb.append(fullBytes / 1024);
            sb.append("K");
            Slog.i(TAG, sb.toString());
            Slog.i(TAG, "system_monitor: Total Userdata  " + (file.getTotalSpace() / 1024) + "K");
            Slog.i(TAG, "system_monitor: Availble Userdata  " + (file.getUsableSpace() / 1024) + "K");
            if (file.getUsableSpace() < (3 * lowBytes) / 2) {
                PackageManagerService pms = (PackageManagerService) ServiceManager.getService(Settings.ATTR_PACKAGE);
                try {
                    pms.freeStorage(vol.getFsUuid(), lowBytes * 2, 0);
                } catch (IOException e) {
                    Slog.w(TAG, e);
                }
            }
            UUID uuid = StorageManager.convert(vol.getFsUuid());
            State state = findOrCreateState(uuid);
            long totalBytes = file.getTotalSpace();
            StorageManager storage2 = storage;
            int seq2 = seq;
            long usableBytes = file.getUsableSpace();
            this.oldLevel = state.level;
            if (this.mForceLevel != -1) {
                this.oldLevel = -1;
                this.newLevel = this.mForceLevel;
            } else if (usableBytes <= fullBytes) {
                this.newLevel = 2;
            } else if (usableBytes <= lowBytes) {
                this.newLevel = 1;
            } else if (!StorageManager.UUID_DEFAULT.equals(uuid) || isBootImageOnDisk() || usableBytes >= BOOT_IMAGE_STORAGE_REQUIREMENT) {
                this.newLevel = 0;
            } else {
                this.newLevel = 1;
            }
            Slog.i(TAG, "system_monitor: LowStorage  newLevel =" + State.levelToString(this.newLevel) + ",oldLevel=" + State.levelToString(this.oldLevel) + ", prop:" + getSystemProperty(PROPERTY_NAME_LOW_MEMERY_LEVER));
            if (Math.abs(state.lastUsableBytes - usableBytes) > DEFAULT_LOG_DELTA_BYTES || this.oldLevel != this.newLevel) {
                EventLogTags.writeStorageState(uuid.toString(), this.oldLevel, this.newLevel, usableBytes, totalBytes);
                state.lastUsableBytes = usableBytes;
            }
            Handler handler = this.mHandler;
            if (handler != null) {
                if (this.isFirstUpdateProp) {
                    if (!handler.hasMessages(2)) {
                        this.mHandler.sendEmptyMessageDelayed(2, 20000L);
                    }
                } else if (!handler.hasMessages(2)) {
                    this.mHandler.sendEmptyMessage(2);
                }
            }
            updateNotifications(vol, this.oldLevel, this.newLevel);
            updateBroadcasts(vol, this.oldLevel, this.newLevel, seq2);
            state.level = this.newLevel;
            seq = seq2;
            it = it2;
            storage = storage2;
        }
        if (!this.mHandler.hasMessages(1)) {
            Handler handler2 = this.mHandler;
            handler2.sendMessageDelayed(handler2.obtainMessage(1), 60000L);
        }
    }

    public DeviceStorageMonitorService(Context context) {
        super(context);
        this.mSeq = new AtomicInteger(1);
        this.mForceLevel = -1;
        this.mStates = new ArrayMap<>();
        this.isFirstUpdateProp = true;
        this.oldLevel = -1;
        this.newLevel = -1;
        this.mLocalService = new DeviceStorageMonitorInternal() { // from class: com.android.server.storage.DeviceStorageMonitorService.2
            @Override // com.android.server.storage.DeviceStorageMonitorInternal
            public void checkMemory() {
                DeviceStorageMonitorService.this.mHandler.removeMessages(1);
                DeviceStorageMonitorService.this.mHandler.obtainMessage(1).sendToTarget();
            }

            @Override // com.android.server.storage.DeviceStorageMonitorInternal
            public boolean isMemoryLow() {
                return Environment.getDataDirectory().getUsableSpace() < getMemoryLowThreshold();
            }

            @Override // com.android.server.storage.DeviceStorageMonitorInternal
            public long getMemoryLowThreshold() {
                return ((StorageManager) DeviceStorageMonitorService.this.getContext().getSystemService(StorageManager.class)).getStorageLowBytes(Environment.getDataDirectory());
            }
        };
        this.mRemoteService = new Binder() { // from class: com.android.server.storage.DeviceStorageMonitorService.3
            @Override // android.os.Binder
            protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
                if (DumpUtils.checkDumpPermission(DeviceStorageMonitorService.this.getContext(), DeviceStorageMonitorService.TAG, pw)) {
                    DeviceStorageMonitorService.this.dumpImpl(fd, pw, args);
                }
            }

            public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
                DeviceStorageMonitorService.this.new Shell().exec(this, in, out, err, args, callback, resultReceiver);
            }
        };
        HandlerThread handlerThread = new HandlerThread(TAG, 10);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.android.server.storage.DeviceStorageMonitorService.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                int i = msg.what;
                if (i == 1) {
                    DeviceStorageMonitorService.this.check();
                } else if (i == 2) {
                    if (DeviceStorageMonitorService.this.getSystemProperty(DeviceStorageMonitorService.PROPERTY_NAME_LOW_MEMERY_LEVER) != DeviceStorageMonitorService.this.newLevel) {
                        DeviceStorageMonitorService deviceStorageMonitorService = DeviceStorageMonitorService.this;
                        deviceStorageMonitorService.setSystemProperty(DeviceStorageMonitorService.PROPERTY_NAME_LOW_MEMERY_LEVER, deviceStorageMonitorService.newLevel);
                    }
                    DeviceStorageMonitorService.this.isFirstUpdateProp = false;
                }
            }
        };
    }

    private static boolean isBootImageOnDisk() {
        for (String instructionSet : InstructionSets.getAllDexCodeInstructionSets()) {
            if (!VMRuntime.isBootClassPathOnDisk(instructionSet)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        Context context = getContext();
        this.mNotifManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        CacheFileDeletedObserver cacheFileDeletedObserver = new CacheFileDeletedObserver();
        this.mCacheFileDeletedObserver = cacheFileDeletedObserver;
        cacheFileDeletedObserver.startWatching();
        PackageManager packageManager = context.getPackageManager();
        boolean isTv = packageManager.hasSystemFeature("android.software.leanback");
        Slog.d(TAG, "onStart, isTv =" + isTv);
        if (isTv) {
            this.mNotifManager.createNotificationChannel(new NotificationChannel(TV_NOTIFICATION_CHANNEL_ID, context.getString(R.string.crossSimFormat_spn_cross_sim_calling), 4));
        }
        publishBinderService(SERVICE, this.mRemoteService);
        publishLocalService(DeviceStorageMonitorInternal.class, this.mLocalService);
        this.mHandler.removeMessages(1);
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    class Shell extends ShellCommand {
        Shell() {
        }

        public int onCommand(String cmd) {
            return DeviceStorageMonitorService.this.onShellCommand(this, cmd);
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            DeviceStorageMonitorService.dumpHelp(pw);
        }
    }

    int parseOptions(Shell shell) {
        int opts = 0;
        while (true) {
            String opt = shell.getNextOption();
            if (opt != null) {
                if ("-f".equals(opt)) {
                    opts |= 1;
                }
            } else {
                return opts;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0041  */
    int onShellCommand(Shell shell, String cmd) {
        byte b;
        if (cmd == null) {
            return shell.handleDefaultCommands(cmd);
        }
        PrintWriter pw = shell.getOutPrintWriter();
        int iHashCode = cmd.hashCode();
        if (iHashCode != 108404047) {
            if (iHashCode != 1526871410) {
                if (iHashCode == 1692300408 && cmd.equals("force-not-low")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (cmd.equals("force-low")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (cmd.equals("reset")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            int opts = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            this.mForceLevel = 1;
            int seq = this.mSeq.incrementAndGet();
            if ((opts & 1) != 0) {
                this.mHandler.removeMessages(1);
                this.mHandler.obtainMessage(1).sendToTarget();
                pw.println(seq);
            }
        } else if (b == 1) {
            int opts2 = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            this.mForceLevel = 0;
            int seq2 = this.mSeq.incrementAndGet();
            if ((opts2 & 1) != 0) {
                this.mHandler.removeMessages(1);
                this.mHandler.obtainMessage(1).sendToTarget();
                pw.println(seq2);
            }
        } else if (b == 2) {
            int opts3 = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            this.mForceLevel = -1;
            int seq3 = this.mSeq.incrementAndGet();
            if ((opts3 & 1) != 0) {
                this.mHandler.removeMessages(1);
                this.mHandler.obtainMessage(1).sendToTarget();
                pw.println(seq3);
            }
        } else {
            return shell.handleDefaultCommands(cmd);
        }
        return 0;
    }

    static void dumpHelp(PrintWriter pw) {
        pw.println("Device storage monitor service (devicestoragemonitor) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  force-low [-f]");
        pw.println("    Force storage to be low, freezing storage state.");
        pw.println("    -f: force a storage change broadcast be sent, prints new sequence.");
        pw.println("  force-not-low [-f]");
        pw.println("    Force storage to not be low, freezing storage state.");
        pw.println("    -f: force a storage change broadcast be sent, prints new sequence.");
        pw.println("  reset [-f]");
        pw.println("    Unfreeze storage state, returning to current real values.");
        pw.println("    -f: force a storage change broadcast be sent, prints new sequence.");
    }

    void dumpImpl(FileDescriptor fd, PrintWriter _pw, String[] args) {
        IndentingPrintWriter pw = new IndentingPrintWriter(_pw, "  ");
        if (args == null || args.length == 0 || "-a".equals(args[0])) {
            StorageManager storage = (StorageManager) getContext().getSystemService(StorageManager.class);
            pw.println("Known volumes:");
            pw.increaseIndent();
            for (int i = 0; i < this.mStates.size(); i++) {
                UUID uuid = this.mStates.keyAt(i);
                State state = this.mStates.valueAt(i);
                if (StorageManager.UUID_DEFAULT.equals(uuid)) {
                    pw.println("Default:");
                } else {
                    pw.println(uuid + ":");
                }
                pw.increaseIndent();
                pw.printPair("level", State.levelToString(state.level));
                pw.printPair("lastUsableBytes", Long.valueOf(state.lastUsableBytes));
                pw.println();
                for (VolumeInfo vol : storage.getWritablePrivateVolumes()) {
                    File file = vol.getPath();
                    UUID innerUuid = StorageManager.convert(vol.getFsUuid());
                    if (Objects.equals(uuid, innerUuid)) {
                        pw.print("lowBytes=");
                        pw.print(storage.getStorageLowBytes(file));
                        pw.print(" fullBytes=");
                        pw.println(storage.getStorageFullBytes(file));
                        pw.print("path=");
                        pw.println(file);
                        break;
                    }
                }
                pw.decreaseIndent();
            }
            pw.decreaseIndent();
            pw.println();
            pw.printPair("mSeq", Integer.valueOf(this.mSeq.get()));
            pw.printPair("mForceState", State.levelToString(this.mForceLevel));
            pw.println();
            pw.println();
            return;
        }
        Shell shell = new Shell();
        shell.exec(this.mRemoteService, null, fd, null, args, null, new ResultReceiver(null));
    }

    private void updateNotifications(VolumeInfo vol, int oldLevel, int newLevel) {
        CharSequence details;
        Context context = getContext();
        UUID uuid = StorageManager.convert(vol.getFsUuid());
        if (!State.isEntering(1, oldLevel, newLevel)) {
            if (State.isLeaving(1, oldLevel, newLevel)) {
                Slog.i(TAG, "updateNotifications, Leaving LEVEL_LOW notification");
                this.mNotifManager.cancelAsUser(uuid.toString(), 23, UserHandle.ALL);
                FrameworkStatsLog.write(CecMessageType.ACTIVE_SOURCE, Objects.toString(vol.getDescription()), 1);
                return;
            }
            return;
        }
        Intent lowMemIntent = new Intent("android.os.storage.action.MANAGE_STORAGE");
        lowMemIntent.putExtra("android.os.storage.extra.UUID", uuid);
        lowMemIntent.addFlags(AudioFormat.EVRC);
        CharSequence title = context.getText(R.string.harmful_app_warning_open_anyway);
        boolean zEquals = StorageManager.UUID_DEFAULT.equals(uuid);
        int i = R.string.guest_name;
        if (zEquals) {
            if (!isBootImageOnDisk()) {
                i = R.string.hardware;
            }
            details = context.getText(i);
        } else {
            CharSequence details2 = context.getText(R.string.guest_name);
            details = details2;
        }
        CharSequence details3 = details;
        PendingIntent intent = PendingIntent.getActivityAsUser(context, 0, lowMemIntent, 67108864, null, UserHandle.CURRENT);
        Notification notification = new Notification.Builder(context, SystemNotificationChannels.ALERTS).setSmallIcon(R.drawable.pointer_wait_3).setTicker(title).setColor(context.getColor(R.color.system_notification_accent_color)).setContentTitle(title).setContentText(details3).setContentIntent(intent).setStyle(new Notification.BigTextStyle().bigText(details3)).setVisibility(1).setCategory("sys").extend(new Notification.TvExtender().setChannelId(TV_NOTIFICATION_CHANNEL_ID)).build();
        notification.flags |= 32;
        Slog.i(TAG, "updateNotifications, Entering LEVEL_LOW    notification =" + notification);
        this.mNotifManager.notifyAsUser(uuid.toString(), 23, notification, UserHandle.ALL);
        FrameworkStatsLog.write(CecMessageType.ACTIVE_SOURCE, Objects.toString(vol.getDescription()), 2);
    }

    private void updateBroadcasts(VolumeInfo vol, int oldLevel, int newLevel, int seq) {
        if (!Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, vol.getFsUuid())) {
            return;
        }
        Intent lowIntent = new Intent("android.intent.action.DEVICE_STORAGE_LOW").addFlags(85983232).putExtra(EXTRA_SEQUENCE, seq);
        Intent notLowIntent = new Intent("android.intent.action.DEVICE_STORAGE_OK").addFlags(85983232).putExtra(EXTRA_SEQUENCE, seq);
        if (!State.isEntering(1, oldLevel, newLevel)) {
            if (State.isLeaving(1, oldLevel, newLevel)) {
                Slog.i(TAG, "updateBroadcasts, Leaving    LEVEL_LOW ");
                getContext().removeStickyBroadcastAsUser(lowIntent, UserHandle.ALL);
                getContext().sendBroadcastAsUser(notLowIntent, UserHandle.ALL);
            }
        } else {
            Slog.i(TAG, "updateBroadcasts, Entering    LEVEL_LOW  lowIntent=" + lowIntent);
            getContext().sendStickyBroadcastAsUser(lowIntent, UserHandle.ALL);
        }
        Intent fullIntent = new Intent("android.intent.action.DEVICE_STORAGE_FULL").addFlags(67108864).putExtra(EXTRA_SEQUENCE, seq);
        Intent notFullIntent = new Intent("android.intent.action.DEVICE_STORAGE_NOT_FULL").addFlags(67108864).putExtra(EXTRA_SEQUENCE, seq);
        if (!State.isEntering(2, oldLevel, newLevel)) {
            if (State.isLeaving(2, oldLevel, newLevel)) {
                Slog.i(TAG, "updateBroadcasts, Leaving    LEVEL_FULL");
                getContext().removeStickyBroadcastAsUser(fullIntent, UserHandle.ALL);
                getContext().sendBroadcastAsUser(notFullIntent, UserHandle.ALL);
                return;
            }
            return;
        }
        Slog.i(TAG, "updateBroadcasts, Entering    LEVEL_FULL  fullIntent=" + fullIntent);
        getContext().sendStickyBroadcastAsUser(fullIntent, UserHandle.ALL);
    }

    private static class CacheFileDeletedObserver extends FileObserver {
        public CacheFileDeletedObserver() {
            super(Environment.getDownloadCacheDirectory().getAbsolutePath(), 512);
        }

        @Override // android.os.FileObserver
        public void onEvent(int event, String path) {
            EventLogTags.writeCacheFileDeleted(path);
        }
    }

    protected void setSystemProperty(String prop, int val) {
        try {
            SystemProperties.set(prop, String.valueOf(val));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected int getSystemProperty(String prop) {
        try {
            String retstr = SystemProperties.get(prop, "0");
            int retvalue = Integer.valueOf(retstr).intValue();
            return retvalue;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
