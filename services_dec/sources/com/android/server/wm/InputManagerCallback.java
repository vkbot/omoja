package com.android.server.wm;

import android.app.ActivityManagerInternal;
import android.os.Build;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.IWindow;
import android.view.InputApplicationHandle;
import android.view.KeyEvent;
import com.android.server.am.ActivityManagerService;
import com.android.server.input.InputManagerService;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class InputManagerCallback implements InputManagerService.WindowManagerCallbacks {
    private static final long PRE_DUMP_MIN_INTERVAL_MS = TimeUnit.SECONDS.toMillis(20);
    private static final long PRE_DUMP_MONITOR_TIMEOUT_MS = TimeUnit.SECONDS.toMillis(1);
    private static final String TAG = "WindowManager";
    private boolean mFocusedWindowHasCapture;
    private boolean mInputDevicesReady;
    private boolean mInputDispatchEnabled;
    private boolean mInputDispatchFrozen;
    private volatile long mLastPreDumpTimeMs;
    private final WindowManagerService mService;
    private final Object mInputDevicesReadyMonitor = new Object();
    private String mInputFreezeReason = null;
    private AtomicReference<IWindow> mFocusedWindow = new AtomicReference<>();

    public InputManagerCallback(WindowManagerService service) {
        this.mService = service;
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public void notifyInputChannelBroken(IBinder token) {
        if (token == null) {
            return;
        }
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                WindowState windowState = this.mService.mInputToWindowMap.get(token);
                if (windowState != null) {
                    Slog.i(TAG, "WINDOW DIED " + windowState);
                    windowState.removeIfPossible();
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r18v0, types: [com.android.server.wm.InputManagerCallback$1] */
    private void preDumpIfLockTooSlow() {
        int[] pids;
        if (!Build.IS_DEBUGGABLE) {
            return;
        }
        final long now = SystemClock.uptimeMillis();
        if (this.mLastPreDumpTimeMs > 0 && now - this.mLastPreDumpTimeMs < PRE_DUMP_MIN_INTERVAL_MS) {
            return;
        }
        final boolean[] shouldDumpSf = {true};
        ArrayMap<String, Runnable> monitors = new ArrayMap<>(2);
        final WindowManagerService windowManagerService = this.mService;
        Objects.requireNonNull(windowManagerService);
        Runnable runnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$TDUtW_T9flkdwvGQ9AliNjGyzdY
            @Override // java.lang.Runnable
            public final void run() {
                windowManagerService.monitor();
            }
        };
        String str = TAG;
        monitors.put(TAG, runnable);
        final ActivityManagerInternal activityManagerInternal = this.mService.mAmInternal;
        Objects.requireNonNull(activityManagerInternal);
        monitors.put("ActivityManager", new Runnable() { // from class: com.android.server.wm.-$$Lambda$Pl4__K9hqf4p4lme99AnaMrbXe0
            @Override // java.lang.Runnable
            public final void run() {
                activityManagerInternal.monitor();
            }
        });
        CountDownLatch latch = new CountDownLatch(monitors.size());
        int i = 0;
        while (i < monitors.size()) {
            final String name = monitors.keyAt(i);
            final Runnable monitor = monitors.valueAt(i);
            final CountDownLatch countDownLatch = latch;
            new Thread() { // from class: com.android.server.wm.InputManagerCallback.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    monitor.run();
                    countDownLatch.countDown();
                    long elapsed = SystemClock.uptimeMillis() - now;
                    if (elapsed > InputManagerCallback.PRE_DUMP_MONITOR_TIMEOUT_MS) {
                        Slog.i(InputManagerCallback.TAG, "Pre-dump acquired " + name + " in " + elapsed + "ms");
                        return;
                    }
                    if (InputManagerCallback.TAG.equals(name)) {
                        shouldDumpSf[0] = false;
                    }
                }
            }.start();
            i++;
            str = str;
            latch = latch;
        }
        String str2 = str;
        try {
            if (latch.await(PRE_DUMP_MONITOR_TIMEOUT_MS, TimeUnit.MILLISECONDS)) {
                return;
            }
        } catch (InterruptedException e) {
        }
        this.mLastPreDumpTimeMs = now;
        Slog.i(str2, "Pre-dump for unresponsive");
        ArrayList<Integer> firstPids = new ArrayList<>(1);
        firstPids.add(Integer.valueOf(ActivityManagerService.MY_PID));
        ArrayList<Integer> nativePids = null;
        if (shouldDumpSf[0]) {
            pids = Process.getPidsForCommands(new String[]{"/system/bin/surfaceflinger"});
        } else {
            pids = null;
        }
        if (pids != null) {
            nativePids = new ArrayList<>(1);
            for (int pid : pids) {
                nativePids.add(Integer.valueOf(pid));
            }
        }
        File tracesFile = ActivityManagerService.dumpStackTraces(firstPids, null, null, nativePids, null);
        if (tracesFile != null) {
            tracesFile.renameTo(new File(tracesFile.getParent(), tracesFile.getName() + "_pre"));
        }
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public long notifyANR(InputApplicationHandle inputApplicationHandle, IBinder token, String reason) {
        long startTime = SystemClock.uptimeMillis();
        try {
            return notifyANRInner(inputApplicationHandle, token, reason);
        } finally {
            Slog.d(TAG, "notifyANR took " + (SystemClock.uptimeMillis() - startTime) + "ms");
        }
    }

    private long notifyANRInner(InputApplicationHandle inputApplicationHandle, IBinder token, String reason) {
        EmbeddedWindowController.EmbeddedWindow embeddedWindow;
        ActivityRecord activity = null;
        WindowState windowState = null;
        boolean aboveSystem = false;
        int windowPid = -1;
        preDumpIfLockTooSlow();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (token != null && (windowState = this.mService.mInputToWindowMap.get(token)) != null) {
                    activity = windowState.mActivityRecord;
                    windowPid = windowState.mSession.mPid;
                    aboveSystem = isWindowAboveSystem(windowState);
                }
                if (token != null && windowState == null && (embeddedWindow = this.mService.mEmbeddedWindowController.get(token)) != null) {
                    windowPid = embeddedWindow.mOwnerPid;
                    WindowState hostWindowState = embeddedWindow.mHostWindowState;
                    if (hostWindowState == null) {
                        aboveSystem = true;
                    } else {
                        aboveSystem = isWindowAboveSystem(hostWindowState);
                    }
                }
                if (activity == null && inputApplicationHandle != null) {
                    activity = ActivityRecord.forTokenLocked(inputApplicationHandle.token);
                }
                if (windowState != null) {
                    Slog.i(TAG, "Input event dispatching timed out sending to " + ((Object) windowState.mAttrs.getTitle()) + ".  Reason: " + reason);
                } else if (activity != null) {
                    Slog.i(TAG, "Input event dispatching timed out sending to application " + activity.stringName + ".  Reason: " + reason);
                } else {
                    Slog.i(TAG, "Input event dispatching timed out .  Reason: " + reason);
                }
                this.mService.saveANRStateLocked(activity, windowState, reason);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        this.mService.mAtmInternal.saveANRState(reason);
        if (activity != null && activity.appToken != null) {
            boolean abort = activity.keyDispatchingTimedOut(reason, windowPid);
            if (!abort) {
                return activity.mInputDispatchingTimeoutNanos;
            }
        } else if (windowState != null || windowPid != -1) {
            long timeout = this.mService.mAmInternal.inputDispatchingTimedOut(windowPid, aboveSystem, reason);
            if (timeout >= 0) {
                return 1000000 * timeout;
            }
        }
        return 0L;
    }

    private boolean isWindowAboveSystem(WindowState windowState) {
        int systemAlertLayer = this.mService.mPolicy.getWindowLayerFromTypeLw(2038, windowState.mOwnerCanAddInternalSystemWindow);
        return windowState.mBaseLayer > systemAlertLayer;
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public void notifyConfigurationChanged() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mService.getDefaultDisplayContentLocked().sendNewConfiguration();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        synchronized (this.mInputDevicesReadyMonitor) {
            if (!this.mInputDevicesReady) {
                this.mInputDevicesReady = true;
                this.mInputDevicesReadyMonitor.notifyAll();
            }
        }
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public void notifyLidSwitchChanged(long whenNanos, boolean lidOpen) {
        this.mService.mPolicy.notifyLidSwitchChanged(whenNanos, lidOpen);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public void notifyCameraLensCoverSwitchChanged(long whenNanos, boolean lensCovered) {
        this.mService.mPolicy.notifyCameraLensCoverSwitchChanged(whenNanos, lensCovered);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public int interceptKeyBeforeQueueing(KeyEvent event, int policyFlags) {
        return this.mService.mPolicy.interceptKeyBeforeQueueing(event, policyFlags);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public int interceptMotionBeforeQueueingNonInteractive(int displayId, long whenNanos, int policyFlags) {
        return this.mService.mPolicy.interceptMotionBeforeQueueingNonInteractive(displayId, whenNanos, policyFlags);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public long interceptKeyBeforeDispatching(IBinder focusedToken, KeyEvent event, int policyFlags) {
        return this.mService.mPolicy.interceptKeyBeforeDispatching(focusedToken, event, policyFlags);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public KeyEvent dispatchUnhandledKey(IBinder focusedToken, KeyEvent event, int policyFlags) {
        return this.mService.mPolicy.dispatchUnhandledKey(focusedToken, event, policyFlags);
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public int getPointerLayer() {
        return (this.mService.mPolicy.getWindowLayerFromTypeLw(2018) * 10000) + 1000;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public int getPointerDisplayId() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (!this.mService.mForceDesktopModeOnExternalDisplays) {
                    return 0;
                }
                int firstExternalDisplayId = 0;
                for (int i = this.mService.mRoot.mChildren.size() - 1; i >= 0; i--) {
                    DisplayContent displayContent = (DisplayContent) this.mService.mRoot.mChildren.get(i);
                    if (displayContent.getWindowingMode() == 5) {
                        return displayContent.getDisplayId();
                    }
                    if (firstExternalDisplayId == 0 && displayContent.getDisplayId() != 0) {
                        firstExternalDisplayId = displayContent.getDisplayId();
                    }
                }
                return firstExternalDisplayId;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public void onPointerDownOutsideFocus(IBinder touchedToken) {
        this.mService.mH.obtainMessage(62, touchedToken).sendToTarget();
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public boolean notifyFocusChanged(IBinder oldToken, IBinder newToken) {
        WindowState win;
        boolean requestRefreshConfiguration = false;
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                win = this.mService.mInputToWindowMap.get(newToken);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        IWindow newFocusedWindow = win != null ? win.mClient : null;
        IWindow focusedWindow = this.mFocusedWindow.get();
        if (focusedWindow != null) {
            if (newFocusedWindow != null && newFocusedWindow.asBinder() == focusedWindow.asBinder()) {
                Slog.w(TAG, "notifyFocusChanged called with unchanged mFocusedWindow=" + focusedWindow);
                return false;
            }
            requestRefreshConfiguration = dispatchPointerCaptureChanged(focusedWindow, false);
        }
        this.mFocusedWindow.set(newFocusedWindow);
        return requestRefreshConfiguration;
    }

    @Override // com.android.server.input.InputManagerService.WindowManagerCallbacks
    public boolean requestPointerCapture(IBinder windowToken, boolean enabled) {
        IWindow focusedWindow = this.mFocusedWindow.get();
        if (focusedWindow == null || focusedWindow.asBinder() != windowToken) {
            Slog.e(TAG, "requestPointerCapture called for a window that has no focus: " + windowToken);
            return false;
        }
        if (this.mFocusedWindowHasCapture == enabled) {
            StringBuilder sb = new StringBuilder();
            sb.append("requestPointerCapture: already ");
            sb.append(enabled ? "enabled" : "disabled");
            Slog.i(TAG, sb.toString());
            return false;
        }
        return dispatchPointerCaptureChanged(focusedWindow, enabled);
    }

    private boolean dispatchPointerCaptureChanged(IWindow focusedWindow, boolean enabled) {
        if (this.mFocusedWindowHasCapture != enabled) {
            this.mFocusedWindowHasCapture = enabled;
            try {
                focusedWindow.dispatchPointerCaptureChanged(enabled);
                return true;
            } catch (RemoteException e) {
                return true;
            }
        }
        return false;
    }

    public boolean waitForInputDevicesReady(long timeoutMillis) {
        boolean z;
        synchronized (this.mInputDevicesReadyMonitor) {
            if (!this.mInputDevicesReady) {
                try {
                    this.mInputDevicesReadyMonitor.wait(timeoutMillis);
                } catch (InterruptedException e) {
                }
            }
            z = this.mInputDevicesReady;
        }
        return z;
    }

    public void freezeInputDispatchingLw() {
        if (!this.mInputDispatchFrozen) {
            this.mInputDispatchFrozen = true;
            updateInputDispatchModeLw();
        }
    }

    public void thawInputDispatchingLw() {
        if (this.mInputDispatchFrozen) {
            this.mInputDispatchFrozen = false;
            this.mInputFreezeReason = null;
            updateInputDispatchModeLw();
        }
    }

    public void setEventDispatchingLw(boolean enabled) {
        if (this.mInputDispatchEnabled != enabled) {
            this.mInputDispatchEnabled = enabled;
            updateInputDispatchModeLw();
        }
    }

    private void updateInputDispatchModeLw() {
        this.mService.mInputManager.setInputDispatchMode(this.mInputDispatchEnabled, this.mInputDispatchFrozen);
    }

    void dump(PrintWriter pw, String prefix) {
        if (this.mInputFreezeReason != null) {
            pw.println(prefix + "mInputFreezeReason=" + this.mInputFreezeReason);
        }
    }
}
