package com.android.server.am;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
final class PendingTempWhitelists {
    private final SparseArray<ActivityManagerService.PendingTempWhitelist> mPendingTempWhitelist = new SparseArray<>();
    private ActivityManagerService mService;

    PendingTempWhitelists(ActivityManagerService service) {
        this.mService = service;
    }

    void put(int uid, ActivityManagerService.PendingTempWhitelist value) {
        this.mPendingTempWhitelist.put(uid, value);
        this.mService.mAtmInternal.onUidAddedToPendingTempAllowlist(uid, value.tag);
    }

    void removeAt(int index) {
        int uid = this.mPendingTempWhitelist.keyAt(index);
        this.mPendingTempWhitelist.removeAt(index);
        this.mService.mAtmInternal.onUidRemovedFromPendingTempAllowlist(uid);
    }

    ActivityManagerService.PendingTempWhitelist get(int uid) {
        return this.mPendingTempWhitelist.get(uid);
    }

    int size() {
        return this.mPendingTempWhitelist.size();
    }

    ActivityManagerService.PendingTempWhitelist valueAt(int index) {
        return this.mPendingTempWhitelist.valueAt(index);
    }

    int indexOfKey(int key) {
        return this.mPendingTempWhitelist.indexOfKey(key);
    }
}
