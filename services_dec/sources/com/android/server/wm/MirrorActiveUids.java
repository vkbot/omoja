package com.android.server.wm;

import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes2.dex */
class MirrorActiveUids {
    private SparseIntArray mUidStates = new SparseIntArray();

    MirrorActiveUids() {
    }

    synchronized void onUidActive(int uid, int procState) {
        this.mUidStates.put(uid, procState);
    }

    synchronized void onUidInactive(int uid) {
        this.mUidStates.delete(uid);
    }

    synchronized void onActiveUidsCleared() {
        this.mUidStates.clear();
    }

    synchronized void onUidProcStateChanged(int uid, int procState) {
        int index = this.mUidStates.indexOfKey(uid);
        if (index >= 0) {
            this.mUidStates.setValueAt(index, procState);
        }
    }

    synchronized int getUidState(int uid) {
        return this.mUidStates.get(uid, 20);
    }
}
