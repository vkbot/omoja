package com.android.server.am;

import android.os.SystemClock;
import android.util.Slog;
import android.util.SparseLongArray;

/* JADX INFO: loaded from: classes.dex */
final class FgsWhileInUseTempAllowList {
    private static final int MAX_SIZE = 100;
    private final SparseLongArray mTempAllowListFgs = new SparseLongArray();
    private final Object mLock = new Object();

    FgsWhileInUseTempAllowList() {
    }

    void add(int uid, long durationMs) {
        synchronized (this.mLock) {
            try {
                if (durationMs <= 0) {
                    Slog.e("ActivityManager", "FgsWhileInUseTempAllowList bad duration:" + durationMs + " uid: " + uid);
                    return;
                }
                int size = this.mTempAllowListFgs.size();
                if (size > 100) {
                    Slog.w("ActivityManager", "FgsWhileInUseTempAllowList length:" + size + " exceeds 100");
                }
                long now = SystemClock.elapsedRealtime();
                for (int index = this.mTempAllowListFgs.size() - 1; index >= 0; index--) {
                    if (this.mTempAllowListFgs.valueAt(index) < now) {
                        this.mTempAllowListFgs.removeAt(index);
                    }
                }
                long existingExpirationTime = this.mTempAllowListFgs.get(uid, -1L);
                long expirationTime = now + durationMs;
                if (existingExpirationTime == -1 || existingExpirationTime < expirationTime) {
                    this.mTempAllowListFgs.put(uid, expirationTime);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean isAllowed(int uid) {
        synchronized (this.mLock) {
            int index = this.mTempAllowListFgs.indexOfKey(uid);
            if (index < 0) {
                return false;
            }
            if (this.mTempAllowListFgs.valueAt(index) < SystemClock.elapsedRealtime()) {
                this.mTempAllowListFgs.removeAt(index);
                return false;
            }
            return true;
        }
    }
}
