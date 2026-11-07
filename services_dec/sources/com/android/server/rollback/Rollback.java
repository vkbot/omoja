package com.android.server.rollback;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.UserInfo;
import android.content.pm.VersionedPackage;
import android.content.rollback.PackageRollbackInfo;
import android.content.rollback.RollbackInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.ParseException;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class Rollback {
    static final int ROLLBACK_STATE_AVAILABLE = 1;
    static final int ROLLBACK_STATE_COMMITTED = 3;
    static final int ROLLBACK_STATE_DELETED = 4;
    static final int ROLLBACK_STATE_ENABLING = 0;
    private static final String TAG = "RollbackManager";
    public final RollbackInfo info;
    private int mApkSessionId;
    private final File mBackupDir;
    private final SparseIntArray mExtensionVersions;
    public final String mInstallerPackageName;
    private final Object mLock;
    private int mNumPackageSessionsWithSuccess;
    private final int[] mPackageSessionIds;
    private boolean mRestoreUserDataInProgress;
    private final int mStagedSessionId;
    private int mState;
    private Instant mTimestamp;
    public final int mUserId;

    @Retention(RetentionPolicy.SOURCE)
    @interface RollbackState {
    }

    Rollback(int rollbackId, File backupDir, int stagedSessionId, int userId, String installerPackageName, int[] packageSessionIds, SparseIntArray extensionVersions) {
        this.mApkSessionId = -1;
        this.mRestoreUserDataInProgress = false;
        this.mLock = new Object();
        this.info = new RollbackInfo(rollbackId, new ArrayList(), stagedSessionId != -1, new ArrayList(), -1);
        this.mUserId = userId;
        this.mInstallerPackageName = installerPackageName;
        this.mBackupDir = backupDir;
        this.mStagedSessionId = stagedSessionId;
        this.mState = 0;
        this.mTimestamp = Instant.now();
        this.mPackageSessionIds = packageSessionIds != null ? packageSessionIds : new int[0];
        Objects.requireNonNull(extensionVersions);
        this.mExtensionVersions = extensionVersions;
    }

    Rollback(int rollbackId, File backupDir, int stagedSessionId, int userId, String installerPackageName) {
        this(rollbackId, backupDir, stagedSessionId, userId, installerPackageName, null, new SparseIntArray(0));
    }

    Rollback(RollbackInfo info, File backupDir, Instant timestamp, int stagedSessionId, int state, int apkSessionId, boolean restoreUserDataInProgress, int userId, String installerPackageName, SparseIntArray extensionVersions) {
        this.mApkSessionId = -1;
        this.mRestoreUserDataInProgress = false;
        this.mLock = new Object();
        this.info = info;
        this.mUserId = userId;
        this.mInstallerPackageName = installerPackageName;
        this.mBackupDir = backupDir;
        this.mTimestamp = timestamp;
        this.mStagedSessionId = stagedSessionId;
        this.mState = state;
        this.mApkSessionId = apkSessionId;
        this.mRestoreUserDataInProgress = restoreUserDataInProgress;
        Objects.requireNonNull(extensionVersions);
        this.mExtensionVersions = extensionVersions;
        this.mPackageSessionIds = new int[0];
    }

    boolean isStaged() {
        return this.info.isStaged();
    }

    File getBackupDir() {
        return this.mBackupDir;
    }

    Instant getTimestamp() {
        Instant instant;
        synchronized (this.mLock) {
            instant = this.mTimestamp;
        }
        return instant;
    }

    void setTimestamp(Instant timestamp) {
        synchronized (this.mLock) {
            this.mTimestamp = timestamp;
            RollbackStore.saveRollback(this);
        }
    }

    int getStagedSessionId() {
        return this.mStagedSessionId;
    }

    int getUserId() {
        return this.mUserId;
    }

    String getInstallerPackageName() {
        return this.mInstallerPackageName;
    }

    SparseIntArray getExtensionVersions() {
        return this.mExtensionVersions;
    }

    boolean isEnabling() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mState == 0;
        }
        return z;
    }

    boolean isAvailable() {
        boolean z;
        synchronized (this.mLock) {
            z = true;
            if (this.mState != 1) {
                z = false;
            }
        }
        return z;
    }

    boolean isCommitted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mState == 3;
        }
        return z;
    }

    boolean isDeleted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mState == 4;
        }
        return z;
    }

    void saveRollback() {
        synchronized (this.mLock) {
            RollbackStore.saveRollback(this);
        }
    }

    boolean enableForPackage(String packageName, long newVersion, long installedVersion, boolean isApex, String sourceDir, String[] splitSourceDirs, int rollbackDataPolicy) {
        try {
            RollbackStore.backupPackageCodePath(this, packageName, sourceDir);
            if (!ArrayUtils.isEmpty(splitSourceDirs)) {
                for (String dir : splitSourceDirs) {
                    RollbackStore.backupPackageCodePath(this, packageName, dir);
                }
            }
            PackageRollbackInfo packageRollbackInfo = new PackageRollbackInfo(new VersionedPackage(packageName, newVersion), new VersionedPackage(packageName, installedVersion), new IntArray(), new ArrayList(), isApex, false, new IntArray(), new SparseLongArray(), rollbackDataPolicy);
            synchronized (this.mLock) {
                this.info.getPackages().add(packageRollbackInfo);
            }
            return true;
        } catch (IOException e) {
            Slog.e(TAG, "Unable to copy package for rollback for " + packageName, e);
            return false;
        }
    }

    boolean enableForPackageInApex(String packageName, long installedVersion, int rollbackDataPolicy) {
        PackageRollbackInfo packageRollbackInfo = new PackageRollbackInfo(new VersionedPackage(packageName, 0), new VersionedPackage(packageName, installedVersion), new IntArray(), new ArrayList(), false, true, new IntArray(), new SparseLongArray(), rollbackDataPolicy);
        synchronized (this.mLock) {
            this.info.getPackages().add(packageRollbackInfo);
        }
        return true;
    }

    void snapshotUserData(String packageName, int[] userIds, AppDataRollbackHelper dataHelper) {
        synchronized (this.mLock) {
            if (isEnabling()) {
                for (PackageRollbackInfo pkgRollbackInfo : this.info.getPackages()) {
                    if (pkgRollbackInfo.getPackageName().equals(packageName)) {
                        if (pkgRollbackInfo.getRollbackDataPolicy() != 0) {
                            break;
                        }
                        dataHelper.snapshotAppData(this.info.getRollbackId(), pkgRollbackInfo, userIds);
                        pkgRollbackInfo.getSnapshottedUsers().addAll(IntArray.wrap(userIds));
                        RollbackStore.saveRollback(this);
                        break;
                    }
                }
            }
        }
    }

    void commitPendingBackupAndRestoreForUser(int userId, AppDataRollbackHelper dataHelper) {
        synchronized (this.mLock) {
            if (dataHelper.commitPendingBackupAndRestoreForUser(userId, this)) {
                RollbackStore.saveRollback(this);
            }
        }
    }

    void makeAvailable() {
        synchronized (this.mLock) {
            if (isDeleted()) {
                Slog.w(TAG, "Cannot make deleted rollback available.");
                return;
            }
            this.mState = 1;
            this.mTimestamp = Instant.now();
            RollbackStore.saveRollback(this);
        }
    }

    void commit(final Context context, final List<VersionedPackage> causePackages, String callerPackageName, final IntentSender statusReceiver) {
        synchronized (this.mLock) {
            try {
                try {
                    if (!isAvailable()) {
                        RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 2, "Rollback unavailable");
                        return;
                    }
                    int i = 1;
                    if (containsApex() && wasCreatedAtLowerExtensionVersion()) {
                        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                        if (extensionVersionReductionWouldViolateConstraint(this.mExtensionVersions, pmi)) {
                            RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 1, "Rollback may violate a minExtensionVersion constraint");
                            return;
                        }
                    }
                    try {
                        Context pkgContext = context.createPackageContextAsUser(callerPackageName, 0, UserHandle.of(this.mUserId));
                        PackageManager pm = pkgContext.getPackageManager();
                        try {
                            PackageInstaller packageInstaller = pm.getPackageInstaller();
                            PackageInstaller.SessionParams parentParams = new PackageInstaller.SessionParams(1);
                            parentParams.setRequestDowngrade(true);
                            parentParams.setMultiPackage();
                            if (isStaged()) {
                                parentParams.setStaged();
                            }
                            parentParams.setInstallReason(5);
                            int parentSessionId = packageInstaller.createSession(parentParams);
                            PackageInstaller.Session parentSession = packageInstaller.openSession(parentSessionId);
                            Iterator it = this.info.getPackages().iterator();
                            while (it.hasNext()) {
                                PackageRollbackInfo pkgRollbackInfo = (PackageRollbackInfo) it.next();
                                if (!pkgRollbackInfo.isApkInApex()) {
                                    PackageInstaller.SessionParams params = new PackageInstaller.SessionParams(i);
                                    String installerPackageName = this.mInstallerPackageName;
                                    if (TextUtils.isEmpty(this.mInstallerPackageName)) {
                                        installerPackageName = pm.getInstallerPackageName(pkgRollbackInfo.getPackageName());
                                    }
                                    if (installerPackageName != null) {
                                        params.setInstallerPackageName(installerPackageName);
                                    }
                                    params.setRequestDowngrade(true);
                                    params.setRequiredInstalledVersionCode(pkgRollbackInfo.getVersionRolledBackFrom().getLongVersionCode());
                                    if (isStaged()) {
                                        params.setStaged();
                                    }
                                    if (pkgRollbackInfo.isApex()) {
                                        params.setInstallAsApex();
                                    }
                                    int sessionId = packageInstaller.createSession(params);
                                    PackageInstaller.Session session = packageInstaller.openSession(sessionId);
                                    File[] packageCodePaths = RollbackStore.getPackageCodePaths(this, pkgRollbackInfo.getPackageName());
                                    if (packageCodePaths == null) {
                                        RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 1, "Backup copy of package: " + pkgRollbackInfo.getPackageName() + " is inaccessible");
                                        return;
                                    }
                                    int length = packageCodePaths.length;
                                    Iterator it2 = it;
                                    int i2 = 0;
                                    while (i2 < length) {
                                        File packageCodePath = packageCodePaths[i2];
                                        File[] packageCodePaths2 = packageCodePaths;
                                        int i3 = length;
                                        ParcelFileDescriptor fd = ParcelFileDescriptor.open(packageCodePath, AudioFormat.EVRC);
                                        try {
                                            long token = Binder.clearCallingIdentity();
                                            try {
                                                session.write(packageCodePath.getName(), 0L, packageCodePath.length(), fd);
                                                Binder.restoreCallingIdentity(token);
                                                if (fd != null) {
                                                    fd.close();
                                                }
                                                i2++;
                                                packageCodePaths = packageCodePaths2;
                                                length = i3;
                                            } catch (Throwable th) {
                                                Binder.restoreCallingIdentity(token);
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            if (fd == null) {
                                                throw th2;
                                            }
                                            try {
                                                fd.close();
                                                throw th2;
                                            } catch (Throwable th3) {
                                                th2.addSuppressed(th3);
                                                throw th2;
                                            }
                                        }
                                    }
                                    parentSession.addChildSessionId(sessionId);
                                    it = it2;
                                    i = 1;
                                }
                            }
                            try {
                                LocalIntentReceiver receiver = new LocalIntentReceiver(new Consumer() { // from class: com.android.server.rollback.-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        this.f$0.lambda$commit$0$Rollback(context, statusReceiver, causePackages, (Intent) obj);
                                    }
                                });
                                this.mState = 3;
                                this.info.setCommittedSessionId(parentSessionId);
                                this.mRestoreUserDataInProgress = true;
                                parentSession.commit(receiver.getIntentSender());
                            } catch (IOException e) {
                                e = e;
                                Slog.e(TAG, "Rollback failed", e);
                                RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 1, "IOException: " + e.toString());
                            }
                        } catch (IOException e2) {
                            e = e2;
                        }
                    } catch (PackageManager.NameNotFoundException e3) {
                        RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 1, "Invalid callerPackageName");
                    }
                } catch (Throwable th4) {
                    e = th4;
                    throw e;
                }
            } catch (Throwable th5) {
                e = th5;
                throw e;
            }
        }
    }

    public /* synthetic */ void lambda$commit$0$Rollback(Context context, IntentSender statusReceiver, List causePackages, Intent result) {
        int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
        if (status != 0) {
            synchronized (this.mLock) {
                this.mState = 1;
                this.mRestoreUserDataInProgress = false;
                this.info.setCommittedSessionId(-1);
            }
            RollbackManagerServiceImpl.sendFailure(context, statusReceiver, 3, "Rollback downgrade install failed: " + result.getStringExtra("android.content.pm.extra.STATUS_MESSAGE"));
            return;
        }
        synchronized (this.mLock) {
            if (!isStaged()) {
                this.mRestoreUserDataInProgress = false;
            }
            this.info.getCausePackages().addAll(causePackages);
            RollbackStore.deletePackageCodePaths(this);
            RollbackStore.saveRollback(this);
        }
        try {
            Intent fillIn = new Intent();
            fillIn.putExtra("android.content.rollback.extra.STATUS", 0);
            statusReceiver.sendIntent(context, 0, fillIn, null, null);
        } catch (IntentSender.SendIntentException e) {
        }
        Intent broadcast = new Intent("android.intent.action.ROLLBACK_COMMITTED");
        for (UserInfo userInfo : UserManager.get(context).getUsers(true)) {
            context.sendBroadcastAsUser(broadcast, userInfo.getUserHandle(), "android.permission.MANAGE_ROLLBACKS");
        }
    }

    boolean restoreUserDataForPackageIfInProgress(String packageName, int[] userIds, int appId, String seInfo, AppDataRollbackHelper dataHelper) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    if (!isRestoreUserDataInProgress()) {
                        return false;
                    }
                    boolean foundPackage = false;
                    for (PackageRollbackInfo pkgRollbackInfo : this.info.getPackages()) {
                        if (pkgRollbackInfo.getPackageName().equals(packageName)) {
                            foundPackage = true;
                            boolean changedRollback = false;
                            for (int userId : userIds) {
                                changedRollback |= dataHelper.restoreAppData(this.info.getRollbackId(), pkgRollbackInfo, userId, appId, seInfo);
                            }
                            if (!changedRollback) {
                                break;
                            }
                            RollbackStore.saveRollback(this);
                            break;
                        }
                    }
                    return foundPackage;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void delete(AppDataRollbackHelper dataHelper) {
        synchronized (this.mLock) {
            boolean containsApex = false;
            for (PackageRollbackInfo pkgInfo : this.info.getPackages()) {
                if (pkgInfo.isApex()) {
                    containsApex = true;
                } else {
                    IntArray snapshottedUsers = pkgInfo.getSnapshottedUsers();
                    for (int i = 0; i < snapshottedUsers.size(); i++) {
                        int userId = snapshottedUsers.get(i);
                        dataHelper.destroyAppDataSnapshot(this.info.getRollbackId(), pkgInfo, userId);
                    }
                }
            }
            if (containsApex) {
                dataHelper.destroyApexDeSnapshots(this.info.getRollbackId());
            }
            RollbackStore.deleteRollback(this);
            this.mState = 4;
        }
    }

    int getApkSessionId() {
        int i;
        synchronized (this.mLock) {
            i = this.mApkSessionId;
        }
        return i;
    }

    void setApkSessionId(int apkSessionId) {
        synchronized (this.mLock) {
            this.mApkSessionId = apkSessionId;
            RollbackStore.saveRollback(this);
        }
    }

    boolean isRestoreUserDataInProgress() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mRestoreUserDataInProgress;
        }
        return z;
    }

    void setRestoreUserDataInProgress(boolean restoreUserDataInProgress) {
        synchronized (this.mLock) {
            this.mRestoreUserDataInProgress = restoreUserDataInProgress;
            RollbackStore.saveRollback(this);
        }
    }

    boolean includesPackage(String packageName) {
        synchronized (this.mLock) {
            for (PackageRollbackInfo packageRollbackInfo : this.info.getPackages()) {
                if (packageRollbackInfo.getPackageName().equals(packageName)) {
                    return true;
                }
            }
            return false;
        }
    }

    boolean includesPackageWithDifferentVersion(String packageName, long versionCode) {
        synchronized (this.mLock) {
            for (PackageRollbackInfo pkgRollbackInfo : this.info.getPackages()) {
                if (pkgRollbackInfo.getPackageName().equals(packageName) && pkgRollbackInfo.getVersionRolledBackFrom().getLongVersionCode() != versionCode) {
                    return true;
                }
            }
            return false;
        }
    }

    List<String> getPackageNames() {
        List<String> result;
        synchronized (this.mLock) {
            result = new ArrayList<>();
            for (PackageRollbackInfo pkgRollbackInfo : this.info.getPackages()) {
                result.add(pkgRollbackInfo.getPackageName());
            }
        }
        return result;
    }

    List<String> getApexPackageNames() {
        List<String> result;
        synchronized (this.mLock) {
            result = new ArrayList<>();
            for (PackageRollbackInfo pkgRollbackInfo : this.info.getPackages()) {
                if (pkgRollbackInfo.isApex()) {
                    result.add(pkgRollbackInfo.getPackageName());
                }
            }
        }
        return result;
    }

    boolean containsSessionId(int packageSessionId) {
        for (int id : this.mPackageSessionIds) {
            if (id == packageSessionId) {
                return true;
            }
        }
        return false;
    }

    boolean notifySessionWithSuccess() {
        boolean z;
        synchronized (this.mLock) {
            z = true;
            int i = this.mNumPackageSessionsWithSuccess + 1;
            this.mNumPackageSessionsWithSuccess = i;
            if (i != this.mPackageSessionIds.length) {
                z = false;
            }
        }
        return z;
    }

    boolean allPackagesEnabled() {
        boolean z;
        synchronized (this.mLock) {
            int packagesWithoutApkInApex = 0;
            for (PackageRollbackInfo rollbackInfo : this.info.getPackages()) {
                if (!rollbackInfo.isApkInApex()) {
                    packagesWithoutApkInApex++;
                }
            }
            z = packagesWithoutApkInApex == this.mPackageSessionIds.length;
        }
        return z;
    }

    static String rollbackStateToString(int state) {
        if (state == 0) {
            return "enabling";
        }
        if (state == 1) {
            return "available";
        }
        if (state == 3) {
            return "committed";
        }
        throw new AssertionError("Invalid rollback state: " + state);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    static int rollbackStateFromString(String state) throws ParseException {
        byte b;
        int iHashCode = state.hashCode();
        if (iHashCode != -1491142788) {
            if (iHashCode != -733902135) {
                if (iHashCode == 1642196352 && state.equals("enabling")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (state.equals("available")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (state.equals("committed")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return 0;
        }
        if (b == 1) {
            return 1;
        }
        if (b == 2) {
            return 3;
        }
        throw new ParseException("Invalid rollback state: " + state, 0);
    }

    String getStateAsString() {
        String strRollbackStateToString;
        synchronized (this.mLock) {
            strRollbackStateToString = rollbackStateToString(this.mState);
        }
        return strRollbackStateToString;
    }

    static boolean extensionVersionReductionWouldViolateConstraint(SparseIntArray rollbackExtVers, PackageManagerInternal pmi) {
        if (rollbackExtVers.size() == 0) {
            return false;
        }
        List<String> packages = pmi.getPackageList().getPackageNames();
        for (int i = 0; i < packages.size(); i++) {
            AndroidPackage pkg = pmi.getPackage(packages.get(i));
            SparseIntArray minExtVers = pkg.getMinExtensionVersions();
            if (minExtVers != null) {
                for (int j = 0; j < rollbackExtVers.size(); j++) {
                    int minExt = minExtVers.get(rollbackExtVers.keyAt(j), -1);
                    if (rollbackExtVers.valueAt(j) < minExt) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean wasCreatedAtLowerExtensionVersion() {
        for (int i = 0; i < this.mExtensionVersions.size(); i++) {
            if (SdkExtensions.getExtensionVersion(this.mExtensionVersions.keyAt(i)) > this.mExtensionVersions.valueAt(i)) {
                return true;
            }
        }
        return false;
    }

    private boolean containsApex() {
        for (PackageRollbackInfo pkgInfo : this.info.getPackages()) {
            if (pkgInfo.isApex()) {
                return true;
            }
        }
        return false;
    }

    void dump(IndentingPrintWriter ipw) {
        synchronized (this.mLock) {
            ipw.println(this.info.getRollbackId() + ":");
            ipw.increaseIndent();
            ipw.println("-state: " + getStateAsString());
            ipw.println("-timestamp: " + getTimestamp());
            if (getStagedSessionId() != -1) {
                ipw.println("-stagedSessionId: " + getStagedSessionId());
            }
            ipw.println("-packages:");
            ipw.increaseIndent();
            for (PackageRollbackInfo pkg : this.info.getPackages()) {
                ipw.println(pkg.getPackageName() + " " + pkg.getVersionRolledBackFrom().getLongVersionCode() + " -> " + pkg.getVersionRolledBackTo().getLongVersionCode());
            }
            ipw.decreaseIndent();
            if (isCommitted()) {
                ipw.println("-causePackages:");
                ipw.increaseIndent();
                for (VersionedPackage cPkg : this.info.getCausePackages()) {
                    ipw.println(cPkg.getPackageName() + " " + cPkg.getLongVersionCode());
                }
                ipw.decreaseIndent();
                ipw.println("-committedSessionId: " + this.info.getCommittedSessionId());
            }
            if (this.mExtensionVersions.size() > 0) {
                ipw.println("-extensionVersions:");
                ipw.increaseIndent();
                ipw.println(this.mExtensionVersions.toString());
                ipw.decreaseIndent();
            }
            ipw.decreaseIndent();
        }
    }
}
