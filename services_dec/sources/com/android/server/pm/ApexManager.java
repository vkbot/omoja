package com.android.server.pm;

import android.apex.ApexInfo;
import android.apex.ApexInfoList;
import android.apex.ApexSessionInfo;
import android.apex.ApexSessionParams;
import android.apex.IApexService;
import android.content.pm.PackageInfo;
import android.content.pm.PackageParser;
import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.hardware.biometrics.fingerprint.V2_1.RequestStatus;
import android.os.Binder;
import android.os.Environment;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Trace;
import android.sysprop.ApexProperties;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Singleton;
import android.util.Slog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.server.pm.parsing.PackageParser2;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.utils.TimingsTraceAndSlog;
import com.google.android.collect.Lists;
import java.io.File;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class ApexManager {
    public static final int MATCH_ACTIVE_PACKAGE = 1;
    static final int MATCH_FACTORY_PACKAGE = 2;
    private static final String TAG = "ApexManager";
    private static final Singleton<ApexManager> sApexManagerSingleton = new Singleton<ApexManager>() { // from class: com.android.server.pm.ApexManager.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX INFO: renamed from: create, reason: merged with bridge method [inline-methods] */
        public ApexManager m46create() {
            if (((Boolean) ApexProperties.updatable().orElse(false)).booleanValue()) {
                return new ApexManagerImpl();
            }
            return new ApexManagerFlattenedApex();
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    @interface PackageInfoFlags {
    }

    abstract boolean abortStagedSession(int i) throws PackageManagerException;

    public abstract boolean destroyCeSnapshotsNotSpecified(int i, int[] iArr);

    public abstract boolean destroyDeSnapshots(int i);

    abstract void dump(PrintWriter printWriter, String str);

    public abstract List<ActiveApexInfo> getActiveApexInfos();

    public abstract String getActiveApexPackageNameContainingPackage(AndroidPackage androidPackage);

    abstract List<PackageInfo> getActivePackages();

    public abstract String getApexModuleNameForPackageName(String str);

    abstract List<String> getApksInApex(String str);

    abstract List<PackageInfo> getFactoryPackages();

    abstract List<PackageInfo> getInactivePackages();

    public abstract PackageInfo getPackageInfo(String str, int i);

    abstract ApexSessionInfo getStagedSessionInfo(int i);

    abstract boolean isApexPackage(String str);

    abstract boolean isApexSupported();

    abstract boolean isApkInApexInstallSuccess(String str);

    abstract void markStagedSessionReady(int i) throws PackageManagerException;

    abstract void markStagedSessionSuccessful(int i);

    abstract void registerApkInApex(AndroidPackage androidPackage);

    abstract void reportErrorWithApkInApex(String str);

    public abstract boolean restoreCeData(int i, int i2, String str);

    abstract boolean revertActiveSessions();

    abstract void scanApexPackagesTraced(PackageParser2 packageParser2, ExecutorService executorService);

    public abstract long snapshotCeData(int i, int i2, String str);

    abstract ApexInfoList submitStagedSession(ApexSessionParams apexSessionParams) throws PackageManagerException;

    abstract boolean uninstallApex(String str);

    public static ApexManager getInstance() {
        return (ApexManager) sApexManagerSingleton.get();
    }

    public static class ActiveApexInfo {
        public final File apexDirectory;
        public final String apexModuleName;
        public final File preInstalledApexPath;

        private ActiveApexInfo(File apexDirectory, File preInstalledApexPath) {
            this((String) null, apexDirectory, preInstalledApexPath);
        }

        private ActiveApexInfo(String apexModuleName, File apexDirectory, File preInstalledApexPath) {
            this.apexModuleName = apexModuleName;
            this.apexDirectory = apexDirectory;
            this.preInstalledApexPath = preInstalledApexPath;
        }

        private ActiveApexInfo(ApexInfo apexInfo) {
            this(apexInfo.moduleName, new File(Environment.getApexDirectory() + File.separator + apexInfo.moduleName), new File(apexInfo.preinstalledModulePath));
        }
    }

    public static boolean isFactory(PackageInfo packageInfo) {
        return (packageInfo.applicationInfo.flags & 1) != 0;
    }

    protected static class ApexManagerImpl extends ApexManager {
        private Set<ActiveApexInfo> mActiveApexInfosCache;
        private List<PackageInfo> mAllPackagesCache;
        private ArrayMap<String, String> mPackageNameToApexModuleName;
        private final Object mLock = new Object();
        private ArrayMap<String, List<String>> mApksInApex = new ArrayMap<>();
        private Set<String> mErrorWithApkInApex = new ArraySet();

        protected ApexManagerImpl() {
        }

        private static boolean isActive(PackageInfo packageInfo) {
            return (packageInfo.applicationInfo.flags & 8388608) != 0;
        }

        protected IApexService waitForApexService() {
            return IApexService.Stub.asInterface(Binder.allowBlocking(ServiceManager.waitForService("apexservice")));
        }

        @Override // com.android.server.pm.ApexManager
        public List<ActiveApexInfo> getActiveApexInfos() {
            TimingsTraceAndSlog t = new TimingsTraceAndSlog("ApexManagerTiming", 262144L);
            synchronized (this.mLock) {
                if (this.mActiveApexInfosCache == null) {
                    t.traceBegin("getActiveApexInfos_noCache");
                    try {
                        this.mActiveApexInfosCache = new ArraySet();
                        ApexInfo[] activePackages = waitForApexService().getActivePackages();
                        for (ApexInfo apexInfo : activePackages) {
                            this.mActiveApexInfosCache.add(new ActiveApexInfo(apexInfo));
                        }
                    } catch (RemoteException e) {
                        Slog.e(ApexManager.TAG, "Unable to retrieve packages from apexservice", e);
                    }
                    t.traceEnd();
                }
                if (this.mActiveApexInfosCache != null) {
                    return new ArrayList(this.mActiveApexInfosCache);
                }
                return Collections.emptyList();
            }
        }

        @Override // com.android.server.pm.ApexManager
        void scanApexPackagesTraced(PackageParser2 packageParser, ExecutorService executorService) {
            Trace.traceBegin(262144L, "scanApexPackagesTraced");
            try {
                synchronized (this.mLock) {
                    scanApexPackagesInternalLocked(packageParser, executorService);
                }
                Trace.traceEnd(262144L);
            } catch (Throwable th) {
                Trace.traceEnd(262144L);
                throw th;
            }
        }

        private void scanApexPackagesInternalLocked(PackageParser2 packageParser, ExecutorService executorService) {
            ApexInfo[] allPkgs;
            ApexManagerImpl apexManagerImpl = this;
            try {
                apexManagerImpl.mAllPackagesCache = new ArrayList();
                apexManagerImpl.mPackageNameToApexModuleName = new ArrayMap<>();
                ApexInfo[] allPkgs2 = waitForApexService().getAllPackages();
                if (allPkgs2.length == 0) {
                    return;
                }
                ArrayMap<File, ApexInfo> parsingApexInfo = new ArrayMap<>();
                ParallelPackageParser parallelPackageParser = new ParallelPackageParser(packageParser, executorService);
                for (ApexInfo ai : allPkgs2) {
                    File apexFile = new File(ai.modulePath);
                    parallelPackageParser.submit(apexFile, 32);
                    parsingApexInfo.put(apexFile, ai);
                }
                HashSet<String> activePackagesSet = new HashSet<>();
                HashSet<String> factoryPackagesSet = new HashSet<>();
                int i = 0;
                while (i < parsingApexInfo.size()) {
                    ParallelPackageParser.ParseResult parseResult = parallelPackageParser.take();
                    PackageParser.PackageParserException packageParserException = parseResult.throwable;
                    ApexInfo ai2 = parsingApexInfo.get(parseResult.scanFile);
                    if (packageParserException == null) {
                        PackageInfo packageInfo = PackageInfoWithoutStateUtils.generate(parseResult.parsedPackage, ai2, 134217920);
                        if (packageInfo == null) {
                            throw new IllegalStateException("Unable to generate package info: " + ai2.modulePath);
                        }
                        apexManagerImpl.mAllPackagesCache.add(packageInfo);
                        allPkgs = allPkgs2;
                        apexManagerImpl.mPackageNameToApexModuleName.put(packageInfo.packageName, ai2.moduleName);
                        if (ai2.isActive) {
                            if (activePackagesSet.contains(packageInfo.packageName)) {
                                throw new IllegalStateException("Two active packages have the same name: " + packageInfo.packageName);
                            }
                            activePackagesSet.add(packageInfo.packageName);
                        }
                        if (!ai2.isFactory) {
                            continue;
                        } else {
                            if (factoryPackagesSet.contains(packageInfo.packageName)) {
                                throw new IllegalStateException("Two factory packages have the same name: " + packageInfo.packageName);
                            }
                            factoryPackagesSet.add(packageInfo.packageName);
                        }
                    } else {
                        allPkgs = allPkgs2;
                        if (packageParserException instanceof PackageParser.PackageParserException) {
                            PackageParser.PackageParserException e = packageParserException;
                            if (e.error != -123) {
                                throw new IllegalStateException("Unable to parse: " + ai2.modulePath, packageParserException);
                            }
                            Slog.w(ApexManager.TAG, "Scan apex failed, not a coreApp:" + ai2.modulePath);
                        } else {
                            throw new IllegalStateException("Unexpected exception occurred while parsing " + ai2.modulePath, packageParserException);
                        }
                    }
                    i++;
                    apexManagerImpl = this;
                    allPkgs2 = allPkgs;
                }
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to retrieve packages from apexservice: " + re.toString());
                throw new RuntimeException(re);
            }
        }

        @Override // com.android.server.pm.ApexManager
        public PackageInfo getPackageInfo(String packageName, int flags) {
            Preconditions.checkState(this.mAllPackagesCache != null, "APEX packages have not been scanned");
            boolean matchActive = (flags & 1) != 0;
            boolean matchFactory = (flags & 2) != 0;
            int size = this.mAllPackagesCache.size();
            for (int i = 0; i < size; i++) {
                PackageInfo packageInfo = this.mAllPackagesCache.get(i);
                if (packageInfo.packageName.equals(packageName) && ((matchActive && isActive(packageInfo)) || (matchFactory && isFactory(packageInfo)))) {
                    return packageInfo;
                }
            }
            return null;
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getActivePackages() {
            Preconditions.checkState(this.mAllPackagesCache != null, "APEX packages have not been scanned");
            List<PackageInfo> activePackages = new ArrayList<>();
            for (int i = 0; i < this.mAllPackagesCache.size(); i++) {
                PackageInfo packageInfo = this.mAllPackagesCache.get(i);
                if (isActive(packageInfo)) {
                    activePackages.add(packageInfo);
                }
            }
            return activePackages;
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getFactoryPackages() {
            Preconditions.checkState(this.mAllPackagesCache != null, "APEX packages have not been scanned");
            List<PackageInfo> factoryPackages = new ArrayList<>();
            for (int i = 0; i < this.mAllPackagesCache.size(); i++) {
                PackageInfo packageInfo = this.mAllPackagesCache.get(i);
                if (isFactory(packageInfo)) {
                    factoryPackages.add(packageInfo);
                }
            }
            return factoryPackages;
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getInactivePackages() {
            Preconditions.checkState(this.mAllPackagesCache != null, "APEX packages have not been scanned");
            List<PackageInfo> inactivePackages = new ArrayList<>();
            for (int i = 0; i < this.mAllPackagesCache.size(); i++) {
                PackageInfo packageInfo = this.mAllPackagesCache.get(i);
                if (!isActive(packageInfo)) {
                    inactivePackages.add(packageInfo);
                }
            }
            return inactivePackages;
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApexPackage(String packageName) {
            if (!isApexSupported()) {
                return false;
            }
            Preconditions.checkState(this.mAllPackagesCache != null, "APEX packages have not been scanned");
            int size = this.mAllPackagesCache.size();
            for (int i = 0; i < size; i++) {
                PackageInfo packageInfo = this.mAllPackagesCache.get(i);
                if (packageInfo.packageName.equals(packageName)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.android.server.pm.ApexManager
        public String getActiveApexPackageNameContainingPackage(AndroidPackage containedPackage) {
            Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
            Objects.requireNonNull(containedPackage);
            synchronized (this.mLock) {
                int numApksInApex = this.mApksInApex.size();
                for (int apkInApexNum = 0; apkInApexNum < numApksInApex; apkInApexNum++) {
                    if (this.mApksInApex.valueAt(apkInApexNum).contains(containedPackage.getPackageName())) {
                        String apexModuleName = this.mApksInApex.keyAt(apkInApexNum);
                        int numApexPkgs = this.mPackageNameToApexModuleName.size();
                        for (int apexPkgNum = 0; apexPkgNum < numApexPkgs; apexPkgNum++) {
                            if (this.mPackageNameToApexModuleName.valueAt(apexPkgNum).equals(apexModuleName)) {
                                return this.mPackageNameToApexModuleName.keyAt(apexPkgNum);
                            }
                        }
                    }
                }
                return null;
            }
        }

        @Override // com.android.server.pm.ApexManager
        ApexSessionInfo getStagedSessionInfo(int sessionId) {
            try {
                ApexSessionInfo apexSessionInfo = waitForApexService().getStagedSessionInfo(sessionId);
                if (apexSessionInfo.isUnknown) {
                    return null;
                }
                return apexSessionInfo;
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                throw new RuntimeException(re);
            }
        }

        @Override // com.android.server.pm.ApexManager
        ApexInfoList submitStagedSession(ApexSessionParams params) throws PackageManagerException {
            try {
                ApexInfoList apexInfoList = new ApexInfoList();
                waitForApexService().submitStagedSession(params, apexInfoList);
                return apexInfoList;
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                throw new RuntimeException(re);
            } catch (Exception e) {
                throw new PackageManagerException(1, "apexd verification failed : " + e.getMessage());
            }
        }

        @Override // com.android.server.pm.ApexManager
        void markStagedSessionReady(int sessionId) throws PackageManagerException {
            try {
                waitForApexService().markStagedSessionReady(sessionId);
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                throw new RuntimeException(re);
            } catch (Exception e) {
                throw new PackageManagerException(1, "Failed to mark apexd session as ready : " + e.getMessage());
            }
        }

        @Override // com.android.server.pm.ApexManager
        void markStagedSessionSuccessful(int sessionId) {
            try {
                waitForApexService().markStagedSessionSuccessful(sessionId);
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                throw new RuntimeException(re);
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, "Failed to mark session " + sessionId + " as successful", e);
            }
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApexSupported() {
            return true;
        }

        @Override // com.android.server.pm.ApexManager
        boolean revertActiveSessions() {
            try {
                waitForApexService().revertActiveSessions();
                return true;
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                return false;
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, e.getMessage(), e);
                return false;
            }
        }

        @Override // com.android.server.pm.ApexManager
        boolean abortStagedSession(int sessionId) throws PackageManagerException {
            try {
                waitForApexService().abortStagedSession(sessionId);
                return true;
            } catch (RemoteException re) {
                Slog.e(ApexManager.TAG, "Unable to contact apexservice", re);
                return false;
            } catch (Exception e) {
                throw new PackageManagerException(1, "Failed to abort staged session : " + e.getMessage());
            }
        }

        @Override // com.android.server.pm.ApexManager
        boolean uninstallApex(String apexPackagePath) {
            try {
                waitForApexService().unstagePackages(Collections.singletonList(apexPackagePath));
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        @Override // com.android.server.pm.ApexManager
        void registerApkInApex(AndroidPackage pkg) {
            synchronized (this.mLock) {
                for (ActiveApexInfo aai : this.mActiveApexInfosCache) {
                    if (pkg.getBaseCodePath().startsWith(aai.apexDirectory.getAbsolutePath() + File.separator)) {
                        List<String> apks = this.mApksInApex.get(aai.apexModuleName);
                        if (apks == null) {
                            apks = Lists.newArrayList();
                            this.mApksInApex.put(aai.apexModuleName, apks);
                        }
                        Slog.i(ApexManager.TAG, "Registering " + pkg.getPackageName() + " as apk-in-apex of " + aai.apexModuleName);
                        apks.add(pkg.getPackageName());
                    }
                }
            }
        }

        @Override // com.android.server.pm.ApexManager
        void reportErrorWithApkInApex(String scanDirPath) {
            synchronized (this.mLock) {
                for (ActiveApexInfo aai : this.mActiveApexInfosCache) {
                    if (scanDirPath.startsWith(aai.apexDirectory.getAbsolutePath())) {
                        this.mErrorWithApkInApex.add(aai.apexModuleName);
                    }
                }
            }
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApkInApexInstallSuccess(String apexPackageName) {
            synchronized (this.mLock) {
                boolean z = true;
                Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
                String moduleName = this.mPackageNameToApexModuleName.get(apexPackageName);
                if (moduleName == null) {
                    return false;
                }
                if (this.mErrorWithApkInApex.contains(moduleName)) {
                    z = false;
                }
                return z;
            }
        }

        @Override // com.android.server.pm.ApexManager
        List<String> getApksInApex(String apexPackageName) {
            synchronized (this.mLock) {
                Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
                String moduleName = this.mPackageNameToApexModuleName.get(apexPackageName);
                if (moduleName == null) {
                    return Collections.emptyList();
                }
                return this.mApksInApex.getOrDefault(moduleName, Collections.emptyList());
            }
        }

        @Override // com.android.server.pm.ApexManager
        public String getApexModuleNameForPackageName(String apexPackageName) {
            String str;
            synchronized (this.mLock) {
                Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
                str = this.mPackageNameToApexModuleName.get(apexPackageName);
            }
            return str;
        }

        @Override // com.android.server.pm.ApexManager
        public long snapshotCeData(int userId, int rollbackId, String apexPackageName) {
            String apexModuleName;
            synchronized (this.mLock) {
                Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
                apexModuleName = this.mPackageNameToApexModuleName.get(apexPackageName);
            }
            if (apexModuleName == null) {
                Slog.e(ApexManager.TAG, "Invalid apex package name: " + apexPackageName);
                return -1L;
            }
            try {
                return waitForApexService().snapshotCeData(userId, rollbackId, apexModuleName);
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, e.getMessage(), e);
                return -1L;
            }
        }

        @Override // com.android.server.pm.ApexManager
        public boolean restoreCeData(int userId, int rollbackId, String apexPackageName) {
            String apexModuleName;
            synchronized (this.mLock) {
                Preconditions.checkState(this.mPackageNameToApexModuleName != null, "APEX packages have not been scanned");
                apexModuleName = this.mPackageNameToApexModuleName.get(apexPackageName);
            }
            if (apexModuleName == null) {
                Slog.e(ApexManager.TAG, "Invalid apex package name: " + apexPackageName);
                return false;
            }
            try {
                waitForApexService().restoreCeData(userId, rollbackId, apexModuleName);
                return true;
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, e.getMessage(), e);
                return false;
            }
        }

        @Override // com.android.server.pm.ApexManager
        public boolean destroyDeSnapshots(int rollbackId) {
            try {
                waitForApexService().destroyDeSnapshots(rollbackId);
                return true;
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, e.getMessage(), e);
                return false;
            }
        }

        @Override // com.android.server.pm.ApexManager
        public boolean destroyCeSnapshotsNotSpecified(int userId, int[] retainRollbackIds) {
            try {
                waitForApexService().destroyCeSnapshotsNotSpecified(userId, retainRollbackIds);
                return true;
            } catch (Exception e) {
                Slog.e(ApexManager.TAG, e.getMessage(), e);
                return false;
            }
        }

        void dumpFromPackagesCache(List<PackageInfo> packagesCache, String packageName, IndentingPrintWriter ipw) {
            ipw.println();
            ipw.increaseIndent();
            int size = packagesCache.size();
            for (int i = 0; i < size; i++) {
                PackageInfo pi = packagesCache.get(i);
                if (packageName == null || packageName.equals(pi.packageName)) {
                    ipw.println(pi.packageName);
                    ipw.increaseIndent();
                    ipw.println("Version: " + pi.versionCode);
                    ipw.println("Path: " + pi.applicationInfo.sourceDir);
                    ipw.println("IsActive: " + isActive(pi));
                    ipw.println("IsFactory: " + isFactory(pi));
                    ipw.decreaseIndent();
                }
            }
            ipw.decreaseIndent();
            ipw.println();
        }

        @Override // com.android.server.pm.ApexManager
        void dump(PrintWriter pw, String packageName) {
            IndentingPrintWriter ipw = new IndentingPrintWriter(pw, "  ", 120);
            try {
                ipw.println();
                ipw.println("APEX session state:");
                ipw.increaseIndent();
                ApexSessionInfo[] sessions = waitForApexService().getSessions();
                for (ApexSessionInfo si : sessions) {
                    ipw.println("Session ID: " + si.sessionId);
                    ipw.increaseIndent();
                    if (si.isUnknown) {
                        ipw.println("State: UNKNOWN");
                    } else if (si.isVerified) {
                        ipw.println("State: VERIFIED");
                    } else if (si.isStaged) {
                        ipw.println("State: STAGED");
                    } else if (si.isActivated) {
                        ipw.println("State: ACTIVATED");
                    } else if (si.isActivationFailed) {
                        ipw.println("State: ACTIVATION FAILED");
                    } else if (si.isSuccess) {
                        ipw.println("State: SUCCESS");
                    } else if (si.isRevertInProgress) {
                        ipw.println("State: REVERT IN PROGRESS");
                    } else if (si.isReverted) {
                        ipw.println("State: REVERTED");
                    } else if (si.isRevertFailed) {
                        ipw.println("State: REVERT FAILED");
                    }
                    ipw.decreaseIndent();
                }
                ipw.decreaseIndent();
                ipw.println();
                if (this.mAllPackagesCache == null) {
                    ipw.println("APEX packages have not been scanned");
                    return;
                }
                ipw.println("Active APEX packages:");
                dumpFromPackagesCache(getActivePackages(), packageName, ipw);
                ipw.println("Inactive APEX packages:");
                dumpFromPackagesCache(getInactivePackages(), packageName, ipw);
                ipw.println("Factory APEX packages:");
                dumpFromPackagesCache(getFactoryPackages(), packageName, ipw);
            } catch (RemoteException e) {
                ipw.println("Couldn't communicate with apexd.");
            }
        }
    }

    private static final class ApexManagerFlattenedApex extends ApexManager {
        private ApexManagerFlattenedApex() {
        }

        @Override // com.android.server.pm.ApexManager
        public List<ActiveApexInfo> getActiveApexInfos() {
            File[] files;
            List<ActiveApexInfo> result = new ArrayList<>();
            File apexDir = Environment.getApexDirectory();
            String[] skipDirs = {"com.android.art.release", "com.android.art.debug"};
            if (apexDir.isDirectory() && (files = apexDir.listFiles()) != null) {
                for (File file : files) {
                    if (file.isDirectory() && !file.getName().contains("@")) {
                        for (String skipDir : skipDirs) {
                            if (file.getName().equals(skipDir)) {
                            }
                        }
                        result.add(new ActiveApexInfo(file, Environment.getRootDirectory()));
                    }
                }
            }
            return result;
        }

        @Override // com.android.server.pm.ApexManager
        void scanApexPackagesTraced(PackageParser2 packageParser, ExecutorService executorService) {
        }

        @Override // com.android.server.pm.ApexManager
        public PackageInfo getPackageInfo(String packageName, int flags) {
            return null;
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getActivePackages() {
            return Collections.emptyList();
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getFactoryPackages() {
            return Collections.emptyList();
        }

        @Override // com.android.server.pm.ApexManager
        List<PackageInfo> getInactivePackages() {
            return Collections.emptyList();
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApexPackage(String packageName) {
            return false;
        }

        @Override // com.android.server.pm.ApexManager
        public String getActiveApexPackageNameContainingPackage(AndroidPackage containedPackage) {
            Objects.requireNonNull(containedPackage);
            return null;
        }

        @Override // com.android.server.pm.ApexManager
        ApexSessionInfo getStagedSessionInfo(int sessionId) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        ApexInfoList submitStagedSession(ApexSessionParams params) throws PackageManagerException {
            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Device doesn't support updating APEX");
        }

        @Override // com.android.server.pm.ApexManager
        void markStagedSessionReady(int sessionId) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        void markStagedSessionSuccessful(int sessionId) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApexSupported() {
            return false;
        }

        @Override // com.android.server.pm.ApexManager
        boolean revertActiveSessions() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        boolean abortStagedSession(int sessionId) throws PackageManagerException {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        boolean uninstallApex(String apexPackagePath) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        void registerApkInApex(AndroidPackage pkg) {
        }

        @Override // com.android.server.pm.ApexManager
        void reportErrorWithApkInApex(String scanDirPath) {
        }

        @Override // com.android.server.pm.ApexManager
        boolean isApkInApexInstallSuccess(String apexPackageName) {
            return true;
        }

        @Override // com.android.server.pm.ApexManager
        List<String> getApksInApex(String apexPackageName) {
            return Collections.emptyList();
        }

        @Override // com.android.server.pm.ApexManager
        public String getApexModuleNameForPackageName(String apexPackageName) {
            return null;
        }

        @Override // com.android.server.pm.ApexManager
        public long snapshotCeData(int userId, int rollbackId, String apexPackageName) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        public boolean restoreCeData(int userId, int rollbackId, String apexPackageName) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        public boolean destroyDeSnapshots(int rollbackId) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.server.pm.ApexManager
        public boolean destroyCeSnapshotsNotSpecified(int userId, int[] retainRollbackIds) {
            return true;
        }

        @Override // com.android.server.pm.ApexManager
        void dump(PrintWriter pw, String packageName) {
        }
    }
}
