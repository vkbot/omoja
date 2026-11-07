package com.android.server.am;

import android.content.Context;
import android.os.SystemClock;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
final class PendingStartActivityUids {
    static final String TAG = "ActivityManager";
    private Context mContext;
    private final SparseArray<Pair<Integer, Long>> mPendingUids = new SparseArray<>();

    PendingStartActivityUids(Context context) {
        this.mContext = context;
    }

    synchronized void add(int uid, int pid) {
        if (this.mPendingUids.get(uid) == null) {
            this.mPendingUids.put(uid, new Pair<>(Integer.valueOf(pid), Long.valueOf(SystemClock.elapsedRealtime())));
        }
    }

    synchronized void delete(int uid) {
        Pair<Integer, Long> pendingPid = this.mPendingUids.get(uid);
        if (pendingPid != null) {
            long delay = SystemClock.elapsedRealtime() - ((Long) pendingPid.second).longValue();
            if (delay >= 1000) {
                Slog.i(TAG, "PendingStartActivityUids startActivity to updateOomAdj delay:" + delay + "ms, uid:" + uid);
            }
            this.mPendingUids.delete(uid);
        }
    }

    synchronized boolean isPendingTopPid(int uid, int pid) {
        Pair<Integer, Long> pendingPid = this.mPendingUids.get(uid);
        if (pendingPid == null) {
            return false;
        }
        return ((Integer) pendingPid.first).intValue() == pid;
    }

    synchronized boolean isPendingTopUid(int uid) {
        return this.mPendingUids.get(uid) != null;
    }
}
