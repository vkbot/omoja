package com.android.server.location;

import android.location.Geofence;
import android.location.LocationRequest;
import android.util.Log;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.job.controllers.JobStatus;
import com.android.server.usage.AppStandbyController;
import java.time.Instant;

/* JADX INFO: loaded from: classes.dex */
public class LocationUsageLogger {
    private static final int API_USAGE_LOG_HOURLY_CAP = 60;
    private static final int ONE_HOUR_IN_MILLIS = 3600000;
    private static final int ONE_MINUTE_IN_MILLIS = 60000;
    private static final int ONE_SEC_IN_MILLIS = 1000;
    private long mLastApiUsageLogHour = 0;
    private int mApiUsageLogHourlyCount = 0;

    public void logLocationApiUsage(int usageType, int apiInUse, String packageName, LocationRequest locationRequest, boolean hasListener, boolean hasIntent, Geofence geofence, int activityImportance) {
        int iBucketizeProvider;
        int quality;
        int iBucketizeInterval;
        int iBucketizeDistance;
        int iBucketizeExpireIn;
        int iBucketizeRadius;
        try {
            if (hitApiUsageLogCap()) {
                return;
            }
            boolean isLocationRequestNull = locationRequest == null;
            boolean isGeofenceNull = geofence == null;
            if (isLocationRequestNull) {
                iBucketizeProvider = 0;
            } else {
                iBucketizeProvider = bucketizeProvider(locationRequest.getProvider());
            }
            if (isLocationRequestNull) {
                quality = 0;
            } else {
                quality = locationRequest.getQuality();
            }
            if (isLocationRequestNull) {
                iBucketizeInterval = 0;
            } else {
                iBucketizeInterval = bucketizeInterval(locationRequest.getInterval());
            }
            if (isLocationRequestNull) {
                iBucketizeDistance = 0;
            } else {
                iBucketizeDistance = bucketizeDistance(locationRequest.getSmallestDisplacement());
            }
            long numUpdates = isLocationRequestNull ? 0L : locationRequest.getNumUpdates();
            if (isLocationRequestNull || usageType == 1) {
                iBucketizeExpireIn = 0;
            } else {
                iBucketizeExpireIn = bucketizeExpireIn(locationRequest.getExpireIn());
            }
            int callbackType = getCallbackType(apiInUse, hasListener, hasIntent);
            if (isGeofenceNull) {
                iBucketizeRadius = 0;
            } else {
                iBucketizeRadius = bucketizeRadius(geofence.getRadius());
            }
            FrameworkStatsLog.write(210, usageType, apiInUse, packageName, iBucketizeProvider, quality, iBucketizeInterval, iBucketizeDistance, numUpdates, iBucketizeExpireIn, callbackType, iBucketizeRadius, categorizeActivityImportance(activityImportance));
        } catch (Exception e) {
            Log.w(LocationManagerService.TAG, "Failed to log API usage to statsd.", e);
        }
    }

    public void logLocationApiUsage(int usageType, int apiInUse, String providerName) {
        try {
            if (hitApiUsageLogCap()) {
                return;
            }
            try {
                FrameworkStatsLog.write(210, usageType, apiInUse, (String) null, bucketizeProvider(providerName), 0, 0, 0, 0L, 0, getCallbackType(apiInUse, true, true), 0, 0);
                return;
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Log.w(LocationManagerService.TAG, "Failed to log API usage to statsd.", e);
    }

    private static int bucketizeProvider(String provider) {
        if ("network".equals(provider)) {
            return 1;
        }
        if ("gps".equals(provider)) {
            return 2;
        }
        if ("passive".equals(provider)) {
            return 3;
        }
        if ("fused".equals(provider)) {
            return 4;
        }
        return 0;
    }

    private static int bucketizeInterval(long interval) {
        if (interval < 1000) {
            return 1;
        }
        if (interval < 5000) {
            return 2;
        }
        if (interval < 60000) {
            return 3;
        }
        if (interval < 600000) {
            return 4;
        }
        if (interval < AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT) {
            return 5;
        }
        return 6;
    }

    private static int bucketizeDistance(float smallestDisplacement) {
        if (smallestDisplacement <= 0.0f) {
            return 1;
        }
        if (smallestDisplacement > 0.0f && smallestDisplacement <= 100.0f) {
            return 2;
        }
        return 3;
    }

    private static int bucketizeRadius(float radius) {
        if (radius < 0.0f) {
            return 7;
        }
        if (radius < 100.0f) {
            return 1;
        }
        if (radius < 200.0f) {
            return 2;
        }
        if (radius < 300.0f) {
            return 3;
        }
        if (radius < 1000.0f) {
            return 4;
        }
        if (radius < 10000.0f) {
            return 5;
        }
        return 6;
    }

    private static int bucketizeExpireIn(long expireIn) {
        if (expireIn == JobStatus.NO_LATEST_RUNTIME) {
            return 6;
        }
        if (expireIn < 20000) {
            return 1;
        }
        if (expireIn < 60000) {
            return 2;
        }
        if (expireIn < 600000) {
            return 3;
        }
        if (expireIn < AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT) {
            return 4;
        }
        return 5;
    }

    private static int categorizeActivityImportance(int importance) {
        if (importance == 100) {
            return 1;
        }
        if (importance == 125) {
            return 2;
        }
        return 3;
    }

    private static int getCallbackType(int apiType, boolean hasListener, boolean hasIntent) {
        if (apiType == 5) {
            return 1;
        }
        if (hasIntent) {
            return 3;
        }
        if (hasListener) {
            return 2;
        }
        return 0;
    }

    private synchronized boolean hitApiUsageLogCap() {
        long currentHour = Instant.now().toEpochMilli() / AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT;
        if (currentHour > this.mLastApiUsageLogHour) {
            this.mLastApiUsageLogHour = currentHour;
            this.mApiUsageLogHourlyCount = 0;
            return false;
        }
        int iMin = Math.min(this.mApiUsageLogHourlyCount + 1, 60);
        this.mApiUsageLogHourlyCount = iMin;
        return iMin >= 60;
    }
}
