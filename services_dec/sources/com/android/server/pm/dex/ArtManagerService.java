package com.android.server.pm.dex;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.dex.ArtManager;
import android.content.pm.dex.ArtManagerInternal;
import android.content.pm.dex.DexMetadataHelper;
import android.content.pm.dex.IArtManager;
import android.content.pm.dex.ISnapshotRuntimeProfileCallback;
import android.content.pm.dex.PackageOptimizationInfo;
import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.system.Os;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.pm.Installer;
import com.android.server.pm.PackageManagerServiceCompilerMapping;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import dalvik.system.DexFile;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class ArtManagerService extends IArtManager.Stub {
    private static final String BOOT_IMAGE_ANDROID_PACKAGE = "android";
    private static final String BOOT_IMAGE_PROFILE_NAME = "android.prof";
    public static final String DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION = "-dm";
    private static final int TRON_COMPILATION_FILTER_ASSUMED_VERIFIED = 2;
    private static final int TRON_COMPILATION_FILTER_ASSUMED_VERIFIED_IORAP = 15;
    private static final int TRON_COMPILATION_FILTER_ERROR = 0;
    private static final int TRON_COMPILATION_FILTER_EVERYTHING = 11;
    private static final int TRON_COMPILATION_FILTER_EVERYTHING_IORAP = 24;
    private static final int TRON_COMPILATION_FILTER_EVERYTHING_PROFILE = 10;
    private static final int TRON_COMPILATION_FILTER_EVERYTHING_PROFILE_IORAP = 23;
    private static final int TRON_COMPILATION_FILTER_EXTRACT = 3;
    private static final int TRON_COMPILATION_FILTER_EXTRACT_IORAP = 16;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK = 12;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK = 13;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK_IORAP = 26;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_IORAP = 25;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK = 14;
    private static final int TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK_IORAP = 27;
    private static final int TRON_COMPILATION_FILTER_QUICKEN = 5;
    private static final int TRON_COMPILATION_FILTER_QUICKEN_IORAP = 18;
    private static final int TRON_COMPILATION_FILTER_SPACE = 7;
    private static final int TRON_COMPILATION_FILTER_SPACE_IORAP = 20;
    private static final int TRON_COMPILATION_FILTER_SPACE_PROFILE = 6;
    private static final int TRON_COMPILATION_FILTER_SPACE_PROFILE_IORAP = 19;
    private static final int TRON_COMPILATION_FILTER_SPEED = 9;
    private static final int TRON_COMPILATION_FILTER_SPEED_IORAP = 22;
    private static final int TRON_COMPILATION_FILTER_SPEED_PROFILE = 8;
    private static final int TRON_COMPILATION_FILTER_SPEED_PROFILE_IORAP = 21;
    private static final int TRON_COMPILATION_FILTER_UNKNOWN = 1;
    private static final int TRON_COMPILATION_FILTER_VERIFY = 4;
    private static final int TRON_COMPILATION_FILTER_VERIFY_IORAP = 17;
    private static final int TRON_COMPILATION_REASON_AB_OTA = 6;
    private static final int TRON_COMPILATION_REASON_BG_DEXOPT = 5;
    private static final int TRON_COMPILATION_REASON_BOOT = 3;
    private static final int TRON_COMPILATION_REASON_ERROR = 0;
    private static final int TRON_COMPILATION_REASON_FIRST_BOOT = 2;
    private static final int TRON_COMPILATION_REASON_INACTIVE = 7;
    private static final int TRON_COMPILATION_REASON_INSTALL = 4;
    private static final int TRON_COMPILATION_REASON_INSTALL_WITH_DEX_METADATA = 9;
    private static final int TRON_COMPILATION_REASON_SHARED = 8;
    private static final int TRON_COMPILATION_REASON_UNKNOWN = 1;
    private final Context mContext;
    private final Handler mHandler = new Handler(BackgroundThread.getHandler().getLooper());
    private final Object mInstallLock;
    private final Installer mInstaller;
    private final IPackageManager mPackageManager;
    private static final String TAG = "ArtManagerService";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    static {
        verifyTronLoggingConstants();
    }

    public ArtManagerService(Context context, IPackageManager pm, Installer installer, Object installLock) {
        this.mContext = context;
        this.mPackageManager = pm;
        this.mInstaller = installer;
        this.mInstallLock = installLock;
        LocalServices.addService(ArtManagerInternal.class, new ArtManagerInternalImpl());
    }

    private boolean checkAndroidPermissions(int callingUid, String callingPackage) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_RUNTIME_PROFILES", TAG);
        int iNoteOp = ((AppOpsManager) this.mContext.getSystemService(AppOpsManager.class)).noteOp(43, callingUid, callingPackage);
        if (iNoteOp == 0) {
            return true;
        }
        if (iNoteOp == 3) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.PACKAGE_USAGE_STATS", TAG);
            return true;
        }
        return false;
    }

    private boolean checkShellPermissions(int profileType, String packageName, int callingUid) {
        if (callingUid != 2000) {
            return false;
        }
        if (RoSystemProperties.DEBUGGABLE) {
            return true;
        }
        if (profileType == 1) {
            return false;
        }
        PackageInfo info = null;
        try {
            info = this.mPackageManager.getPackageInfo(packageName, 0, 0);
        } catch (RemoteException e) {
        }
        return info != null && (info.applicationInfo.flags & 2) == 2;
    }

    public void snapshotRuntimeProfile(int profileType, String packageName, String codePath, ISnapshotRuntimeProfileCallback callback, String callingPackage) {
        int callingUid = Binder.getCallingUid();
        if (!checkShellPermissions(profileType, packageName, callingUid) && !checkAndroidPermissions(callingUid, callingPackage)) {
            try {
                callback.onError(2);
                return;
            } catch (RemoteException e) {
                return;
            }
        }
        Objects.requireNonNull(callback);
        boolean bootImageProfile = profileType == 1;
        if (!bootImageProfile) {
            Preconditions.checkStringNotEmpty(codePath);
            Preconditions.checkStringNotEmpty(packageName);
        }
        if (!isRuntimeProfilingEnabled(profileType, callingPackage)) {
            throw new IllegalStateException("Runtime profiling is not enabled for " + profileType);
        }
        if (DEBUG) {
            Slog.d(TAG, "Requested snapshot for " + packageName + ":" + codePath);
        }
        if (bootImageProfile) {
            snapshotBootImageProfile(callback);
        } else {
            snapshotAppProfile(packageName, codePath, callback);
        }
    }

    private void snapshotAppProfile(String packageName, String codePath, ISnapshotRuntimeProfileCallback callback) {
        PackageInfo info = null;
        try {
            info = this.mPackageManager.getPackageInfo(packageName, 0, 0);
        } catch (RemoteException e) {
        }
        if (info == null) {
            postError(callback, packageName, 0);
            return;
        }
        boolean pathFound = info.applicationInfo.getBaseCodePath().equals(codePath);
        String splitName = null;
        String[] splitCodePaths = info.applicationInfo.getSplitCodePaths();
        if (!pathFound && splitCodePaths != null) {
            for (int i = splitCodePaths.length - 1; i >= 0; i--) {
                if (splitCodePaths[i].equals(codePath)) {
                    pathFound = true;
                    splitName = info.applicationInfo.splitNames[i];
                    break;
                }
            }
        }
        if (!pathFound) {
            postError(callback, packageName, 1);
            return;
        }
        int appId = UserHandle.getAppId(info.applicationInfo.uid);
        if (appId < 0) {
            postError(callback, packageName, 2);
            Slog.wtf(TAG, "AppId is -1 for package: " + packageName);
            return;
        }
        createProfileSnapshot(packageName, ArtManager.getProfileName(splitName), codePath, appId, callback);
        destroyProfileSnapshot(packageName, ArtManager.getProfileName(splitName));
    }

    private void createProfileSnapshot(String packageName, String profileName, String classpath, int appId, ISnapshotRuntimeProfileCallback callback) {
        synchronized (this.mInstallLock) {
            try {
                if (!this.mInstaller.createProfileSnapshot(appId, packageName, profileName, classpath)) {
                    postError(callback, packageName, 2);
                    return;
                }
                File snapshotProfile = ArtManager.getProfileSnapshotFileForName(packageName, profileName);
                try {
                    ParcelFileDescriptor fd = ParcelFileDescriptor.open(snapshotProfile, AudioFormat.EVRC);
                    if (fd == null || !fd.getFileDescriptor().valid()) {
                        postError(callback, packageName, 2);
                    } else {
                        postSuccess(packageName, fd, callback);
                    }
                } catch (FileNotFoundException e) {
                    Slog.w(TAG, "Could not open snapshot profile for " + packageName + ":" + snapshotProfile, e);
                    postError(callback, packageName, 2);
                }
            } catch (Installer.InstallerException e2) {
                postError(callback, packageName, 2);
            }
        }
    }

    private void destroyProfileSnapshot(String packageName, String profileName) {
        if (DEBUG) {
            Slog.d(TAG, "Destroying profile snapshot for" + packageName + ":" + profileName);
        }
        synchronized (this.mInstallLock) {
            try {
                this.mInstaller.destroyProfileSnapshot(packageName, profileName);
            } catch (Installer.InstallerException e) {
                Slog.e(TAG, "Failed to destroy profile snapshot for " + packageName + ":" + profileName, e);
            }
        }
    }

    public boolean isRuntimeProfilingEnabled(int profileType, String callingPackage) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 2000 && !checkAndroidPermissions(callingUid, callingPackage)) {
            return false;
        }
        if (profileType == 0) {
            return SystemProperties.getBoolean("dalvik.vm.usejitprofiles", false);
        }
        if (profileType == 1) {
            boolean profileBootClassPath = SystemProperties.getBoolean("persist.device_config.runtime_native_boot.profilebootclasspath", SystemProperties.getBoolean("dalvik.vm.profilebootclasspath", false));
            return (Build.IS_USERDEBUG || Build.IS_ENG) && SystemProperties.getBoolean("dalvik.vm.usejitprofiles", false) && profileBootClassPath;
        }
        throw new IllegalArgumentException("Invalid profile type:" + profileType);
    }

    private void snapshotBootImageProfile(ISnapshotRuntimeProfileCallback callback) {
        String classpath = String.join(":", Os.getenv("BOOTCLASSPATH"), Os.getenv("SYSTEMSERVERCLASSPATH"));
        createProfileSnapshot("android", BOOT_IMAGE_PROFILE_NAME, classpath, -1, callback);
        destroyProfileSnapshot("android", BOOT_IMAGE_PROFILE_NAME);
    }

    private void postError(final ISnapshotRuntimeProfileCallback callback, final String packageName, final int errCode) {
        if (DEBUG) {
            Slog.d(TAG, "Failed to snapshot profile for " + packageName + " with error: " + errCode);
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.dex.-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag
            @Override // java.lang.Runnable
            public final void run() {
                ArtManagerService.lambda$postError$0(callback, errCode, packageName);
            }
        });
    }

    static /* synthetic */ void lambda$postError$0(ISnapshotRuntimeProfileCallback callback, int errCode, String packageName) {
        try {
            callback.onError(errCode);
        } catch (Exception e) {
            Slog.w(TAG, "Failed to callback after profile snapshot for " + packageName, e);
        }
    }

    private void postSuccess(final String packageName, final ParcelFileDescriptor fd, final ISnapshotRuntimeProfileCallback callback) {
        if (DEBUG) {
            Slog.d(TAG, "Successfully snapshot profile for " + packageName);
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.dex.-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g
            @Override // java.lang.Runnable
            public final void run() {
                ArtManagerService.lambda$postSuccess$1(fd, callback, packageName);
            }
        });
    }

    static /* synthetic */ void lambda$postSuccess$1(ParcelFileDescriptor fd, ISnapshotRuntimeProfileCallback callback, String packageName) {
        try {
            try {
                if (fd.getFileDescriptor().valid()) {
                    callback.onSuccess(fd);
                } else {
                    Slog.wtf(TAG, "The snapshot FD became invalid before posting the result for " + packageName);
                    callback.onError(2);
                }
            } catch (Exception e) {
                Slog.w(TAG, "Failed to call onSuccess after profile snapshot for " + packageName, e);
            }
        } finally {
            IoUtils.closeQuietly(fd);
        }
    }

    public void prepareAppProfiles(AndroidPackage pkg, int user, boolean updateReferenceProfileContent) {
        String dexMetadataPath;
        int appId = UserHandle.getAppId(pkg.getUid());
        if (user < 0) {
            Slog.wtf(TAG, "Invalid user id: " + user);
            return;
        }
        if (appId < 0) {
            Slog.wtf(TAG, "Invalid app id: " + appId);
            return;
        }
        try {
            ArrayMap<String, String> codePathsProfileNames = getPackageProfileNames(pkg);
            for (int i = codePathsProfileNames.size() - 1; i >= 0; i--) {
                String codePath = codePathsProfileNames.keyAt(i);
                String profileName = codePathsProfileNames.valueAt(i);
                if (!updateReferenceProfileContent) {
                    dexMetadataPath = null;
                } else {
                    File dexMetadata = DexMetadataHelper.findDexMetadataForFile(new File(codePath));
                    String dexMetadataPath2 = dexMetadata == null ? null : dexMetadata.getAbsolutePath();
                    dexMetadataPath = dexMetadataPath2;
                }
                synchronized (this.mInstaller) {
                    try {
                        boolean result = this.mInstaller.prepareAppProfile(pkg.getPackageName(), user, appId, profileName, codePath, dexMetadataPath);
                        if (!result) {
                            Slog.e(TAG, "Failed to prepare profile for " + pkg.getPackageName() + ":" + codePath);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Installer.InstallerException e) {
            Slog.e(TAG, "Failed to prepare profile for " + pkg.getPackageName(), e);
        }
    }

    public void prepareAppProfiles(AndroidPackage pkg, int[] user, boolean updateReferenceProfileContent) {
        for (int i : user) {
            prepareAppProfiles(pkg, i, updateReferenceProfileContent);
        }
    }

    public void clearAppProfiles(AndroidPackage pkg) {
        try {
            ArrayMap<String, String> packageProfileNames = getPackageProfileNames(pkg);
            for (int i = packageProfileNames.size() - 1; i >= 0; i--) {
                String profileName = packageProfileNames.valueAt(i);
                this.mInstaller.clearAppProfiles(pkg.getPackageName(), profileName);
            }
        } catch (Installer.InstallerException e) {
            Slog.w(TAG, String.valueOf(e));
        }
    }

    public void dumpProfiles(AndroidPackage pkg) {
        int sharedGid = UserHandle.getSharedAppGid(pkg.getUid());
        try {
            ArrayMap<String, String> packageProfileNames = getPackageProfileNames(pkg);
            for (int i = packageProfileNames.size() - 1; i >= 0; i--) {
                String codePath = packageProfileNames.keyAt(i);
                String profileName = packageProfileNames.valueAt(i);
                synchronized (this.mInstallLock) {
                    try {
                        this.mInstaller.dumpProfiles(sharedGid, pkg.getPackageName(), profileName, codePath);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Installer.InstallerException e) {
            Slog.w(TAG, "Failed to dump profiles", e);
        }
    }

    public boolean compileLayouts(AndroidPackage pkg) {
        boolean zCompileLayouts;
        try {
            String packageName = pkg.getPackageName();
            String apkPath = pkg.getBaseCodePath();
            File dataDir = PackageInfoWithoutStateUtils.getDataDir(pkg, UserHandle.myUserId());
            String outDexFile = dataDir.getAbsolutePath() + "/code_cache/compiled_view.dex";
            if (!pkg.isPrivileged() && !pkg.isUseEmbeddedDex() && !pkg.isDefaultToDeviceProtectedStorage()) {
                Log.i("PackageManager", "Compiling layouts in " + packageName + " (" + apkPath + ") to " + outDexFile);
                long callingId = Binder.clearCallingIdentity();
                try {
                    synchronized (this.mInstallLock) {
                        zCompileLayouts = this.mInstaller.compileLayouts(apkPath, packageName, outDexFile, pkg.getUid());
                    }
                    Binder.restoreCallingIdentity(callingId);
                    return zCompileLayouts;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(callingId);
                    throw th;
                }
            }
            return false;
        } catch (Throwable e) {
            Log.e("PackageManager", "Failed to compile layouts", e);
            return false;
        }
    }

    private ArrayMap<String, String> getPackageProfileNames(AndroidPackage pkg) {
        ArrayMap<String, String> result = new ArrayMap<>();
        if (pkg.isHasCode()) {
            result.put(pkg.getBaseCodePath(), ArtManager.getProfileName((String) null));
        }
        String[] splitCodePaths = pkg.getSplitCodePaths();
        int[] splitFlags = pkg.getSplitFlags();
        String[] splitNames = pkg.getSplitNames();
        if (!ArrayUtils.isEmpty(splitCodePaths)) {
            for (int i = 0; i < splitCodePaths.length; i++) {
                if ((splitFlags[i] & 4) != 0) {
                    result.put(splitCodePaths[i], ArtManager.getProfileName(splitNames[i]));
                }
            }
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    public static int getCompilationReasonTronValue(String compilationReason) {
        switch (compilationReason) {
            case "error":
                return 0;
            case "first-boot":
                return 2;
            case "boot":
                return 3;
            case "install":
                return 4;
            case "bg-dexopt":
                return 5;
            case "ab-ota":
                return 6;
            case "inactive":
                return 7;
            case "shared":
                return 8;
            case "install-dm":
                return 9;
            case "unknown":
            default:
                return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:89:0x0182  */
    public static int getCompilationFilterTronValue(String compilationFilter) {
        byte b;
        switch (compilationFilter) {
            case "speed-profile-iorap":
                b = 21;
                break;
            case "assume-verified":
                b = 2;
                break;
            case "everything-profile":
                b = 10;
                break;
            case "verify-iorap":
                b = 17;
                break;
            case "extract-iorap":
                b = 16;
                break;
            case "extract":
                b = 3;
                break;
            case "speed-profile":
                b = 8;
                break;
            case "run-from-apk-fallback-iorap":
                b = 26;
                break;
            case "run-from-vdex-fallback":
                b = 14;
                break;
            case "verify":
                b = 4;
                break;
            case "space-profile-iorap":
                b = 19;
                break;
            case "unknown":
                b = 1;
                break;
            case "run-from-vdex-fallback-iorap":
                b = 27;
                break;
            case "assume-verified-iorap":
                b = 15;
                break;
            case "error":
                b = 0;
                break;
            case "space":
                b = 7;
                break;
            case "speed":
                b = 9;
                break;
            case "run-from-apk-iorap":
                b = 25;
                break;
            case "space-profile":
                b = 6;
                break;
            case "everything":
                b = 11;
                break;
            case "everything-iorap":
                b = 24;
                break;
            case "quicken":
                b = 5;
                break;
            case "everything-profile-iorap":
                b = 23;
                break;
            case "run-from-apk":
                b = 12;
                break;
            case "speed-iorap":
                b = 22;
                break;
            case "space-iorap":
                b = 20;
                break;
            case "quicken-iorap":
                b = 18;
                break;
            case "run-from-apk-fallback":
                b = 13;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return 0;
        }
        switch (b) {
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 15;
            case 16:
                return 16;
            case 17:
                return 17;
            case 18:
                return 18;
            case 19:
                return 19;
            case 20:
                return 20;
            case 21:
                return 21;
            case 22:
                return 22;
            case 23:
                return 23;
            case 24:
                return 24;
            case 25:
                return 25;
            case 26:
                return 26;
            case 27:
                return 27;
            default:
                return 1;
        }
    }

    private static void verifyTronLoggingConstants() {
        for (int i = 0; i < PackageManagerServiceCompilerMapping.REASON_STRINGS.length; i++) {
            String reason = PackageManagerServiceCompilerMapping.REASON_STRINGS[i];
            int value = getCompilationReasonTronValue(reason);
            if (value == 0 || value == 1) {
                throw new IllegalArgumentException("Compilation reason not configured for TRON logging: " + reason);
            }
        }
    }

    private class ArtManagerInternalImpl extends ArtManagerInternal {
        private static final String IORAP_DIR = "/data/misc/iorapd";
        private static final String TAG = "ArtManagerInternalImpl";

        private ArtManagerInternalImpl() {
        }

        public PackageOptimizationInfo getPackageOptimizationInfo(ApplicationInfo info, String abi, String activityName) {
            String compilationFilter;
            String compilationReason;
            try {
                String isa = VMRuntime.getInstructionSet(abi);
                DexFile.OptimizationInfo optInfo = DexFile.getDexFileOptimizationInfo(info.getBaseCodePath(), isa);
                compilationFilter = optInfo.getStatus();
                compilationReason = optInfo.getReason();
            } catch (FileNotFoundException e) {
                Slog.e(TAG, "Could not get optimizations status for " + info.getBaseCodePath(), e);
                compilationFilter = "error";
                compilationReason = "error";
            } catch (IllegalArgumentException e2) {
                Slog.wtf(TAG, "Requested optimization status for " + info.getBaseCodePath() + " due to an invalid abi " + abi, e2);
                compilationFilter = "error";
                compilationReason = "error";
            }
            if (checkIorapCompiledTrace(info.packageName, activityName, info.longVersionCode)) {
                compilationFilter = compilationFilter + "-iorap";
            }
            int compilationFilterTronValue = ArtManagerService.getCompilationFilterTronValue(compilationFilter);
            int compilationReasonTronValue = ArtManagerService.getCompilationReasonTronValue(compilationReason);
            return new PackageOptimizationInfo(compilationFilterTronValue, compilationReasonTronValue);
        }

        private boolean checkIorapCompiledTrace(String packageName, String activityName, long version) {
            Path tracePath = Paths.get(IORAP_DIR, packageName, Long.toString(version), activityName, "compiled_traces", "compiled_trace.pb");
            try {
                boolean exists = Files.exists(tracePath, new LinkOption[0]);
                if (ArtManagerService.DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(tracePath.toString());
                    sb.append(exists ? " exists" : " doesn't exist");
                    Log.d(TAG, sb.toString());
                }
                if (exists) {
                    long bytes = Files.size(tracePath);
                    if (ArtManagerService.DEBUG) {
                        Log.d(TAG, tracePath.toString() + " size is " + Long.toString(bytes));
                    }
                    return bytes > 0;
                }
                return exists;
            } catch (IOException e) {
                Log.d(TAG, e.getMessage());
                return false;
            }
        }
    }
}
