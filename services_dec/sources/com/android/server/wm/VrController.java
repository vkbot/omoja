package com.android.server.wm;

import android.os.Process;
import android.service.vr.IPersistentVrStateCallbacks;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.util.proto.ProtoUtils;
import com.android.server.LocalServices;
import com.android.server.am.ActivityManagerService;
import com.android.server.vr.VrManagerInternal;

/* JADX INFO: loaded from: classes2.dex */
final class VrController {
    private static final int FLAG_NON_VR_MODE = 0;
    private static final int FLAG_PERSISTENT_VR_MODE = 2;
    private static final int FLAG_VR_MODE = 1;
    private static int[] ORIG_ENUMS = {0, 1, 2};
    private static int[] PROTO_ENUMS = {0, 1, 2};
    private static final String TAG = "VrController";
    private final Object mGlobalAmLock;
    private int mVrState = 0;
    private int mVrRenderThreadTid = 0;
    private final IPersistentVrStateCallbacks mPersistentVrModeListener = new IPersistentVrStateCallbacks.Stub() { // from class: com.android.server.wm.VrController.1
        public void onPersistentVrStateChanged(boolean enabled) {
            synchronized (VrController.this.mGlobalAmLock) {
                try {
                    if (enabled) {
                        VrController.this.setVrRenderThreadLocked(0, 3, true);
                        VrController.access$276(VrController.this, 2);
                    } else {
                        VrController.this.setPersistentVrRenderThreadLocked(0, true);
                        VrController.access$272(VrController.this, -3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    static /* synthetic */ int access$272(VrController x0, int x1) {
        int i = x0.mVrState & x1;
        x0.mVrState = i;
        return i;
    }

    static /* synthetic */ int access$276(VrController x0, int x1) {
        int i = x0.mVrState | x1;
        x0.mVrState = i;
        return i;
    }

    public VrController(Object globalAmLock) {
        this.mGlobalAmLock = globalAmLock;
    }

    public void onSystemReady() {
        VrManagerInternal vrManagerInternal = (VrManagerInternal) LocalServices.getService(VrManagerInternal.class);
        if (vrManagerInternal != null) {
            vrManagerInternal.addPersistentVrModeStateListener(this.mPersistentVrModeListener);
        }
    }

    public void onTopProcChangedLocked(WindowProcessController proc) {
        int curSchedGroup = proc.getCurrentSchedulingGroup();
        if (curSchedGroup == 3) {
            setVrRenderThreadLocked(proc.mVrThreadTid, curSchedGroup, true);
        } else if (proc.mVrThreadTid == this.mVrRenderThreadTid) {
            clearVrRenderThreadLocked(true);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0044 */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0045, code lost:
    
        r1 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onVrModeChanged(com.android.server.wm.ActivityRecord r12) throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.Class<com.android.server.vr.VrManagerInternal> r0 = com.android.server.vr.VrManagerInternal.class
            java.lang.Object r0 = com.android.server.LocalServices.getService(r0)
            com.android.server.vr.VrManagerInternal r0 = (com.android.server.vr.VrManagerInternal) r0
            r1 = 0
            if (r0 != 0) goto Lc
            return r1
        Lc:
            r2 = -1
            r5 = 0
            java.lang.Object r7 = r11.mGlobalAmLock
            monitor-enter(r7)
            android.content.ComponentName r3 = r12.requestedVrComponent     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L16
            r1 = 1
        L16:
            r8 = r1
            android.content.ComponentName r3 = r12.requestedVrComponent     // Catch: java.lang.Throwable -> L44
            int r4 = r12.mUserId     // Catch: java.lang.Throwable -> L44
            android.content.pm.ActivityInfo r1 = r12.info     // Catch: java.lang.Throwable -> L44
            android.content.ComponentName r6 = r1.getComponentName()     // Catch: java.lang.Throwable -> L44
            com.android.server.wm.WindowProcessController r1 = r12.app     // Catch: java.lang.Throwable -> L44
            boolean r1 = r11.changeVrModeLocked(r8, r1)     // Catch: java.lang.Throwable -> L44
            r9 = r1
            com.android.server.wm.WindowProcessController r1 = r12.app     // Catch: java.lang.Throwable -> L41
            if (r1 == 0) goto L34
            com.android.server.wm.WindowProcessController r1 = r12.app     // Catch: java.lang.Throwable -> L41
            int r1 = r1.getPid()     // Catch: java.lang.Throwable -> L41
            r10 = r1
            goto L35
        L34:
            r10 = r2
        L35:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L3d
            r1 = r0
            r2 = r8
            r5 = r10
            r1.setVrMode(r2, r3, r4, r5, r6)
            return r9
        L3d:
            r1 = move-exception
            r5 = r9
            r2 = r10
            goto L45
        L41:
            r1 = move-exception
            r5 = r9
            goto L45
        L44:
            r1 = move-exception
        L45:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L44
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.VrController.onVrModeChanged(com.android.server.wm.ActivityRecord):boolean");
    }

    public void setVrThreadLocked(int tid, int pid, WindowProcessController proc) {
        if (hasPersistentVrFlagSet()) {
            Slog.w(TAG, "VR thread cannot be set in persistent VR mode!");
            return;
        }
        if (proc == null) {
            Slog.w(TAG, "Persistent VR thread not set, calling process doesn't exist!");
            return;
        }
        if (tid != 0) {
            enforceThreadInProcess(tid, pid);
        }
        if (!inVrMode()) {
            Slog.w(TAG, "VR thread cannot be set when not in VR mode!");
        } else {
            setVrRenderThreadLocked(tid, proc.getCurrentSchedulingGroup(), false);
        }
        proc.mVrThreadTid = tid > 0 ? tid : 0;
    }

    public void setPersistentVrThreadLocked(int tid, int pid, WindowProcessController proc) {
        if (!hasPersistentVrFlagSet()) {
            Slog.w(TAG, "Persistent VR thread may only be set in persistent VR mode!");
        } else {
            if (proc == null) {
                Slog.w(TAG, "Persistent VR thread not set, calling process doesn't exist!");
                return;
            }
            if (tid != 0) {
                enforceThreadInProcess(tid, pid);
            }
            setPersistentVrRenderThreadLocked(tid, false);
        }
    }

    public boolean shouldDisableNonVrUiLocked() {
        return this.mVrState != 0;
    }

    private boolean changeVrModeLocked(boolean vrMode, WindowProcessController proc) {
        int oldVrState = this.mVrState;
        if (vrMode) {
            this.mVrState |= 1;
        } else {
            this.mVrState &= -2;
        }
        boolean changed = oldVrState != this.mVrState;
        if (changed) {
            if (proc != null) {
                if (proc.mVrThreadTid > 0) {
                    setVrRenderThreadLocked(proc.mVrThreadTid, proc.getCurrentSchedulingGroup(), false);
                }
            } else {
                clearVrRenderThreadLocked(false);
            }
        }
        return changed;
    }

    private int updateVrRenderThreadLocked(int newTid, boolean suppressLogs) {
        int i = this.mVrRenderThreadTid;
        if (i == newTid) {
            return i;
        }
        if (i > 0) {
            ActivityManagerService.scheduleAsRegularPriority(i, suppressLogs);
            this.mVrRenderThreadTid = 0;
        }
        if (newTid > 0) {
            this.mVrRenderThreadTid = newTid;
            ActivityManagerService.scheduleAsFifoPriority(newTid, suppressLogs);
        }
        return this.mVrRenderThreadTid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setPersistentVrRenderThreadLocked(int newTid, boolean suppressLogs) {
        if (!hasPersistentVrFlagSet()) {
            if (!suppressLogs) {
                Slog.w(TAG, "Failed to set persistent VR thread, system not in persistent VR mode.");
            }
            return this.mVrRenderThreadTid;
        }
        return updateVrRenderThreadLocked(newTid, suppressLogs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setVrRenderThreadLocked(int newTid, int schedGroup, boolean suppressLogs) {
        boolean inVr = inVrMode();
        boolean inPersistentVr = hasPersistentVrFlagSet();
        if (!inVr || inPersistentVr || schedGroup != 3) {
            if (!suppressLogs) {
                String reason = "caller is not the current top application.";
                if (!inVr) {
                    reason = "system not in VR mode.";
                } else if (inPersistentVr) {
                    reason = "system in persistent VR mode.";
                }
                Slog.w(TAG, "Failed to set VR thread, " + reason);
            }
            return this.mVrRenderThreadTid;
        }
        return updateVrRenderThreadLocked(newTid, suppressLogs);
    }

    private void clearVrRenderThreadLocked(boolean suppressLogs) {
        updateVrRenderThreadLocked(0, suppressLogs);
    }

    private void enforceThreadInProcess(int tid, int pid) {
        if (!Process.isThreadInProcess(pid, tid)) {
            throw new IllegalArgumentException("VR thread does not belong to process");
        }
    }

    private boolean inVrMode() {
        return (this.mVrState & 1) != 0;
    }

    private boolean hasPersistentVrFlagSet() {
        return (this.mVrState & 2) != 0;
    }

    public String toString() {
        return String.format("[VrState=0x%x,VrRenderThreadTid=%d]", Integer.valueOf(this.mVrState), Integer.valueOf(this.mVrRenderThreadTid));
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        ProtoUtils.writeBitWiseFlagsToProtoEnum(proto, 2259152797697L, this.mVrState, ORIG_ENUMS, PROTO_ENUMS);
        proto.write(1120986464258L, this.mVrRenderThreadTid);
        proto.end(token);
    }
}
