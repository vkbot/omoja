package com.android.server.backup.utils;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.backup.IBackupTransport;
import com.android.internal.util.ArrayUtils;
import com.android.server.LocalServices;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.transport.TransportClient;
import com.android.server.pm.PackageManagerService;
import com.google.android.collect.Sets;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AppBackupUtils {
    private static final boolean DEBUG = false;
    private static final Set<String> systemPackagesWhitelistedForAllUsers = Sets.newArraySet(new String[]{UserBackupManagerService.PACKAGE_MANAGER_SENTINEL, PackageManagerService.PLATFORM_PACKAGE_NAME});

    public static boolean appIsEligibleForBackup(ApplicationInfo app, int userId) {
        return appIsEligibleForBackup(app, (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class), userId);
    }

    static boolean appIsEligibleForBackup(ApplicationInfo app, PackageManagerInternal packageManager, int userId) {
        if ((app.flags & 32768) == 0) {
            return false;
        }
        if ((UserHandle.isCore(app.uid) && ((userId != 0 && !systemPackagesWhitelistedForAllUsers.contains(app.packageName)) || app.backupAgentName == null)) || app.packageName.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE) || app.isInstantApp()) {
            return false;
        }
        return !appIsDisabled(app, packageManager, userId);
    }

    public static boolean appIsRunningAndEligibleForBackupWithTransport(TransportClient transportClient, String packageName, PackageManager pm, int userId) {
        try {
            PackageInfo packageInfo = pm.getPackageInfoAsUser(packageName, AudioFormat.OPUS, userId);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (!appIsEligibleForBackup(applicationInfo, userId) || appIsStopped(applicationInfo) || appIsDisabled(applicationInfo, userId)) {
                return false;
            }
            if (transportClient != null) {
                try {
                    IBackupTransport transport = transportClient.connectOrThrow("AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport");
                    return transport.isAppEligibleForBackup(packageInfo, appGetsFullBackup(packageInfo));
                } catch (Exception e) {
                    Slog.e(BackupManagerService.TAG, "Unable to ask about eligibility: " + e.getMessage());
                    return true;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    static boolean appIsDisabled(ApplicationInfo app, int userId) {
        return appIsDisabled(app, (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class), userId);
    }

    static boolean appIsDisabled(ApplicationInfo app, PackageManagerInternal packageManager, int userId) {
        int enabledSetting = packageManager.getApplicationEnabledState(app.packageName, userId);
        if (enabledSetting == 0) {
            return true ^ app.enabled;
        }
        if (enabledSetting == 2 || enabledSetting == 3 || enabledSetting == 4) {
            return true;
        }
        return false;
    }

    public static boolean appIsStopped(ApplicationInfo app) {
        return (app.flags & 2097152) != 0;
    }

    public static boolean appGetsFullBackup(PackageInfo pkg) {
        return pkg.applicationInfo.backupAgentName == null || (pkg.applicationInfo.flags & 67108864) != 0;
    }

    public static boolean appIsKeyValueOnly(PackageInfo pkg) {
        return !appGetsFullBackup(pkg);
    }

    public static boolean signaturesMatch(Signature[] storedSigs, PackageInfo target, PackageManagerInternal pmi) {
        if (target == null || target.packageName == null) {
            return false;
        }
        if ((target.applicationInfo.flags & 1) != 0) {
            return true;
        }
        if (ArrayUtils.isEmpty(storedSigs)) {
            return false;
        }
        SigningInfo signingInfo = target.signingInfo;
        if (signingInfo == null) {
            Slog.w(BackupManagerService.TAG, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified");
            return false;
        }
        int nStored = storedSigs.length;
        if (nStored == 1) {
            return pmi.isDataRestoreSafe(storedSigs[0], target.packageName);
        }
        Signature[] deviceSigs = signingInfo.getApkContentsSigners();
        for (Signature signature : storedSigs) {
            boolean match = false;
            for (Signature signature2 : deviceSigs) {
                if (signature.equals(signature2)) {
                    match = true;
                    break;
                }
            }
            if (!match) {
                return false;
            }
        }
        return true;
    }
}
