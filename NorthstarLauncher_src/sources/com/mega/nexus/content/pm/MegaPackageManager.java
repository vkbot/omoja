package com.mega.nexus.content.pm;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaPackageManager {
    public static final int DELETE_ALL_USERS = 2;
    public static final int INSTALL_ALL_USERS = 64;
    public static final int MATCH_ANY_USER = 4194304;
    public static final int MATCH_DEBUG_TRIAGED_MISSING = 268435456;

    public static List<ApplicationInfo> getApplicationInfoAsUser(PackageManager packageManager, int i, int i2) throws PackageManager.NameNotFoundException {
        return packageManager.getInstalledApplicationsAsUser(i, convertUserId(i2));
    }

    public static ApplicationInfo getApplicationInfoAsUser(PackageManager packageManager, String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return packageManager.getApplicationInfoAsUser(str, i, convertUserId(i2));
    }

    public static PackageInfo getPackageInfoAsUser(PackageManager packageManager, String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageInfoAsUser(str, i, convertUserId(i2));
    }

    public static int getPackageUidAsUser(PackageManager packageManager, String str, int i) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageUidAsUser(str, convertUserId(i));
    }

    public static List<ResolveInfo> queryIntentActivitiesAsUser(PackageManager packageManager, Intent intent, int i, int i2) {
        return packageManager.queryIntentActivitiesAsUser(intent, i, convertUserId(i2));
    }

    public static List<ResolveInfo> queryIntentServicesAsUser(PackageManager packageManager, Intent intent, int i, int i2) {
        return packageManager.queryIntentServicesAsUser(intent, i, convertUserId(i2));
    }

    public static ComponentName getHomeActivities(PackageManager packageManager, List<ResolveInfo> list) {
        return packageManager.getHomeActivities(list);
    }

    public static String getPermissionControllerPackageName(PackageManager packageManager) {
        return packageManager.getPermissionControllerPackageName();
    }

    public static String getServicesSystemSharedLibraryPackageName(PackageManager packageManager) {
        return packageManager.getServicesSystemSharedLibraryPackageName();
    }

    public static String getSharedSystemSharedLibraryPackageName(PackageManager packageManager) {
        return packageManager.getSharedSystemSharedLibraryPackageName();
    }

    public static List<ResolveInfo> queryIntentContentProvidersAsUser(PackageManager packageManager, Intent intent, int i, int i2) {
        return packageManager.queryIntentContentProvidersAsUser(intent, i, i2);
    }

    public static List<ResolveInfo> queryBroadcastReceiversAsUser(PackageManager packageManager, Intent intent, int i, int i2) {
        return packageManager.queryBroadcastReceiversAsUser(intent, i, convertUserId(i2));
    }

    public static void clearApplicationUserData(PackageManager packageManager, String str, final MegaIPackageDataObserver megaIPackageDataObserver) {
        if (megaIPackageDataObserver == null) {
            packageManager.clearApplicationUserData(str, null);
        } else {
            packageManager.clearApplicationUserData(str, new IPackageDataObserver.Stub() { // from class: com.mega.nexus.content.pm.MegaPackageManager.1
                public void onRemoveCompleted(String str2, boolean z) {
                    megaIPackageDataObserver.onRemoveCompleted(str2, z);
                }
            });
        }
    }

    public static void deleteApplicationCacheFiles(PackageManager packageManager, String str, final MegaIPackageDataObserver megaIPackageDataObserver) {
        if (megaIPackageDataObserver == null) {
            packageManager.deleteApplicationCacheFiles(str, null);
        } else {
            packageManager.deleteApplicationCacheFiles(str, new IPackageDataObserver.Stub() { // from class: com.mega.nexus.content.pm.MegaPackageManager.2
                public void onRemoveCompleted(String str2, boolean z) {
                    megaIPackageDataObserver.onRemoveCompleted(str2, z);
                }
            });
        }
    }

    public static void setComponentEnabledSettingAsUser(ComponentName componentName, int i, int i2, int i3) {
        try {
            AppGlobals.getPackageManager().setComponentEnabledSetting(componentName, i, i2, convertUserId(i3));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static int getComponentEnabledSettingAsUser(ComponentName componentName, int i) {
        try {
            return AppGlobals.getPackageManager().getComponentEnabledSetting(componentName, convertUserId(i));
        } catch (RemoteException e) {
            e.printStackTrace();
            return 2;
        }
    }

    private static int convertUserId(int i) {
        return (i == -2 || i == -3) ? ActivityManager.getCurrentUser() : i;
    }

    public static PackageInstaller.SessionParams paramInstallAllUser(PackageInstaller.SessionParams sessionParams) {
        sessionParams.installFlags |= 64;
        return sessionParams;
    }
}
