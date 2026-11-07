package com.android.server.compat;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManagerInternal;
import android.os.Binder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.compat.AndroidBuildClassifier;
import com.android.internal.compat.ChangeReporter;
import com.android.internal.compat.CompatibilityChangeConfig;
import com.android.internal.compat.CompatibilityChangeInfo;
import com.android.internal.compat.IOverrideValidator;
import com.android.internal.compat.IPlatformCompat;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class PlatformCompat extends IPlatformCompat.Stub {
    private static final String TAG = "Compatibility";
    private final ChangeReporter mChangeReporter = new ChangeReporter(2);
    private final CompatConfig mCompatConfig;
    private final Context mContext;
    private static int sMinTargetSdk = 28;
    private static int sMaxTargetSdk = 29;

    public PlatformCompat(Context context) {
        this.mContext = context;
        this.mCompatConfig = CompatConfig.create(new AndroidBuildClassifier(), this.mContext);
    }

    PlatformCompat(Context context, CompatConfig compatConfig) {
        this.mContext = context;
        this.mCompatConfig = compatConfig;
    }

    public void reportChange(long changeId, ApplicationInfo appInfo) {
        checkCompatChangeLogPermission();
        reportChange(changeId, appInfo.uid, 3);
    }

    public void reportChangeByPackageName(long changeId, String packageName, int userId) {
        checkCompatChangeLogPermission();
        ApplicationInfo appInfo = getApplicationInfo(packageName, userId);
        if (appInfo == null) {
            return;
        }
        reportChange(changeId, appInfo);
    }

    public void reportChangeByUid(long changeId, int uid) {
        checkCompatChangeLogPermission();
        reportChange(changeId, uid, 3);
    }

    public boolean isChangeEnabled(long changeId, ApplicationInfo appInfo) {
        checkCompatChangeReadAndLogPermission();
        return isChangeEnabledInternal(changeId, appInfo);
    }

    public boolean isChangeEnabledInternal(long changeId, ApplicationInfo appInfo) {
        if (this.mCompatConfig.isChangeEnabled(changeId, appInfo)) {
            reportChange(changeId, appInfo.uid, 1);
            return true;
        }
        reportChange(changeId, appInfo.uid, 2);
        return false;
    }

    public boolean isChangeEnabledByPackageName(long changeId, String packageName, int userId) {
        checkCompatChangeReadAndLogPermission();
        ApplicationInfo appInfo = getApplicationInfo(packageName, userId);
        if (appInfo == null) {
            return true;
        }
        return isChangeEnabled(changeId, appInfo);
    }

    public boolean isChangeEnabledByUid(long changeId, int uid) {
        checkCompatChangeReadAndLogPermission();
        String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
        if (packages == null || packages.length == 0) {
            return true;
        }
        boolean enabled = true;
        for (String packageName : packages) {
            enabled = enabled && isChangeEnabledByPackageName(changeId, packageName, UserHandle.getUserId(uid));
        }
        return enabled;
    }

    public boolean registerListener(long changeId, CompatChange.ChangeListener listener) {
        return this.mCompatConfig.registerListener(changeId, listener);
    }

    public void setOverrides(CompatibilityChangeConfig overrides, String packageName) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        this.mCompatConfig.addOverrides(overrides, packageName);
        killPackage(packageName);
    }

    public void setOverridesForTest(CompatibilityChangeConfig overrides, String packageName) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        this.mCompatConfig.addOverrides(overrides, packageName);
    }

    public int enableTargetSdkChanges(String packageName, int targetSdkVersion) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        int numChanges = this.mCompatConfig.enableTargetSdkChangesForPackage(packageName, targetSdkVersion);
        killPackage(packageName);
        return numChanges;
    }

    public int disableTargetSdkChanges(String packageName, int targetSdkVersion) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        int numChanges = this.mCompatConfig.disableTargetSdkChangesForPackage(packageName, targetSdkVersion);
        killPackage(packageName);
        return numChanges;
    }

    public void clearOverrides(String packageName) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        this.mCompatConfig.removePackageOverrides(packageName);
        killPackage(packageName);
    }

    public void clearOverridesForTest(String packageName) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        this.mCompatConfig.removePackageOverrides(packageName);
    }

    public boolean clearOverride(long changeId, String packageName) throws RemoteException, SecurityException {
        checkCompatChangeOverridePermission();
        boolean existed = this.mCompatConfig.removeOverride(changeId, packageName);
        killPackage(packageName);
        return existed;
    }

    public CompatibilityChangeConfig getAppConfig(ApplicationInfo appInfo) {
        checkCompatChangeReadAndLogPermission();
        return this.mCompatConfig.getAppConfig(appInfo);
    }

    public CompatibilityChangeInfo[] listAllChanges() {
        checkCompatChangeReadPermission();
        return this.mCompatConfig.dumpChanges();
    }

    public CompatibilityChangeInfo[] listUIChanges() {
        return (CompatibilityChangeInfo[]) Arrays.stream(listAllChanges()).filter(new Predicate() { // from class: com.android.server.compat.-$$Lambda$PlatformCompat$AtVEv4aAuZbcSh4W8E3Qv4I8wOY
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$listUIChanges$0$PlatformCompat((CompatibilityChangeInfo) obj);
            }
        }).toArray(new IntFunction() { // from class: com.android.server.compat.-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return PlatformCompat.lambda$listUIChanges$1(i);
            }
        });
    }

    static /* synthetic */ CompatibilityChangeInfo[] lambda$listUIChanges$1(int x$0) {
        return new CompatibilityChangeInfo[x$0];
    }

    public boolean isKnownChangeId(long changeId) {
        return this.mCompatConfig.isKnownChangeId(changeId);
    }

    public long[] getDisabledChanges(ApplicationInfo appInfo) {
        return this.mCompatConfig.getDisabledChanges(appInfo);
    }

    public long lookupChangeId(String name) {
        return this.mCompatConfig.lookupChangeId(name);
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpAndUsageStatsPermission(this.mContext, "platform_compat", pw)) {
            checkCompatChangeReadAndLogPermission();
            this.mCompatConfig.dumpConfig(pw);
        }
    }

    public IOverrideValidator getOverrideValidator() {
        return this.mCompatConfig.getOverrideValidator();
    }

    public void resetReporting(ApplicationInfo appInfo) {
        this.mChangeReporter.resetReportedChanges(appInfo.uid);
    }

    private ApplicationInfo getApplicationInfo(String packageName, int userId) {
        return ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getApplicationInfo(packageName, 0, userId, userId);
    }

    private void reportChange(long changeId, int uid, int state) {
        this.mChangeReporter.reportChange(uid, changeId, state);
    }

    private void killPackage(String packageName) {
        int uid = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackageUid(packageName, 0, UserHandle.myUserId());
        if (uid < 0) {
            Slog.w(TAG, "Didn't find package " + packageName + " on device.");
            return;
        }
        Slog.d(TAG, "Killing package " + packageName + " (UID " + uid + ").");
        killUid(UserHandle.getAppId(uid), -1, "PlatformCompat overrides");
    }

    private void killUid(int appId, int userId, String reason) {
        long identity = Binder.clearCallingIdentity();
        try {
            IActivityManager am = ActivityManager.getService();
            if (am != null) {
                try {
                    am.killUid(appId, userId, reason);
                } catch (RemoteException e) {
                }
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private void checkCompatChangeLogPermission() throws SecurityException {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.LOG_COMPAT_CHANGE") != 0) {
            throw new SecurityException("Cannot log compat change usage");
        }
    }

    private void checkCompatChangeReadPermission() throws SecurityException {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.READ_COMPAT_CHANGE_CONFIG") != 0) {
            throw new SecurityException("Cannot read compat change");
        }
    }

    private void checkCompatChangeOverridePermission() throws SecurityException {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG") != 0) {
            throw new SecurityException("Cannot override compat change");
        }
    }

    private void checkCompatChangeReadAndLogPermission() throws SecurityException {
        checkCompatChangeReadPermission();
        checkCompatChangeLogPermission();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isShownInUI, reason: merged with bridge method [inline-methods] */
    public boolean lambda$listUIChanges$0$PlatformCompat(CompatibilityChangeInfo change) {
        if (change.getLoggingOnly()) {
            return false;
        }
        if (change.getEnableAfterTargetSdk() > 0) {
            return change.getEnableAfterTargetSdk() >= sMinTargetSdk && change.getEnableAfterTargetSdk() <= sMaxTargetSdk;
        }
        return true;
    }
}
