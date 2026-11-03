package com.mega.chery.utils;

import android.os.SystemClock;
import com.mega.nexus.os.MegaSystemProperties;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class QuickClickChecker {
    private final long mInterval;

    public QuickClickChecker() {
        this(500L);
    }

    public QuickClickChecker(long j) {
        this.mInterval = j;
    }

    public boolean allow() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - getLastClickTime() < this.mInterval) {
            return false;
        }
        setLastClickTime(jElapsedRealtime);
        return true;
    }

    public boolean reject() {
        return !allow();
    }

    private long getLastClickTime() {
        return MegaSystemProperties.getLong("debug.quickclick.check", 0L);
    }

    private void setLastClickTime(long j) {
        try {
            MegaSystemProperties.set("debug.quickclick.check", String.valueOf(j));
        } catch (RuntimeException unused) {
            MLog.e("set property error: debug.quickclick.check");
        }
    }
}
