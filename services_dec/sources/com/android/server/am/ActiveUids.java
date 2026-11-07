package com.android.server.am;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
final class ActiveUids {
    private final SparseArray<UidRecord> mActiveUids = new SparseArray<>();
    private boolean mPostChangesToAtm;
    private ActivityManagerService mService;

    ActiveUids(ActivityManagerService service, boolean postChangesToAtm) {
        this.mService = service;
        this.mPostChangesToAtm = postChangesToAtm;
    }

    void put(int uid, UidRecord value) {
        this.mActiveUids.put(uid, value);
        if (this.mPostChangesToAtm) {
            this.mService.mAtmInternal.onUidActive(uid, value.getCurProcState());
        }
    }

    void remove(int uid) {
        this.mActiveUids.remove(uid);
        if (this.mPostChangesToAtm) {
            this.mService.mAtmInternal.onUidInactive(uid);
        }
    }

    void clear() {
        this.mActiveUids.clear();
        if (this.mPostChangesToAtm) {
            this.mService.mAtmInternal.onActiveUidsCleared();
        }
    }

    UidRecord get(int uid) {
        return this.mActiveUids.get(uid);
    }

    int size() {
        return this.mActiveUids.size();
    }

    UidRecord valueAt(int index) {
        return this.mActiveUids.valueAt(index);
    }

    int keyAt(int index) {
        return this.mActiveUids.keyAt(index);
    }

    int indexOfKey(int uid) {
        return this.mActiveUids.indexOfKey(uid);
    }
}
