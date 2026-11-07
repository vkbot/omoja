package com.android.server.wm;

/* JADX INFO: loaded from: classes2.dex */
public interface ActivityMetricsLaunchObserverRegistry {
    void registerLaunchObserver(ActivityMetricsLaunchObserver activityMetricsLaunchObserver);

    void unregisterLaunchObserver(ActivityMetricsLaunchObserver activityMetricsLaunchObserver);
}
