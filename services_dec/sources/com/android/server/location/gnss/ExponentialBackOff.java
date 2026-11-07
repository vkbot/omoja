package com.android.server.location.gnss;

/* JADX INFO: loaded from: classes.dex */
class ExponentialBackOff {
    private static final int MULTIPLIER = 2;
    private long mCurrentIntervalMillis;
    private final long mInitIntervalMillis;
    private final long mMaxIntervalMillis;

    ExponentialBackOff(long initIntervalMillis, long maxIntervalMillis) {
        this.mInitIntervalMillis = initIntervalMillis;
        this.mMaxIntervalMillis = maxIntervalMillis;
        this.mCurrentIntervalMillis = initIntervalMillis / 2;
    }

    long nextBackoffMillis() {
        long j = this.mCurrentIntervalMillis;
        long j2 = this.mMaxIntervalMillis;
        if (j > j2) {
            return j2;
        }
        long j3 = j * 2;
        this.mCurrentIntervalMillis = j3;
        return j3;
    }

    void reset() {
        this.mCurrentIntervalMillis = this.mInitIntervalMillis / 2;
    }
}
