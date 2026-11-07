package com.android.server.rollback;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.VersionedPackage;
import android.content.rollback.PackageRollbackInfo;
import android.content.rollback.RollbackInfo;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.util.FrameworkStatsLog;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class WatchdogRollbackLogger {
    private static final String LOGGING_PARENT_KEY = "android.content.pm.LOGGING_PARENT";
    private static final String TAG = "WatchdogRollbackLogger";

    private WatchdogRollbackLogger() {
    }

    private static String getLoggingParentName(Context context, String packageName) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo ai = packageManager.getPackageInfo(packageName, 1073741952).applicationInfo;
            if (ai.metaData == null) {
                return null;
            }
            return ai.metaData.getString(LOGGING_PARENT_KEY);
        } catch (Exception e) {
            Slog.w(TAG, "Unable to discover logging parent package: " + packageName, e);
            return null;
        }
    }

    static VersionedPackage getLogPackage(Context context, VersionedPackage failingPackage) {
        String logPackageName = getLoggingParentName(context, failingPackage.getPackageName());
        if (logPackageName == null) {
            return null;
        }
        try {
            VersionedPackage loggingParent = new VersionedPackage(logPackageName, context.getPackageManager().getPackageInfo(logPackageName, 0).getLongVersionCode());
            return loggingParent;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    private static Set<VersionedPackage> getLogPackages(Context context, List<String> failedPackageNames) {
        Set<VersionedPackage> parentPackages = new ArraySet<>();
        for (String failedPackageName : failedPackageNames) {
            parentPackages.add(getLogPackage(context, new VersionedPackage(failedPackageName, 0)));
        }
        return parentPackages;
    }

    static void logRollbackStatusOnBoot(Context context, int rollbackId, String logPackageName, List<RollbackInfo> recentlyCommittedRollbacks) {
        PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
        RollbackInfo rollback = null;
        for (RollbackInfo info : recentlyCommittedRollbacks) {
            if (rollbackId == info.getRollbackId()) {
                rollback = info;
                break;
            }
        }
        if (rollback == null) {
            Slog.e(TAG, "rollback info not found for last staged rollback: " + rollbackId);
            return;
        }
        VersionedPackage oldLoggingPackage = null;
        if (!TextUtils.isEmpty(logPackageName)) {
            for (PackageRollbackInfo packageRollback : rollback.getPackages()) {
                if (logPackageName.equals(packageRollback.getPackageName())) {
                    oldLoggingPackage = packageRollback.getVersionRolledBackFrom();
                    break;
                }
            }
        }
        int sessionId = rollback.getCommittedSessionId();
        PackageInstaller.SessionInfo sessionInfo = packageInstaller.getSessionInfo(sessionId);
        if (sessionInfo == null) {
            Slog.e(TAG, "On boot completed, could not load session id " + sessionId);
            return;
        }
        if (sessionInfo.isStagedSessionApplied()) {
            logEvent(oldLoggingPackage, 2, 0, "");
        } else if (sessionInfo.isStagedSessionFailed()) {
            logEvent(oldLoggingPackage, 3, 0, "");
        }
    }

    public static void logApexdRevert(Context context, List<String> failedPackageNames, String failingNativeProcess) {
        Set<VersionedPackage> logPackages = getLogPackages(context, failedPackageNames);
        for (VersionedPackage logPackage : logPackages) {
            logEvent(logPackage, 2, 5, failingNativeProcess);
        }
    }

    public static void logEvent(VersionedPackage logPackage, int type, int rollbackReason, String failingPackageName) {
        Slog.i(TAG, "Watchdog event occurred with type: " + rollbackTypeToString(type) + " logPackage: " + logPackage + " rollbackReason: " + rollbackReasonToString(rollbackReason) + " failedPackageName: " + failingPackageName);
        if (logPackage != null) {
            FrameworkStatsLog.write(CecMessageType.SELECT_DIGITAL_SERVICE, type, logPackage.getPackageName(), logPackage.getVersionCode(), rollbackReason, failingPackageName, new byte[0]);
        } else {
            FrameworkStatsLog.write(CecMessageType.SELECT_DIGITAL_SERVICE, type, "", 0, rollbackReason, failingPackageName, new byte[0]);
        }
    }

    static int mapFailureReasonToMetric(int failureReason) {
        if (failureReason == 1) {
            return 1;
        }
        if (failureReason == 2) {
            return 2;
        }
        if (failureReason != 3) {
            return failureReason != 4 ? 0 : 4;
        }
        return 3;
    }

    private static String rollbackTypeToString(int type) {
        if (type == 1) {
            return "ROLLBACK_INITIATE";
        }
        if (type == 2) {
            return "ROLLBACK_SUCCESS";
        }
        if (type == 3) {
            return "ROLLBACK_FAILURE";
        }
        if (type == 4) {
            return "ROLLBACK_BOOT_TRIGGERED";
        }
        return "UNKNOWN";
    }

    private static String rollbackReasonToString(int reason) {
        if (reason == 1) {
            return "REASON_NATIVE_CRASH";
        }
        if (reason == 2) {
            return "REASON_EXPLICIT_HEALTH_CHECK";
        }
        if (reason == 3) {
            return "REASON_APP_CRASH";
        }
        if (reason == 4) {
            return "REASON_APP_NOT_RESPONDING";
        }
        if (reason == 5) {
            return "REASON_NATIVE_CRASH_DURING_BOOT";
        }
        return "UNKNOWN";
    }
}
