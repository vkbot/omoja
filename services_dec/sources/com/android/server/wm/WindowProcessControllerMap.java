package com.android.server.wm;

import android.util.ArraySet;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class WindowProcessControllerMap {
    private final SparseArray<WindowProcessController> mPidMap = new SparseArray<>();
    private final Map<Integer, ArraySet<WindowProcessController>> mUidMap = new HashMap();

    WindowProcessControllerMap() {
    }

    WindowProcessController getProcess(int pid) {
        return this.mPidMap.get(pid);
    }

    ArraySet<WindowProcessController> getProcesses(int uid) {
        return this.mUidMap.get(Integer.valueOf(uid));
    }

    SparseArray<WindowProcessController> getPidMap() {
        return this.mPidMap;
    }

    void put(int pid, WindowProcessController proc) {
        WindowProcessController prevProc = this.mPidMap.get(pid);
        if (prevProc != null) {
            removeProcessFromUidMap(prevProc);
        }
        this.mPidMap.put(pid, proc);
        int uid = proc.mUid;
        ArraySet<WindowProcessController> procSet = this.mUidMap.getOrDefault(Integer.valueOf(uid), new ArraySet<>());
        procSet.add(proc);
        this.mUidMap.put(Integer.valueOf(uid), procSet);
    }

    void remove(int pid) {
        WindowProcessController proc = this.mPidMap.get(pid);
        if (proc != null) {
            this.mPidMap.remove(pid);
            removeProcessFromUidMap(proc);
        }
    }

    private void removeProcessFromUidMap(WindowProcessController proc) {
        if (proc == null) {
            return;
        }
        int uid = proc.mUid;
        ArraySet<WindowProcessController> procSet = this.mUidMap.get(Integer.valueOf(uid));
        if (procSet != null) {
            procSet.remove(proc);
            if (procSet.isEmpty()) {
                this.mUidMap.remove(Integer.valueOf(uid));
            }
        }
    }
}
