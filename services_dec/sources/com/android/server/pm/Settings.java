package com.android.server.pm;

import android.app.compat.ChangeIdStateCache;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.IntentFilterVerificationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageUserState;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.pm.SuspendDialogInfo;
import android.content.pm.UserInfo;
import android.content.pm.VerifierDeviceIdentity;
import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.content.pm.parsing.component.ParsedComponent;
import android.content.pm.parsing.component.ParsedIntentInfo;
import android.content.pm.parsing.component.ParsedMainComponent;
import android.content.pm.parsing.component.ParsedPermission;
import android.content.pm.parsing.component.ParsedProcess;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Message;
import android.os.PatternMatcher;
import android.os.PersistableBundle;
import android.os.SELinux;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.Xml;
import android.util.proto.ProtoOutputStream;
import com.android.internal.logging.EventLogTags;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.JournaledFile;
import com.android.internal.util.XmlUtils;
import com.android.permission.persistence.RuntimePermissionsPersistence;
import com.android.permission.persistence.RuntimePermissionsState;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.parsing.PackageInfoUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.permission.BasePermission;
import com.android.server.pm.permission.PermissionSettings;
import com.android.server.pm.permission.PermissionsState;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class Settings {
    private static final String ATTR_APP_LINK_GENERATION = "app-link-generation";
    private static final String ATTR_BLOCKED = "blocked";

    @Deprecated
    private static final String ATTR_BLOCK_UNINSTALL = "blockUninstall";
    private static final String ATTR_CE_DATA_INODE = "ceDataInode";
    private static final String ATTR_DATABASE_VERSION = "databaseVersion";
    private static final String ATTR_DISTRACTION_FLAGS = "distraction_flags";
    private static final String ATTR_DOMAIN_VERIFICATON_STATE = "domainVerificationStatus";
    private static final String ATTR_ENABLED = "enabled";
    private static final String ATTR_ENABLED_CALLER = "enabledCaller";
    private static final String ATTR_ENFORCEMENT = "enforcement";
    private static final String ATTR_FINGERPRINT = "fingerprint";
    private static final String ATTR_FLAGS = "flags";
    private static final String ATTR_GRANTED = "granted";
    private static final String ATTR_HARMFUL_APP_WARNING = "harmful-app-warning";
    private static final String ATTR_HIDDEN = "hidden";
    private static final String ATTR_INSTALLED = "inst";
    private static final String ATTR_INSTALL_REASON = "install-reason";
    private static final String ATTR_INSTANT_APP = "instant-app";
    public static final String ATTR_NAME = "name";
    private static final String ATTR_NOT_LAUNCHED = "nl";
    public static final String ATTR_PACKAGE = "package";
    private static final String ATTR_PACKAGE_NAME = "packageName";
    private static final String ATTR_SDK_VERSION = "sdkVersion";
    private static final String ATTR_STOPPED = "stopped";
    private static final String ATTR_SUSPENDED = "suspended";
    private static final String ATTR_SUSPENDING_PACKAGE = "suspending-package";

    @Deprecated
    private static final String ATTR_SUSPEND_DIALOG_MESSAGE = "suspend_dialog_message";
    private static final String ATTR_UNINSTALL_REASON = "uninstall-reason";
    private static final String ATTR_VALUE = "value";
    private static final String ATTR_VERSION = "version";
    private static final String ATTR_VIRTUAL_PRELOAD = "virtual-preload";
    private static final String ATTR_VOLUME_UUID = "volumeUuid";
    public static final int CURRENT_DATABASE_VERSION = 3;
    private static final boolean DEBUG_KERNEL = false;
    private static final boolean DEBUG_MU = false;
    private static final boolean DEBUG_PARSER = false;
    private static final boolean DEBUG_STOPPED = false;
    private static final String RUNTIME_PERMISSIONS_FILE_NAME = "runtime-permissions.xml";
    private static final String TAG = "PackageSettings";
    private static final String TAG_ALL_INTENT_FILTER_VERIFICATION = "all-intent-filter-verifications";
    private static final String TAG_BLOCK_UNINSTALL = "block-uninstall";
    private static final String TAG_BLOCK_UNINSTALL_PACKAGES = "block-uninstall-packages";
    private static final String TAG_CHILD_PACKAGE = "child-package";
    static final String TAG_CROSS_PROFILE_INTENT_FILTERS = "crossProfile-intent-filters";
    private static final String TAG_DEFAULT_APPS = "default-apps";
    private static final String TAG_DEFAULT_BROWSER = "default-browser";
    private static final String TAG_DEFAULT_DIALER = "default-dialer";
    private static final String TAG_DISABLED_COMPONENTS = "disabled-components";
    private static final String TAG_DOMAIN_VERIFICATION = "domain-verification";
    private static final String TAG_ENABLED_COMPONENTS = "enabled-components";
    public static final String TAG_ITEM = "item";
    private static final String TAG_MIME_GROUP = "mime-group";
    private static final String TAG_MIME_TYPE = "mime-type";
    private static final String TAG_PACKAGE = "pkg";
    private static final String TAG_PACKAGE_RESTRICTIONS = "package-restrictions";
    private static final String TAG_PERMISSIONS = "perms";
    private static final String TAG_PERSISTENT_PREFERRED_ACTIVITIES = "persistent-preferred-activities";
    private static final String TAG_READ_EXTERNAL_STORAGE = "read-external-storage";
    private static final String TAG_RUNTIME_PERMISSIONS = "runtime-permissions";
    private static final String TAG_SHARED_USER = "shared-user";

    @Deprecated
    private static final String TAG_SUSPENDED_APP_EXTRAS = "suspended-app-extras";

    @Deprecated
    private static final String TAG_SUSPENDED_DIALOG_INFO = "suspended-dialog-info";

    @Deprecated
    private static final String TAG_SUSPENDED_LAUNCHER_EXTRAS = "suspended-launcher-extras";
    private static final String TAG_SUSPEND_PARAMS = "suspend-params";
    private static final String TAG_USES_STATIC_LIB = "uses-static-lib";
    private static final String TAG_VERSION = "version";
    private final ArrayList<SettingBase> mAppIds;
    private final File mBackupSettingsFilename;
    private final File mBackupStoppedPackagesFilename;
    private final SparseArray<ArraySet<String>> mBlockUninstallPackages;
    private final File mCopySettingsFilename;
    final SparseArray<CrossProfileIntentResolver> mCrossProfileIntentResolvers;
    final SparseArray<String> mDefaultBrowserApp;
    private final ArrayMap<String, PackageSetting> mDisabledSysPackages;
    private final ArraySet<String> mInstallerPackages;
    private final ArrayMap<String, KernelPackageState> mKernelMapping;
    private final File mKernelMappingFilename;
    public final KeySetManagerService mKeySetManagerService;
    private final ArrayMap<Long, Integer> mKeySetRefs;
    private final Object mLock;
    final SparseIntArray mNextAppLinkGeneration;
    private final SparseArray<SettingBase> mOtherAppIds;
    private final File mPackageListFilename;
    final ArrayMap<String, PackageSetting> mPackages;
    private final ArrayList<Signature> mPastSignatures;
    private final ArrayList<PackageSetting> mPendingPackages;
    final PermissionSettings mPermissions;
    final SparseArray<PersistentPreferredIntentResolver> mPersistentPreferredActivities;
    final SparseArray<PreferredIntentResolver> mPreferredActivities;
    Boolean mReadExternalStorageEnforced;
    final StringBuilder mReadMessages;
    private final ArrayMap<String, String> mRenamedPackages;
    private final ArrayMap<String, IntentFilterVerificationInfo> mRestoredIntentFilterVerifications;
    private final RuntimePermissionPersistence mRuntimePermissionsPersistence;
    private final File mSettingsFilename;
    final ArrayMap<String, SharedUserSetting> mSharedUsers;
    private final File mStoppedPackagesFilename;
    private final File mSystemDir;
    private boolean mUsingPackagesXML;
    private VerifierDeviceIdentity mVerifierDeviceIdentity;
    private ArrayMap<String, VersionInfo> mVersion;
    private String[] overlayUIDs;
    private static int mFirstAvailableUid = 0;
    private static int PRE_M_APP_INFO_FLAG_HIDDEN = AudioFormat.OPUS;
    private static int PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE = AudioFormat.EVRC;
    private static int PRE_M_APP_INFO_FLAG_PRIVILEGED = 1073741824;
    static final Object[] FLAG_DUMP_SPEC = {1, "SYSTEM", 2, "DEBUGGABLE", 4, "HAS_CODE", 8, "PERSISTENT", 16, "FACTORY_TEST", 32, "ALLOW_TASK_REPARENTING", 64, "ALLOW_CLEAR_USER_DATA", 128, "UPDATED_SYSTEM_APP", 256, "TEST_ONLY", 16384, "VM_SAFE_MODE", 32768, "ALLOW_BACKUP", 65536, "KILL_AFTER_RESTORE", 131072, "RESTORE_ANY_VERSION", 262144, "EXTERNAL_STORAGE", 1048576, "LARGE_HEAP"};
    private static final Object[] PRIVATE_FLAG_DUMP_SPEC = {1024, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE", 4096, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION", 2048, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE", Integer.valueOf(AudioFormat.OPUS), "ALLOW_AUDIO_PLAYBACK_CAPTURE", Integer.valueOf(AudioFormat.APTX), "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE", 8192, "BACKUP_IN_FOREGROUND", 2, "CANT_SAVE_STATE", 32, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE", 64, "DIRECT_BOOT_AWARE", 16, "HAS_DOMAIN_URLS", 1, "HIDDEN", 128, "EPHEMERAL", 32768, "ISOLATED_SPLIT_LOADING", 131072, "OEM", 256, "PARTIALLY_DIRECT_BOOT_AWARE", 8, "PRIVILEGED", 512, "REQUIRED_FOR_SYSTEM_USER", 16384, "STATIC_SHARED_LIBRARY", 262144, "VENDOR", 524288, "PRODUCT", 2097152, "SYSTEM_EXT", 65536, "VIRTUAL_PRELOAD", 1073741824, "ODM", Integer.MIN_VALUE, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"};

    public static class DatabaseVersion {
        public static final int FIRST_VERSION = 1;
        public static final int SIGNATURE_END_ENTITY = 2;
        public static final int SIGNATURE_MALFORMED_RECOVER = 3;
    }

    private static final class KernelPackageState {
        int appId;
        int[] excludedUserIds;

        private KernelPackageState() {
        }
    }

    public static class VersionInfo {
        int databaseVersion;
        String fingerprint;
        int sdkVersion;

        public void forceCurrent() {
            this.sdkVersion = Build.VERSION.SDK_INT;
            this.databaseVersion = 3;
            this.fingerprint = Build.FINGERPRINT;
        }
    }

    public Settings(Map<String, PackageSetting> pkgSettings) {
        this.mUsingPackagesXML = false;
        this.overlayUIDs = null;
        this.mPackages = new ArrayMap<>();
        this.mInstallerPackages = new ArraySet<>();
        this.mKernelMapping = new ArrayMap<>();
        this.mDisabledSysPackages = new ArrayMap<>();
        this.mBlockUninstallPackages = new SparseArray<>();
        this.mRestoredIntentFilterVerifications = new ArrayMap<>();
        this.mVersion = new ArrayMap<>();
        this.mPreferredActivities = new SparseArray<>();
        this.mPersistentPreferredActivities = new SparseArray<>();
        this.mCrossProfileIntentResolvers = new SparseArray<>();
        this.mSharedUsers = new ArrayMap<>();
        this.mAppIds = new ArrayList<>();
        this.mOtherAppIds = new SparseArray<>();
        this.mPastSignatures = new ArrayList<>();
        this.mKeySetRefs = new ArrayMap<>();
        this.mRenamedPackages = new ArrayMap<>();
        this.mDefaultBrowserApp = new SparseArray<>();
        this.mNextAppLinkGeneration = new SparseIntArray();
        this.mReadMessages = new StringBuilder();
        this.mPendingPackages = new ArrayList<>();
        this.mKeySetManagerService = new KeySetManagerService(this.mPackages);
        this.mLock = new Object();
        this.mPackages.putAll(pkgSettings);
        this.mSystemDir = null;
        this.mPermissions = null;
        this.mRuntimePermissionsPersistence = null;
        this.mSettingsFilename = null;
        this.mCopySettingsFilename = null;
        this.mBackupSettingsFilename = null;
        this.mPackageListFilename = null;
        this.mStoppedPackagesFilename = null;
        this.mBackupStoppedPackagesFilename = null;
        this.mKernelMappingFilename = null;
    }

    Settings(File dataDir, PermissionSettings permission, Object lock) {
        this.mUsingPackagesXML = false;
        this.overlayUIDs = null;
        this.mPackages = new ArrayMap<>();
        this.mInstallerPackages = new ArraySet<>();
        this.mKernelMapping = new ArrayMap<>();
        this.mDisabledSysPackages = new ArrayMap<>();
        this.mBlockUninstallPackages = new SparseArray<>();
        this.mRestoredIntentFilterVerifications = new ArrayMap<>();
        this.mVersion = new ArrayMap<>();
        this.mPreferredActivities = new SparseArray<>();
        this.mPersistentPreferredActivities = new SparseArray<>();
        this.mCrossProfileIntentResolvers = new SparseArray<>();
        this.mSharedUsers = new ArrayMap<>();
        this.mAppIds = new ArrayList<>();
        this.mOtherAppIds = new SparseArray<>();
        this.mPastSignatures = new ArrayList<>();
        this.mKeySetRefs = new ArrayMap<>();
        this.mRenamedPackages = new ArrayMap<>();
        this.mDefaultBrowserApp = new SparseArray<>();
        this.mNextAppLinkGeneration = new SparseIntArray();
        this.mReadMessages = new StringBuilder();
        this.mPendingPackages = new ArrayList<>();
        this.mKeySetManagerService = new KeySetManagerService(this.mPackages);
        this.mLock = lock;
        this.mPermissions = permission;
        this.mRuntimePermissionsPersistence = new RuntimePermissionPersistence(lock);
        File file = new File(dataDir, "system");
        this.mSystemDir = file;
        file.mkdirs();
        FileUtils.setPermissions(this.mSystemDir.toString(), 509, -1, -1);
        this.mSettingsFilename = new File(this.mSystemDir, "packages.xml");
        this.mCopySettingsFilename = new File(this.mSystemDir, "packages-copy.xml");
        Log.d(TAG, "filelist length is " + this.mSystemDir.list().length);
        for (String file_name : this.mSystemDir.list()) {
            Log.d(TAG, "file is " + file_name);
        }
        String overlayProperty = SystemProperties.get("persist.sys.pm.overlay.uids", (String) null);
        Log.d(TAG, "persist.sys.pm.overlay.uids " + overlayProperty);
        if (!TextUtils.isEmpty(overlayProperty)) {
            String[] strArrSplit = overlayProperty.split(":");
            this.overlayUIDs = strArrSplit;
            mFirstAvailableUid = strArrSplit.length;
            for (int i = 0; i < mFirstAvailableUid; i++) {
                this.mAppIds.add(i, null);
            }
        }
        this.mBackupSettingsFilename = new File(this.mSystemDir, "packages-backup.xml");
        File file2 = new File(this.mSystemDir, "packages.list");
        this.mPackageListFilename = file2;
        FileUtils.setPermissions(file2, 416, 1000, 1032);
        File kernelDir = new File("/config/sdcardfs");
        this.mKernelMappingFilename = kernelDir.exists() ? kernelDir : null;
        this.mStoppedPackagesFilename = new File(this.mSystemDir, "packages-stopped.xml");
        this.mBackupStoppedPackagesFilename = new File(this.mSystemDir, "packages-stopped-backup.xml");
    }

    private static void invalidatePackageCache() {
        PackageManager.invalidatePackageInfoCache();
        ChangeIdStateCache.invalidate();
    }

    PackageSetting getPackageLPr(String pkgName) {
        return this.mPackages.get(pkgName);
    }

    String getRenamedPackageLPr(String pkgName) {
        return this.mRenamedPackages.get(pkgName);
    }

    String addRenamedPackageLPw(String pkgName, String origPkgName) {
        return this.mRenamedPackages.put(pkgName, origPkgName);
    }

    void removeRenamedPackageLPw(String pkgName) {
        this.mRenamedPackages.remove(pkgName);
    }

    public boolean canPropagatePermissionToInstantApp(String permName) {
        return this.mPermissions.canPropagatePermissionToInstantApp(permName);
    }

    SharedUserSetting getSharedUserLPw(String name, int pkgFlags, int pkgPrivateFlags, boolean create) throws PackageManagerException {
        SharedUserSetting s = this.mSharedUsers.get(name);
        if (s == null && create) {
            s = new SharedUserSetting(name, pkgFlags, pkgPrivateFlags);
            s.userId = acquireAndRegisterNewAppIdLPw(s);
            if (s.userId < 0) {
                throw new PackageManagerException(-4, "Creating shared user " + name + " failed");
            }
            Log.i("PackageManager", "New shared user " + name + ": id=" + s.userId);
            this.mSharedUsers.put(name, s);
        }
        return s;
    }

    Collection<SharedUserSetting> getAllSharedUsersLPw() {
        return this.mSharedUsers.values();
    }

    boolean disableSystemPackageLPw(String name, boolean replaced) {
        PackageSetting disabled;
        PackageSetting p = this.mPackages.get(name);
        if (p == null) {
            Log.w("PackageManager", "Package " + name + " is not an installed package");
            return false;
        }
        PackageSetting dp = this.mDisabledSysPackages.get(name);
        if (dp != null || p.pkg == null || !p.pkg.isSystem() || p.getPkgState().isUpdatedSystemApp()) {
            return false;
        }
        p.getPkgState().setUpdatedSystemApp(true);
        if (replaced) {
            disabled = new PackageSetting(p);
        } else {
            disabled = p;
        }
        this.mDisabledSysPackages.put(name, disabled);
        return true;
    }

    PackageSetting enableSystemPackageLPw(String name) {
        PackageSetting p = this.mDisabledSysPackages.get(name);
        if (p == null) {
            Log.w("PackageManager", "Package " + name + " is not disabled");
            return null;
        }
        p.getPkgState().setUpdatedSystemApp(false);
        PackageSetting ret = addPackageLPw(name, p.realName, p.codePath, p.resourcePath, p.legacyNativeLibraryPathString, p.primaryCpuAbiString, p.secondaryCpuAbiString, p.cpuAbiOverrideString, p.appId, p.versionCode, p.pkgFlags, p.pkgPrivateFlags, p.usesStaticLibraries, p.usesStaticLibrariesVersions, p.mimeGroups);
        if (ret != null) {
            ret.getPkgState().setUpdatedSystemApp(false);
        }
        this.mDisabledSysPackages.remove(name);
        return ret;
    }

    boolean isDisabledSystemPackageLPr(String name) {
        return this.mDisabledSysPackages.containsKey(name);
    }

    void removeDisabledSystemPackageLPw(String name) {
        this.mDisabledSysPackages.remove(name);
    }

    PackageSetting addPackageLPw(String name, String realName, File codePath, File resourcePath, String legacyNativeLibraryPathString, String primaryCpuAbiString, String secondaryCpuAbiString, String cpuAbiOverrideString, int uid, long vc, int pkgFlags, int pkgPrivateFlags, String[] usesStaticLibraries, long[] usesStaticLibraryNames, Map<String, ArraySet<String>> mimeGroups) {
        PackageSetting p = this.mPackages.get(name);
        if (p != null) {
            if (p.appId == uid) {
                return p;
            }
            PackageManagerService.reportSettingsProblem(6, "Adding duplicate package, keeping first: " + name);
            return null;
        }
        PackageSetting p2 = new PackageSetting(name, realName, codePath, resourcePath, legacyNativeLibraryPathString, primaryCpuAbiString, secondaryCpuAbiString, cpuAbiOverrideString, vc, pkgFlags, pkgPrivateFlags, 0, usesStaticLibraries, usesStaticLibraryNames, mimeGroups);
        p2.appId = uid;
        if (!registerExistingAppIdLPw(uid, p2, name)) {
            return null;
        }
        this.mPackages.put(name, p2);
        return p2;
    }

    SharedUserSetting addSharedUserLPw(String name, int uid, int pkgFlags, int pkgPrivateFlags) {
        SharedUserSetting s = this.mSharedUsers.get(name);
        if (s != null) {
            if (s.userId == uid) {
                return s;
            }
            PackageManagerService.reportSettingsProblem(6, "Adding duplicate shared user, keeping first: " + name);
            return null;
        }
        SharedUserSetting s2 = new SharedUserSetting(name, pkgFlags, pkgPrivateFlags);
        s2.userId = uid;
        if (!registerExistingAppIdLPw(uid, s2, name)) {
            return null;
        }
        this.mSharedUsers.put(name, s2);
        return s2;
    }

    void pruneSharedUsersLPw() {
        ArrayList<String> removeStage = new ArrayList<>();
        for (Map.Entry<String, SharedUserSetting> entry : this.mSharedUsers.entrySet()) {
            SharedUserSetting sus = entry.getValue();
            if (sus == null) {
                removeStage.add(entry.getKey());
            } else {
                Iterator<PackageSetting> iter = sus.packages.iterator();
                while (iter.hasNext()) {
                    PackageSetting ps = iter.next();
                    if (this.mPackages.get(ps.name) == null) {
                        iter.remove();
                    }
                }
                if (sus.packages.size() == 0) {
                    removeStage.add(entry.getKey());
                }
            }
        }
        for (int i = 0; i < removeStage.size(); i++) {
            this.mSharedUsers.remove(removeStage.get(i));
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00c8  */
    static PackageSetting createNewSetting(String pkgName, PackageSetting originalPkg, PackageSetting disabledPkg, String realPkgName, SharedUserSetting sharedUser, File codePath, File resourcePath, String legacyNativeLibraryPath, String primaryCpuAbi, String secondaryCpuAbi, long versionCode, int pkgFlags, int pkgPrivateFlags, UserHandle installUser, boolean allowInstall, boolean instantApp, boolean virtualPreload, UserManagerService userManager, String[] usesStaticLibraries, long[] usesStaticLibrariesVersions, Set<String> mimeGroupNames) {
        boolean installed;
        if (originalPkg != null) {
            PackageSetting pkgSetting = new PackageSetting(originalPkg, pkgName);
            pkgSetting.codePath = codePath;
            pkgSetting.legacyNativeLibraryPathString = legacyNativeLibraryPath;
            pkgSetting.pkgFlags = pkgFlags;
            pkgSetting.pkgPrivateFlags = pkgPrivateFlags;
            pkgSetting.primaryCpuAbiString = primaryCpuAbi;
            pkgSetting.resourcePath = resourcePath;
            pkgSetting.secondaryCpuAbiString = secondaryCpuAbi;
            pkgSetting.signatures = new PackageSignatures();
            pkgSetting.versionCode = versionCode;
            pkgSetting.usesStaticLibraries = usesStaticLibraries;
            pkgSetting.usesStaticLibrariesVersions = usesStaticLibrariesVersions;
            pkgSetting.setTimeStamp(codePath.lastModified());
            return pkgSetting;
        }
        PackageSetting pkgSetting2 = new PackageSetting(pkgName, realPkgName, codePath, resourcePath, legacyNativeLibraryPath, primaryCpuAbi, secondaryCpuAbi, null, versionCode, pkgFlags, pkgPrivateFlags, 0, usesStaticLibraries, usesStaticLibrariesVersions, createMimeGroups(mimeGroupNames));
        pkgSetting2.setTimeStamp(codePath.lastModified());
        pkgSetting2.sharedUser = sharedUser;
        if ((pkgFlags & 1) == 0) {
            List<UserInfo> users = getAllUsers(userManager);
            int installUserId = installUser != null ? installUser.getIdentifier() : 0;
            if (users != null && allowInstall) {
                for (UserInfo user : users) {
                    if (installUser == null || (installUserId == -1 && !isAdbInstallDisallowed(userManager, user.id))) {
                        installed = true;
                    } else if (installUserId != user.id) {
                        installed = false;
                    } else {
                        installed = true;
                    }
                    pkgSetting2.setUserState(user.id, 0L, 0, installed, true, true, false, 0, false, null, instantApp, virtualPreload, null, null, null, 0, 0, 0, 0, null);
                }
            }
        }
        if (sharedUser != null) {
            pkgSetting2.appId = sharedUser.userId;
            return pkgSetting2;
        }
        if (disabledPkg == null) {
            return pkgSetting2;
        }
        pkgSetting2.signatures = new PackageSignatures(disabledPkg.signatures);
        pkgSetting2.appId = disabledPkg.appId;
        pkgSetting2.getPermissionsState().copyFrom(disabledPkg.getPermissionsState());
        List<UserInfo> users2 = getAllUsers(userManager);
        if (users2 == null) {
            return pkgSetting2;
        }
        Iterator<UserInfo> it = users2.iterator();
        while (it.hasNext()) {
            int userId = it.next().id;
            pkgSetting2.setDisabledComponentsCopy(disabledPkg.getDisabledComponents(userId), userId);
            pkgSetting2.setEnabledComponentsCopy(disabledPkg.getEnabledComponents(userId), userId);
        }
        return pkgSetting2;
    }

    private static Map<String, ArraySet<String>> createMimeGroups(Set<String> mimeGroupNames) {
        if (mimeGroupNames == null) {
            return null;
        }
        return new KeySetToValueMap(mimeGroupNames, new ArraySet());
    }

    static void updatePackageSetting(PackageSetting pkgSetting, PackageSetting disabledPkg, SharedUserSetting sharedUser, File codePath, File resourcePath, String legacyNativeLibraryPath, String primaryCpuAbi, String secondaryCpuAbi, int pkgFlags, int pkgPrivateFlags, UserManagerService userManager, String[] usesStaticLibraries, long[] usesStaticLibrariesVersions, Set<String> mimeGroupNames) throws PackageManagerException {
        String str;
        List<UserInfo> allUserInfos;
        String pkgName = pkgSetting.name;
        if (pkgSetting.sharedUser != sharedUser) {
            StringBuilder sb = new StringBuilder();
            sb.append("Package ");
            sb.append(pkgName);
            sb.append(" shared user changed from ");
            sb.append(pkgSetting.sharedUser != null ? pkgSetting.sharedUser.name : "<nothing>");
            sb.append(" to ");
            sb.append(sharedUser != null ? sharedUser.name : "<nothing>");
            PackageManagerService.reportSettingsProblem(5, sb.toString());
            throw new PackageManagerException(-8, "Updating application package " + pkgName + " failed");
        }
        String str2 = " system";
        if (pkgSetting.codePath.equals(codePath)) {
            str = " system";
        } else {
            boolean isSystem = pkgSetting.isSystem();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Update");
            sb2.append(isSystem ? " system" : "");
            sb2.append(" package ");
            sb2.append(pkgName);
            sb2.append(" code path from ");
            sb2.append(pkgSetting.codePathString);
            sb2.append(" to ");
            sb2.append(codePath.toString());
            sb2.append("; Retain data and using new");
            Slog.i("PackageManager", sb2.toString());
            if (isSystem) {
                str = " system";
            } else {
                if ((pkgFlags & 1) == 0 || disabledPkg != null || (allUserInfos = getAllUsers(userManager)) == null) {
                    str = " system";
                } else {
                    for (UserInfo userInfo : allUserInfos) {
                        List<UserInfo> allUserInfos2 = allUserInfos;
                        pkgSetting.setInstalled(true, userInfo.id);
                        pkgSetting.setUninstallReason(0, userInfo.id);
                        isSystem = isSystem;
                        allUserInfos = allUserInfos2;
                        str2 = str2;
                    }
                    str = str2;
                }
                pkgSetting.legacyNativeLibraryPathString = legacyNativeLibraryPath;
            }
            pkgSetting.codePath = codePath;
            pkgSetting.codePathString = codePath.toString();
        }
        if (!pkgSetting.resourcePath.equals(resourcePath)) {
            boolean isSystem2 = pkgSetting.isSystem();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Update");
            sb3.append(isSystem2 ? str : "");
            sb3.append(" package ");
            sb3.append(pkgName);
            sb3.append(" resource path from ");
            sb3.append(pkgSetting.resourcePathString);
            sb3.append(" to ");
            sb3.append(resourcePath.toString());
            sb3.append("; Retain data and using new");
            Slog.i("PackageManager", sb3.toString());
            pkgSetting.resourcePath = resourcePath;
            pkgSetting.resourcePathString = resourcePath.toString();
        }
        pkgSetting.pkgFlags &= -2;
        pkgSetting.pkgPrivateFlags &= -1076756489;
        pkgSetting.pkgFlags |= pkgFlags & 1;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 8;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 131072;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 262144;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 524288;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 2097152;
        pkgSetting.pkgPrivateFlags |= pkgPrivateFlags & 1073741824;
        pkgSetting.primaryCpuAbiString = primaryCpuAbi;
        pkgSetting.secondaryCpuAbiString = secondaryCpuAbi;
        if (usesStaticLibraries == null || usesStaticLibrariesVersions == null || usesStaticLibraries.length != usesStaticLibrariesVersions.length) {
            pkgSetting.usesStaticLibraries = null;
            pkgSetting.usesStaticLibrariesVersions = null;
        } else {
            pkgSetting.usesStaticLibraries = usesStaticLibraries;
            pkgSetting.usesStaticLibrariesVersions = usesStaticLibrariesVersions;
        }
        pkgSetting.updateMimeGroups(mimeGroupNames);
    }

    boolean registerAppIdLPw(PackageSetting p) throws PackageManagerException {
        boolean createdNew;
        if (p.appId == 0) {
            if (this.overlayUIDs != null) {
                for (int i = 0; i < this.overlayUIDs.length; i++) {
                    if (p.name.equals(this.overlayUIDs[i])) {
                        this.mAppIds.set(i, p);
                        p.appId = i + 10000;
                        break;
                    }
                }
            }
            int i2 = p.appId;
            if (i2 == 0) {
                p.appId = acquireAndRegisterNewAppIdLPw(p);
            }
            createdNew = true;
        } else {
            createdNew = registerExistingAppIdLPw(p.appId, p, p.name);
        }
        if (p.appId < 0) {
            PackageManagerService.reportSettingsProblem(5, "Package " + p.name + " could not be assigned a valid UID");
            throw new PackageManagerException(-4, "Package " + p.name + " could not be assigned a valid UID");
        }
        return createdNew;
    }

    void writeUserRestrictionsLPw(PackageSetting newPackage, PackageSetting oldPackage) {
        List<UserInfo> allUsers;
        PackageUserState oldUserState;
        if (getPackageLPr(newPackage.name) == null || (allUsers = getAllUsers(UserManagerService.getInstance())) == null) {
            return;
        }
        for (UserInfo user : allUsers) {
            if (oldPackage == null) {
                oldUserState = PackageSettingBase.DEFAULT_USER_STATE;
            } else {
                oldUserState = oldPackage.readUserState(user.id);
            }
            if (!oldUserState.equals(newPackage.readUserState(user.id))) {
                writePackageRestrictionsLPr(user.id);
            }
        }
    }

    static boolean isAdbInstallDisallowed(UserManagerService userManager, int userId) {
        return userManager.hasUserRestriction("no_debugging_features", userId);
    }

    void insertPackageSettingLPw(PackageSetting p, AndroidPackage pkg) {
        if (p.signatures.mSigningDetails.signatures == null) {
            p.signatures.mSigningDetails = pkg.getSigningDetails();
        }
        if (p.sharedUser != null && p.sharedUser.signatures.mSigningDetails.signatures == null) {
            p.sharedUser.signatures.mSigningDetails = pkg.getSigningDetails();
        }
        addPackageSettingLPw(p, p.sharedUser);
    }

    private void addPackageSettingLPw(PackageSetting p, SharedUserSetting sharedUser) {
        this.mPackages.put(p.name, p);
        if (sharedUser != null) {
            if (p.sharedUser != null && p.sharedUser != sharedUser) {
                PackageManagerService.reportSettingsProblem(6, "Package " + p.name + " was user " + p.sharedUser + " but is now " + sharedUser + "; I am not changing its files so it will probably fail!");
                p.sharedUser.removePackage(p);
            } else if (p.appId != sharedUser.userId) {
                PackageManagerService.reportSettingsProblem(6, "Package " + p.name + " was user id " + p.appId + " but is now user " + sharedUser + " with id " + sharedUser.userId + "; I am not changing its files so it will probably fail!");
            }
            sharedUser.addPackage(p);
            p.sharedUser = sharedUser;
            p.appId = sharedUser.userId;
        }
        Object userIdPs = getSettingLPr(p.appId);
        if (sharedUser == null) {
            if (userIdPs != null && userIdPs != p) {
                replaceAppIdLPw(p.appId, p);
            }
        } else if (userIdPs != null && userIdPs != sharedUser) {
            replaceAppIdLPw(p.appId, sharedUser);
        }
        IntentFilterVerificationInfo ivi = this.mRestoredIntentFilterVerifications.get(p.name);
        if (ivi != null) {
            this.mRestoredIntentFilterVerifications.remove(p.name);
            p.setIntentFilterVerificationInfo(ivi);
        }
    }

    int updateSharedUserPermsLPw(PackageSetting deletedPs, int userId) {
        if (deletedPs == null || deletedPs.pkg == null) {
            Slog.i("PackageManager", "Trying to update info for null package. Just ignoring");
            return -10000;
        }
        if (deletedPs.sharedUser == null) {
            return -10000;
        }
        SharedUserSetting sus = deletedPs.sharedUser;
        int affectedUserId = -10000;
        for (String eachPerm : deletedPs.pkg.getRequestedPermissions()) {
            BasePermission bp = this.mPermissions.getPermission(eachPerm);
            if (bp != null) {
                boolean used = false;
                for (PackageSetting pkg : sus.packages) {
                    if (pkg.pkg != null && !pkg.pkg.getPackageName().equals(deletedPs.pkg.getPackageName()) && pkg.pkg.getRequestedPermissions().contains(eachPerm)) {
                        used = true;
                        break;
                    }
                }
                if (!used) {
                    PermissionsState permissionsState = sus.getPermissionsState();
                    PackageSetting disabledPs = getDisabledSystemPkgLPr(deletedPs.pkg.getPackageName());
                    if (disabledPs != null) {
                        boolean reqByDisabledSysPkg = false;
                        for (String permission : disabledPs.pkg.getRequestedPermissions()) {
                            if (permission.equals(eachPerm)) {
                                reqByDisabledSysPkg = true;
                                break;
                            }
                        }
                        if (reqByDisabledSysPkg) {
                        }
                    }
                    permissionsState.updatePermissionFlags(bp, userId, 261119, 0);
                    if (permissionsState.revokeInstallPermission(bp) == 1) {
                        affectedUserId = -1;
                    }
                    if (permissionsState.revokeRuntimePermission(bp, userId) == 1) {
                        if (affectedUserId == -10000) {
                            affectedUserId = userId;
                        } else if (affectedUserId != userId) {
                            affectedUserId = -1;
                        }
                    }
                }
            }
        }
        return affectedUserId;
    }

    int removePackageLPw(String name) {
        PackageSetting p = this.mPackages.get(name);
        if (p != null) {
            this.mPackages.remove(name);
            removeInstallerPackageStatus(name);
            if (p.sharedUser != null) {
                p.sharedUser.removePackage(p);
                if (p.sharedUser.packages.size() == 0) {
                    this.mSharedUsers.remove(p.sharedUser.name);
                    removeAppIdLPw(p.sharedUser.userId);
                    return p.sharedUser.userId;
                }
                return -1;
            }
            removeAppIdLPw(p.appId);
            return p.appId;
        }
        return -1;
    }

    private void removeInstallerPackageStatus(String packageName) {
        if (!this.mInstallerPackages.contains(packageName)) {
            return;
        }
        for (int i = 0; i < this.mPackages.size(); i++) {
            this.mPackages.valueAt(i).removeInstallerPackage(packageName);
        }
        this.mInstallerPackages.remove(packageName);
    }

    private boolean registerExistingAppIdLPw(int appId, SettingBase obj, Object name) {
        if (appId > 19999) {
            return false;
        }
        if (appId >= 10000) {
            int index = appId - 10000;
            for (int size = this.mAppIds.size(); index >= size; size++) {
                this.mAppIds.add(null);
            }
            if (this.mAppIds.get(index) != null) {
                PackageManagerService.reportSettingsProblem(6, "Adding duplicate app id: " + appId + " name=" + name);
                return false;
            }
            this.mAppIds.set(index, obj);
            return true;
        }
        if (this.mOtherAppIds.get(appId) != null) {
            PackageManagerService.reportSettingsProblem(6, "Adding duplicate shared id: " + appId + " name=" + name);
            return false;
        }
        this.mOtherAppIds.put(appId, obj);
        return true;
    }

    public SettingBase getSettingLPr(int appId) {
        if (appId >= 10000) {
            int size = this.mAppIds.size();
            int index = appId - 10000;
            if (index < size) {
                return this.mAppIds.get(index);
            }
            return null;
        }
        return this.mOtherAppIds.get(appId);
    }

    void removeAppIdLPw(int appId) {
        if (appId >= 10000) {
            int size = this.mAppIds.size();
            int index = appId - 10000;
            if (index < size) {
                this.mAppIds.set(index, null);
            }
        } else {
            this.mOtherAppIds.remove(appId);
        }
        setFirstAvailableUid(appId + 1);
    }

    private void replaceAppIdLPw(int appId, SettingBase obj) {
        if (appId >= 10000) {
            int size = this.mAppIds.size();
            int index = appId - 10000;
            if (index < size) {
                this.mAppIds.set(index, obj);
                return;
            }
            return;
        }
        this.mOtherAppIds.put(appId, obj);
    }

    PreferredIntentResolver editPreferredActivitiesLPw(int userId) {
        PreferredIntentResolver pir = this.mPreferredActivities.get(userId);
        if (pir == null) {
            PreferredIntentResolver pir2 = new PreferredIntentResolver();
            this.mPreferredActivities.put(userId, pir2);
            return pir2;
        }
        return pir;
    }

    PersistentPreferredIntentResolver editPersistentPreferredActivitiesLPw(int userId) {
        PersistentPreferredIntentResolver ppir = this.mPersistentPreferredActivities.get(userId);
        if (ppir == null) {
            PersistentPreferredIntentResolver ppir2 = new PersistentPreferredIntentResolver();
            this.mPersistentPreferredActivities.put(userId, ppir2);
            return ppir2;
        }
        return ppir;
    }

    CrossProfileIntentResolver editCrossProfileIntentResolverLPw(int userId) {
        CrossProfileIntentResolver cpir = this.mCrossProfileIntentResolvers.get(userId);
        if (cpir == null) {
            CrossProfileIntentResolver cpir2 = new CrossProfileIntentResolver();
            this.mCrossProfileIntentResolvers.put(userId, cpir2);
            return cpir2;
        }
        return cpir;
    }

    IntentFilterVerificationInfo getIntentFilterVerificationLPr(String packageName) {
        PackageSetting ps = this.mPackages.get(packageName);
        if (ps == null) {
            return null;
        }
        return ps.getIntentFilterVerificationInfo();
    }

    IntentFilterVerificationInfo createIntentFilterVerificationIfNeededLPw(String packageName, ArraySet<String> domains) {
        PackageSetting ps = this.mPackages.get(packageName);
        if (ps == null) {
            return null;
        }
        IntentFilterVerificationInfo ivi = ps.getIntentFilterVerificationInfo();
        if (ivi == null) {
            IntentFilterVerificationInfo ivi2 = new IntentFilterVerificationInfo(packageName, domains);
            ps.setIntentFilterVerificationInfo(ivi2);
            return ivi2;
        }
        ivi.setDomains(domains);
        return ivi;
    }

    int getIntentFilterVerificationStatusLPr(String packageName, int userId) {
        PackageSetting ps = this.mPackages.get(packageName);
        if (ps == null) {
            return 0;
        }
        return (int) (ps.getDomainVerificationStatusForUser(userId) >> 32);
    }

    boolean updateIntentFilterVerificationStatusLPw(String packageName, int status, int userId) {
        int alwaysGeneration;
        PackageSetting current = this.mPackages.get(packageName);
        if (current == null) {
            return false;
        }
        if (status == 2) {
            alwaysGeneration = this.mNextAppLinkGeneration.get(userId) + 1;
            this.mNextAppLinkGeneration.put(userId, alwaysGeneration);
        } else {
            alwaysGeneration = 0;
        }
        current.setDomainVerificationStatusForUser(status, alwaysGeneration, userId);
        return true;
    }

    List<IntentFilterVerificationInfo> getIntentFilterVerificationsLPr(String packageName) {
        if (packageName == null) {
            return Collections.emptyList();
        }
        ArrayList<IntentFilterVerificationInfo> result = new ArrayList<>();
        for (PackageSetting ps : this.mPackages.values()) {
            IntentFilterVerificationInfo ivi = ps.getIntentFilterVerificationInfo();
            if (ivi != null && !TextUtils.isEmpty(ivi.getPackageName()) && ivi.getPackageName().equalsIgnoreCase(packageName)) {
                result.add(ivi);
            }
        }
        return result;
    }

    boolean removeIntentFilterVerificationLPw(String packageName, int userId, boolean alsoResetStatus) {
        PackageSetting ps = this.mPackages.get(packageName);
        if (ps == null) {
            return false;
        }
        if (alsoResetStatus) {
            ps.clearDomainVerificationStatusForUser(userId);
        }
        ps.setIntentFilterVerificationInfo(null);
        return true;
    }

    boolean removeIntentFilterVerificationLPw(String packageName, int[] userIds) {
        boolean result = false;
        for (int userId : userIds) {
            result |= removeIntentFilterVerificationLPw(packageName, userId, true);
        }
        return result;
    }

    String removeDefaultBrowserPackageNameLPw(int userId) {
        if (userId == -1) {
            return null;
        }
        return (String) this.mDefaultBrowserApp.removeReturnOld(userId);
    }

    private File getUserPackagesStateFile(int userId) {
        File userDir = new File(new File(this.mSystemDir, DatabaseHelper.SoundModelContract.KEY_USERS), Integer.toString(userId));
        return new File(userDir, "package-restrictions.xml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getUserRuntimePermissionsFile(int userId) {
        File userDir = new File(new File(this.mSystemDir, DatabaseHelper.SoundModelContract.KEY_USERS), Integer.toString(userId));
        return new File(userDir, RUNTIME_PERMISSIONS_FILE_NAME);
    }

    private File getUserPackagesStateBackupFile(int userId) {
        return new File(Environment.getUserSystemDirectory(userId), "package-restrictions-backup.xml");
    }

    void writeAllUsersPackageRestrictionsLPr() {
        List<UserInfo> users = getAllUsers(UserManagerService.getInstance());
        if (users == null) {
            return;
        }
        for (UserInfo user : users) {
            writePackageRestrictionsLPr(user.id);
        }
    }

    void writeAllRuntimePermissionsLPr() {
        for (int userId : UserManagerService.getInstance().getUserIds()) {
            this.mRuntimePermissionsPersistence.writePermissionsForUserAsyncLPr(userId);
        }
    }

    boolean isPermissionUpgradeNeededLPr(int userId) {
        return this.mRuntimePermissionsPersistence.isPermissionUpgradeNeeded(userId);
    }

    void updateRuntimePermissionsFingerprintLPr(int userId) {
        this.mRuntimePermissionsPersistence.updateRuntimePermissionsFingerprintLPr(userId);
    }

    int getDefaultRuntimePermissionsVersionLPr(int userId) {
        return this.mRuntimePermissionsPersistence.getVersionLPr(userId);
    }

    void setDefaultRuntimePermissionsVersionLPr(int version, int userId) {
        this.mRuntimePermissionsPersistence.setVersionLPr(version, userId);
    }

    void setPermissionControllerVersion(long version) {
        this.mRuntimePermissionsPersistence.setPermissionControllerVersion(version);
    }

    public VersionInfo findOrCreateVersion(String volumeUuid) {
        VersionInfo ver = this.mVersion.get(volumeUuid);
        if (ver == null) {
            VersionInfo ver2 = new VersionInfo();
            this.mVersion.put(volumeUuid, ver2);
            return ver2;
        }
        return ver;
    }

    public VersionInfo getInternalVersion() {
        return this.mVersion.get(StorageManager.UUID_PRIVATE_INTERNAL);
    }

    public VersionInfo getExternalVersion() {
        return this.mVersion.get("primary_physical");
    }

    public void onVolumeForgotten(String fsUuid) {
        this.mVersion.remove(fsUuid);
    }

    void readPreferredActivitiesLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            PreferredActivity pa = new PreferredActivity(parser);
                            if (pa.mPref.getParseError() == null) {
                                PreferredIntentResolver resolver = editPreferredActivitiesLPw(userId);
                                ArrayList<PreferredActivity> pal = resolver.findFilters(pa);
                                if (pal == null || pal.size() == 0 || pa.mPref.mAlways) {
                                    resolver.addFilter(pa);
                                }
                            } else {
                                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <preferred-activity> " + pa.mPref.getParseError() + " at " + parser.getPositionDescription());
                            }
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <preferred-activities>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readPersistentPreferredActivitiesLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            PersistentPreferredActivity ppa = new PersistentPreferredActivity(parser);
                            editPersistentPreferredActivitiesLPw(userId).addFilter(ppa);
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <persistent-preferred-activities>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readCrossProfileIntentFiltersLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            CrossProfileIntentFilter cpif = new CrossProfileIntentFilter(parser);
                            editCrossProfileIntentResolverLPw(userId).addFilter(cpif);
                        } else {
                            String msg = "Unknown element under crossProfile-intent-filters: " + tagName;
                            PackageManagerService.reportSettingsProblem(5, msg);
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readDomainVerificationLPw(XmlPullParser parser, PackageSettingBase packageSetting) throws XmlPullParserException, IOException {
        IntentFilterVerificationInfo ivi = new IntentFilterVerificationInfo(parser);
        packageSetting.setIntentFilterVerificationInfo(ivi);
    }

    private void readRestoredIntentFilterVerifications(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_DOMAIN_VERIFICATION)) {
                            IntentFilterVerificationInfo ivi = new IntentFilterVerificationInfo(parser);
                            this.mRestoredIntentFilterVerifications.put(ivi.getPackageName(), ivi);
                        } else {
                            Slog.w(TAG, "Unknown element: " + tagName);
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void readDefaultAppsLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_DEFAULT_BROWSER)) {
                            String packageName = parser.getAttributeValue(null, ATTR_PACKAGE_NAME);
                            this.mDefaultBrowserApp.put(userId, packageName);
                        } else if (!tagName.equals(TAG_DEFAULT_DIALER)) {
                            String msg = "Unknown element under default-apps: " + parser.getName();
                            PackageManagerService.reportSettingsProblem(5, msg);
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void readBlockUninstallPackagesLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        ArraySet<String> packages = new ArraySet<>();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                String tagName = parser.getName();
                if (tagName.equals(TAG_BLOCK_UNINSTALL)) {
                    String packageName = parser.getAttributeValue(null, ATTR_PACKAGE_NAME);
                    packages.add(packageName);
                } else {
                    String msg = "Unknown element under block-uninstall-packages: " + parser.getName();
                    PackageManagerService.reportSettingsProblem(5, msg);
                    XmlUtils.skipCurrentTag(parser);
                }
            }
        }
        if (packages.isEmpty()) {
            this.mBlockUninstallPackages.remove(userId);
        } else {
            this.mBlockUninstallPackages.put(userId, packages);
        }
    }

    /* JADX WARN: Code duplicated, block: B:156:0x03e0 A[PHI: r54
  0x03e0: PHI (r54v15 'type' int) = 
  (r54v8 'type' int)
  (r54v9 'type' int)
  (r54v10 'type' int)
  (r54v11 'type' int)
  (r54v12 'type' int)
  (r54v13 'type' int)
  (r54v16 'type' int)
 binds: [B:154:0x03dc, B:151:0x03d0, B:148:0x03c4, B:145:0x03b7, B:142:0x03aa, B:139:0x039d, B:137:0x0391] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 8 */
    void readPackageRestrictionsLPr(int userId) {
        FileInputStream str;
        String str2;
        int i;
        String str3;
        String str4;
        File userPackagesStateFile;
        FileInputStream str5;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        int type;
        char c;
        int i2;
        File userPackagesStateFile2;
        int i3;
        char c2;
        String str6;
        int i4;
        char c3;
        int packageDepth;
        SuspendDialogInfo oldSuspendDialogInfo;
        String oldSuspendingPackage;
        int i5;
        String name;
        int i6;
        int packageDepth2;
        int type2;
        int packageDepth3;
        boolean installed;
        String str7;
        byte b;
        Settings settings = this;
        String str8 = ATTR_SUSPENDING_PACKAGE;
        String str9 = TAG_PACKAGE;
        FileInputStream str10 = null;
        File userPackagesStateFile3 = getUserPackagesStateFile(userId);
        File backupFile = getUserPackagesStateBackupFile(userId);
        String str11 = "PackageManager";
        int i7 = 4;
        if (backupFile.exists()) {
            try {
                str10 = new FileInputStream(backupFile);
                settings.mReadMessages.append("Reading from backup stopped packages file\n");
                PackageManagerService.reportSettingsProblem(4, "Need to read from backup stopped packages file");
                if (userPackagesStateFile3.exists()) {
                    Slog.w("PackageManager", "Cleaning up stopped packages file " + userPackagesStateFile3);
                    userPackagesStateFile3.delete();
                }
                str = str10;
            } catch (IOException e) {
                str = str10;
            }
        } else {
            str = null;
        }
        String str12 = "Error reading package manager stopped packages";
        int i8 = 6;
        String str13 = "Error reading: ";
        if (str == null) {
            try {
                if (userPackagesStateFile3.exists()) {
                    str2 = "Error reading: ";
                    str3 = "Error reading package manager stopped packages";
                    str4 = "PackageManager";
                    try {
                        userPackagesStateFile = userPackagesStateFile3;
                        try {
                            FileInputStream str14 = new FileInputStream(userPackagesStateFile);
                            str5 = str14;
                        } catch (IOException e2) {
                            e = e2;
                            str4 = str4;
                            settings.mReadMessages.append(str2 + e.toString());
                            PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                            Slog.wtf(str4, str3, e);
                            return;
                        } catch (XmlPullParserException e3) {
                            e = e3;
                            str3 = str3;
                            str4 = str4;
                            str2 = str2;
                            i = 6;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        str4 = str4;
                    } catch (XmlPullParserException e5) {
                        e = e5;
                        str3 = str3;
                        str4 = str4;
                        str2 = str2;
                        i = 6;
                    }
                } else {
                    try {
                        settings.mReadMessages.append("No stopped packages file found\n");
                        PackageManagerService.reportSettingsProblem(4, "No stopped packages file; assuming all started");
                        for (PackageSetting pkg : settings.mPackages.values()) {
                            str3 = str12;
                            String str15 = str11;
                            str2 = str13;
                            File backupFile2 = backupFile;
                            File userPackagesStateFile4 = userPackagesStateFile3;
                            try {
                                pkg.setUserState(userId, 0L, 0, true, false, false, false, 0, false, null, false, false, null, null, null, 0, 0, 0, 0, null);
                                str12 = str3;
                                str11 = str15;
                                str13 = str2;
                                backupFile = backupFile2;
                                userPackagesStateFile3 = userPackagesStateFile4;
                                i8 = 6;
                            } catch (IOException e6) {
                                e = e6;
                                str4 = str15;
                                settings.mReadMessages.append(str2 + e.toString());
                                PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                Slog.wtf(str4, str3, e);
                                return;
                            } catch (XmlPullParserException e7) {
                                e = e7;
                                str3 = str3;
                                str4 = str15;
                                str2 = str2;
                                i = 6;
                            }
                        }
                        return;
                    } catch (IOException e8) {
                        e = e8;
                        str2 = str13;
                        str3 = str12;
                        str4 = str11;
                    } catch (XmlPullParserException e9) {
                        e = e9;
                        str2 = str13;
                        i = i8;
                        str3 = str12;
                        str4 = str11;
                    }
                }
            } catch (IOException e10) {
                e = e10;
                str2 = "Error reading: ";
                str3 = "Error reading package manager stopped packages";
                str4 = "PackageManager";
            } catch (XmlPullParserException e11) {
                e = e11;
                str2 = "Error reading: ";
                i = 6;
                str3 = "Error reading package manager stopped packages";
                str4 = "PackageManager";
            }
        } else {
            str2 = "Error reading: ";
            str3 = "Error reading package manager stopped packages";
            str4 = "PackageManager";
            userPackagesStateFile = userPackagesStateFile3;
            str5 = str;
        }
        try {
            try {
                XmlPullParser parser = Xml.newPullParser();
                try {
                    parser.setInput(str5, StandardCharsets.UTF_8.name());
                    do {
                        type = parser.next();
                        c = 2;
                        i2 = 1;
                        if (type == 2) {
                            break;
                        }
                    } while (type != 1);
                    char c4 = 5;
                    try {
                        if (type != 2) {
                            settings.mReadMessages.append("No start tag found in package restrictions file\n");
                            PackageManagerService.reportSettingsProblem(5, "No start tag found in package manager stopped packages");
                            return;
                        }
                        int outerDepth = parser.getDepth();
                        int maxAppLinkGeneration = 0;
                        while (true) {
                            int type3 = parser.next();
                            if (type3 != i2 && (type3 != 3 || parser.getDepth() > outerDepth)) {
                                if (type3 == 3 || type3 == i7) {
                                    maxAppLinkGeneration = maxAppLinkGeneration;
                                    str5 = str5;
                                    userPackagesStateFile = userPackagesStateFile;
                                    outerDepth = outerDepth;
                                    c4 = c4;
                                    c = c;
                                    i2 = i2;
                                    str9 = str9;
                                    str8 = str8;
                                    str4 = str4;
                                    i7 = i7;
                                } else {
                                    String tagName = parser.getName();
                                    if (tagName.equals(str9)) {
                                        try {
                                            String name2 = parser.getAttributeValue(null, ATTR_NAME);
                                            PackageSetting ps = settings.mPackages.get(name2);
                                            if (ps == null) {
                                                String str16 = str4;
                                                try {
                                                    Slog.w(str16, "No package known for stopped package " + name2);
                                                    XmlUtils.skipCurrentTag(parser);
                                                    str4 = str16;
                                                    i7 = 4;
                                                    i2 = 1;
                                                } catch (IOException e12) {
                                                    e = e12;
                                                    str = str5;
                                                    str4 = str16;
                                                    settings.mReadMessages.append(str2 + e.toString());
                                                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                    Slog.wtf(str4, str3, e);
                                                    return;
                                                } catch (XmlPullParserException e13) {
                                                    e = e13;
                                                    str = str5;
                                                    str4 = str16;
                                                    str3 = str3;
                                                    str2 = str2;
                                                    i = 6;
                                                }
                                            } else {
                                                String str17 = str4;
                                                try {
                                                    String str18 = str9;
                                                    long ceDataInode = XmlUtils.readLongAttribute(parser, ATTR_CE_DATA_INODE, 0L);
                                                    boolean installed2 = XmlUtils.readBooleanAttribute(parser, ATTR_INSTALLED, true);
                                                    try {
                                                        boolean stopped = XmlUtils.readBooleanAttribute(parser, ATTR_STOPPED, false);
                                                        boolean notLaunched = XmlUtils.readBooleanAttribute(parser, ATTR_NOT_LAUNCHED, false);
                                                        int maxAppLinkGeneration2 = maxAppLinkGeneration;
                                                        String blockedStr = parser.getAttributeValue(null, ATTR_BLOCKED);
                                                        boolean hidden = blockedStr == null ? false : Boolean.parseBoolean(blockedStr);
                                                        String hiddenStr = parser.getAttributeValue(null, ATTR_HIDDEN);
                                                        boolean hidden2 = hiddenStr == null ? hidden : Boolean.parseBoolean(hiddenStr);
                                                        int distractionFlags = XmlUtils.readIntAttribute(parser, ATTR_DISTRACTION_FLAGS, 0);
                                                        boolean suspended = XmlUtils.readBooleanAttribute(parser, ATTR_SUSPENDED, false);
                                                        String oldSuspendingPackage2 = parser.getAttributeValue(null, str8);
                                                        String dialogMessage = parser.getAttributeValue(null, ATTR_SUSPEND_DIALOG_MESSAGE);
                                                        if (suspended && oldSuspendingPackage2 == null) {
                                                            oldSuspendingPackage2 = PackageManagerService.PLATFORM_PACKAGE_NAME;
                                                        }
                                                        FileInputStream str19 = str5;
                                                        try {
                                                            boolean blockUninstall = XmlUtils.readBooleanAttribute(parser, ATTR_BLOCK_UNINSTALL, false);
                                                            boolean instantApp = XmlUtils.readBooleanAttribute(parser, ATTR_INSTANT_APP, false);
                                                            File userPackagesStateFile5 = userPackagesStateFile;
                                                            try {
                                                                boolean virtualPreload = XmlUtils.readBooleanAttribute(parser, ATTR_VIRTUAL_PRELOAD, false);
                                                                String oldSuspendingPackage3 = oldSuspendingPackage2;
                                                                int enabled = XmlUtils.readIntAttribute(parser, ATTR_ENABLED, 0);
                                                                String enabledCaller = parser.getAttributeValue(null, ATTR_ENABLED_CALLER);
                                                                String harmfulAppWarning = parser.getAttributeValue(null, ATTR_HARMFUL_APP_WARNING);
                                                                int verifState = XmlUtils.readIntAttribute(parser, ATTR_DOMAIN_VERIFICATON_STATE, 0);
                                                                int linkGeneration = XmlUtils.readIntAttribute(parser, ATTR_APP_LINK_GENERATION, 0);
                                                                int maxAppLinkGeneration3 = linkGeneration > maxAppLinkGeneration2 ? linkGeneration : maxAppLinkGeneration2;
                                                                int installReason = XmlUtils.readIntAttribute(parser, ATTR_INSTALL_REASON, 0);
                                                                int uninstallReason = XmlUtils.readIntAttribute(parser, ATTR_UNINSTALL_REASON, 0);
                                                                ArraySet<String> disabledComponents = null;
                                                                SuspendDialogInfo oldSuspendDialogInfo2 = null;
                                                                int packageDepth4 = parser.getDepth();
                                                                ArrayMap<String, PackageUserState.SuspendParams> suspendParamsMap = null;
                                                                ArraySet<String> enabledComponents = null;
                                                                PersistableBundle suspendedAppExtras = null;
                                                                PersistableBundle suspendedLauncherExtras = null;
                                                                while (true) {
                                                                    int type4 = parser.next();
                                                                    enabled = enabled;
                                                                    if (type4 != 1) {
                                                                        if (type4 == 3) {
                                                                            try {
                                                                                packageDepth2 = packageDepth4;
                                                                                if (parser.getDepth() <= packageDepth2) {
                                                                                    packageDepth = packageDepth2;
                                                                                }
                                                                            } catch (IOException e14) {
                                                                                e = e14;
                                                                                str4 = str17;
                                                                                str = str19;
                                                                                settings.mReadMessages.append(str2 + e.toString());
                                                                                PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                                                Slog.wtf(str4, str3, e);
                                                                                return;
                                                                            } catch (XmlPullParserException e15) {
                                                                                e = e15;
                                                                                str3 = str3;
                                                                                str2 = str2;
                                                                                str4 = str17;
                                                                                str = str19;
                                                                                i = 6;
                                                                            }
                                                                        } else {
                                                                            packageDepth2 = packageDepth4;
                                                                        }
                                                                        if (type4 == 3) {
                                                                            type2 = type4;
                                                                            packageDepth3 = packageDepth2;
                                                                            installed = installed2;
                                                                            str7 = str18;
                                                                        } else if (type4 == 4) {
                                                                            type2 = type4;
                                                                            packageDepth3 = packageDepth2;
                                                                            installed = installed2;
                                                                            str7 = str18;
                                                                        } else {
                                                                            String name3 = parser.getName();
                                                                            switch (name3.hashCode()) {
                                                                                case -2027581689:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_DISABLED_COMPONENTS)) {
                                                                                        b = 1;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                case -1963032286:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_ENABLED_COMPONENTS)) {
                                                                                        b = 0;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                case -1592287551:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_SUSPENDED_APP_EXTRAS)) {
                                                                                        b = 2;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                case -1422791362:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_SUSPENDED_LAUNCHER_EXTRAS)) {
                                                                                        b = 3;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                case -858175433:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_SUSPEND_PARAMS)) {
                                                                                        b = 5;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                case 1660896545:
                                                                                    type2 = type4;
                                                                                    if (name3.equals(TAG_SUSPENDED_DIALOG_INFO)) {
                                                                                        b = 4;
                                                                                    } else {
                                                                                        b = -1;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    type2 = type4;
                                                                                    b = -1;
                                                                                    break;
                                                                            }
                                                                            if (b == 0) {
                                                                                packageDepth3 = packageDepth2;
                                                                                installed = installed2;
                                                                                str7 = str18;
                                                                                ArraySet<String> enabledComponents2 = settings.readComponentsLPr(parser);
                                                                                enabledComponents = enabledComponents2;
                                                                            } else if (b == 1) {
                                                                                packageDepth3 = packageDepth2;
                                                                                installed = installed2;
                                                                                str7 = str18;
                                                                                ArraySet<String> disabledComponents2 = settings.readComponentsLPr(parser);
                                                                                disabledComponents = disabledComponents2;
                                                                            } else if (b == 2) {
                                                                                packageDepth3 = packageDepth2;
                                                                                installed = installed2;
                                                                                str7 = str18;
                                                                                PersistableBundle suspendedAppExtras2 = PersistableBundle.restoreFromXml(parser);
                                                                                suspendedAppExtras = suspendedAppExtras2;
                                                                            } else if (b != 3) {
                                                                                packageDepth3 = packageDepth2;
                                                                                if (b != 4) {
                                                                                    installed = installed2;
                                                                                    if (b != 5) {
                                                                                        StringBuilder sb = new StringBuilder();
                                                                                        sb.append("Unknown tag ");
                                                                                        sb.append(parser.getName());
                                                                                        sb.append(" under tag ");
                                                                                        str7 = str18;
                                                                                        sb.append(str7);
                                                                                        Slog.wtf(TAG, sb.toString());
                                                                                    } else {
                                                                                        str7 = str18;
                                                                                        String suspendingPackage = parser.getAttributeValue(null, str8);
                                                                                        if (suspendingPackage == null) {
                                                                                            Slog.wtf(TAG, "No suspendingPackage found inside tag suspend-params");
                                                                                        } else {
                                                                                            ArrayMap<String, PackageUserState.SuspendParams> suspendParamsMap2 = suspendParamsMap == null ? new ArrayMap<>() : suspendParamsMap;
                                                                                            suspendParamsMap2.put(suspendingPackage, PackageUserState.SuspendParams.restoreFromXml(parser));
                                                                                            suspendParamsMap = suspendParamsMap2;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    installed = installed2;
                                                                                    str7 = str18;
                                                                                    SuspendDialogInfo oldSuspendDialogInfo3 = SuspendDialogInfo.restoreFromXml(parser);
                                                                                    oldSuspendDialogInfo2 = oldSuspendDialogInfo3;
                                                                                }
                                                                            } else {
                                                                                packageDepth3 = packageDepth2;
                                                                                installed = installed2;
                                                                                str7 = str18;
                                                                                PersistableBundle suspendedLauncherExtras2 = PersistableBundle.restoreFromXml(parser);
                                                                                suspendedLauncherExtras = suspendedLauncherExtras2;
                                                                            }
                                                                            str18 = str7;
                                                                            installed2 = installed;
                                                                            packageDepth4 = packageDepth3;
                                                                        }
                                                                        str18 = str7;
                                                                        installed2 = installed;
                                                                        packageDepth4 = packageDepth3;
                                                                    } else {
                                                                        packageDepth = packageDepth4;
                                                                    }
                                                                }
                                                                if (oldSuspendDialogInfo2 != null || TextUtils.isEmpty(dialogMessage)) {
                                                                    oldSuspendDialogInfo = oldSuspendDialogInfo2;
                                                                } else {
                                                                    SuspendDialogInfo oldSuspendDialogInfo4 = new SuspendDialogInfo.Builder().setMessage(dialogMessage).build();
                                                                    oldSuspendDialogInfo = oldSuspendDialogInfo4;
                                                                }
                                                                if (suspended && suspendParamsMap == null) {
                                                                    PackageUserState.SuspendParams suspendParams = PackageUserState.SuspendParams.getInstanceOrNull(oldSuspendDialogInfo, suspendedAppExtras, suspendedLauncherExtras);
                                                                    ArrayMap<String, PackageUserState.SuspendParams> suspendParamsMap3 = new ArrayMap<>();
                                                                    oldSuspendingPackage = oldSuspendingPackage3;
                                                                    suspendParamsMap3.put(oldSuspendingPackage, suspendParams);
                                                                    suspendParamsMap = suspendParamsMap3;
                                                                } else {
                                                                    oldSuspendingPackage = oldSuspendingPackage3;
                                                                }
                                                                if (blockUninstall) {
                                                                    i5 = userId;
                                                                    name = name2;
                                                                    i6 = 1;
                                                                    try {
                                                                        settings.setBlockUninstallLPw(i5, name, true);
                                                                    } catch (IOException e16) {
                                                                        e = e16;
                                                                        str4 = str17;
                                                                        str = str19;
                                                                        settings.mReadMessages.append(str2 + e.toString());
                                                                        PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                                        Slog.wtf(str4, str3, e);
                                                                        return;
                                                                    } catch (XmlPullParserException e17) {
                                                                        e = e17;
                                                                        str3 = str3;
                                                                        str2 = str2;
                                                                        str4 = str17;
                                                                        str = str19;
                                                                        i = 6;
                                                                    }
                                                                } else {
                                                                    i5 = userId;
                                                                    name = name2;
                                                                    i6 = 1;
                                                                }
                                                                str5 = str19;
                                                                c3 = 2;
                                                                i3 = 4;
                                                                userPackagesStateFile2 = userPackagesStateFile5;
                                                                str6 = str18;
                                                                c2 = 5;
                                                                i4 = i6;
                                                                try {
                                                                    ps.setUserState(userId, ceDataInode, enabled, installed2, stopped, notLaunched, hidden2, distractionFlags, suspended, suspendParamsMap, instantApp, virtualPreload, enabledCaller, enabledComponents, disabledComponents, verifState, linkGeneration, installReason, uninstallReason, harmfulAppWarning);
                                                                    str4 = str17;
                                                                    maxAppLinkGeneration = maxAppLinkGeneration3;
                                                                    parser = parser;
                                                                    settings = this;
                                                                    str4 = str4;
                                                                    str5 = str5;
                                                                    userPackagesStateFile = userPackagesStateFile2;
                                                                    outerDepth = outerDepth;
                                                                    c4 = c2;
                                                                    c = c3;
                                                                    i2 = i4;
                                                                    i7 = i3;
                                                                    str9 = str6;
                                                                    str8 = str8;
                                                                } catch (IOException e18) {
                                                                    e = e18;
                                                                    str = str5;
                                                                    str4 = str17;
                                                                    settings = this;
                                                                    settings.mReadMessages.append(str2 + e.toString());
                                                                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                                    Slog.wtf(str4, str3, e);
                                                                    return;
                                                                } catch (XmlPullParserException e19) {
                                                                    e = e19;
                                                                    str3 = str3;
                                                                    str2 = str2;
                                                                    str = str5;
                                                                    str4 = str17;
                                                                    i = 6;
                                                                    settings = this;
                                                                }
                                                            } catch (IOException e20) {
                                                                e = e20;
                                                                settings = this;
                                                                str = str19;
                                                                str4 = str17;
                                                            } catch (XmlPullParserException e21) {
                                                                e = e21;
                                                                settings = this;
                                                                str3 = str3;
                                                                str2 = str2;
                                                                str = str19;
                                                                str4 = str17;
                                                                i = 6;
                                                            }
                                                        } catch (IOException e22) {
                                                            e = e22;
                                                            settings = this;
                                                            str = str19;
                                                            str4 = str17;
                                                        } catch (XmlPullParserException e23) {
                                                            e = e23;
                                                            settings = this;
                                                            str3 = str3;
                                                            str2 = str2;
                                                            str = str19;
                                                            str4 = str17;
                                                            i = 6;
                                                        }
                                                    } catch (IOException e24) {
                                                        e = e24;
                                                        settings = this;
                                                        str = str5;
                                                        str4 = str17;
                                                    } catch (XmlPullParserException e25) {
                                                        e = e25;
                                                        FileInputStream fileInputStream3 = str5;
                                                        settings = this;
                                                        str3 = str3;
                                                        str = fileInputStream3;
                                                        str4 = str17;
                                                        i = 6;
                                                    }
                                                } catch (IOException e26) {
                                                    e = e26;
                                                    fileInputStream = str5;
                                                    settings = this;
                                                    str4 = str17;
                                                    str = fileInputStream;
                                                    settings.mReadMessages.append(str2 + e.toString());
                                                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                    Slog.wtf(str4, str3, e);
                                                    return;
                                                } catch (XmlPullParserException e27) {
                                                    e = e27;
                                                    fileInputStream2 = str5;
                                                    settings = this;
                                                    str4 = str17;
                                                    str = fileInputStream2;
                                                }
                                            }
                                        } catch (IOException e28) {
                                            e = e28;
                                            fileInputStream = str5;
                                            settings = this;
                                            str4 = str4;
                                            str = fileInputStream;
                                            settings.mReadMessages.append(str2 + e.toString());
                                            PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                            Slog.wtf(str4, str3, e);
                                            return;
                                        } catch (XmlPullParserException e29) {
                                            e = e29;
                                            fileInputStream2 = str5;
                                            settings = this;
                                            str4 = str4;
                                            str = fileInputStream2;
                                        }
                                    } else {
                                        XmlPullParser parser2 = parser;
                                        str5 = str5;
                                        userPackagesStateFile2 = userPackagesStateFile;
                                        i3 = i7;
                                        int maxAppLinkGeneration4 = maxAppLinkGeneration;
                                        c2 = c4;
                                        str6 = str9;
                                        i4 = i2;
                                        c3 = c;
                                        String str20 = str4;
                                        try {
                                            if (tagName.equals("preferred-activities")) {
                                                parser = parser2;
                                                settings = this;
                                                try {
                                                    settings.readPreferredActivitiesLPw(parser, userId);
                                                    str4 = str20;
                                                    maxAppLinkGeneration = maxAppLinkGeneration4;
                                                } catch (IOException e30) {
                                                    e = e30;
                                                    str = str5;
                                                    str4 = str20;
                                                    settings.mReadMessages.append(str2 + e.toString());
                                                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                    Slog.wtf(str4, str3, e);
                                                    return;
                                                } catch (XmlPullParserException e31) {
                                                    e = e31;
                                                    str3 = str3;
                                                    str2 = str2;
                                                    str = str5;
                                                    str4 = str20;
                                                    i = 6;
                                                }
                                            } else {
                                                parser = parser2;
                                                settings = this;
                                                try {
                                                    if (tagName.equals(TAG_PERSISTENT_PREFERRED_ACTIVITIES)) {
                                                        settings.readPersistentPreferredActivitiesLPw(parser, userId);
                                                        str4 = str20;
                                                    } else if (tagName.equals(TAG_CROSS_PROFILE_INTENT_FILTERS)) {
                                                        settings.readCrossProfileIntentFiltersLPw(parser, userId);
                                                        str4 = str20;
                                                    } else if (tagName.equals(TAG_DEFAULT_APPS)) {
                                                        settings.readDefaultAppsLPw(parser, userId);
                                                        str4 = str20;
                                                    } else if (tagName.equals(TAG_BLOCK_UNINSTALL_PACKAGES)) {
                                                        settings.readBlockUninstallPackagesLPw(parser, userId);
                                                        str4 = str20;
                                                    } else {
                                                        str4 = str20;
                                                        try {
                                                            Slog.w(str4, "Unknown element under <stopped-packages>: " + parser.getName());
                                                            XmlUtils.skipCurrentTag(parser);
                                                        } catch (IOException e32) {
                                                            e = e32;
                                                            str = str5;
                                                            settings.mReadMessages.append(str2 + e.toString());
                                                            PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                            Slog.wtf(str4, str3, e);
                                                            return;
                                                        } catch (XmlPullParserException e33) {
                                                            e = e33;
                                                            str3 = str3;
                                                            str2 = str2;
                                                            str = str5;
                                                            i = 6;
                                                        }
                                                    }
                                                    maxAppLinkGeneration = maxAppLinkGeneration4;
                                                } catch (IOException e34) {
                                                    e = e34;
                                                    str4 = str20;
                                                    str = str5;
                                                    settings.mReadMessages.append(str2 + e.toString());
                                                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                                                    Slog.wtf(str4, str3, e);
                                                    return;
                                                } catch (XmlPullParserException e35) {
                                                    e = e35;
                                                    str4 = str20;
                                                    str3 = str3;
                                                    str2 = str2;
                                                    str = str5;
                                                    i = 6;
                                                }
                                            }
                                            str4 = str4;
                                            str5 = str5;
                                            userPackagesStateFile = userPackagesStateFile2;
                                            outerDepth = outerDepth;
                                            c4 = c2;
                                            c = c3;
                                            i2 = i4;
                                            i7 = i3;
                                            str9 = str6;
                                            str8 = str8;
                                        } catch (IOException e36) {
                                            e = e36;
                                            str4 = str20;
                                            settings = this;
                                        } catch (XmlPullParserException e37) {
                                            e = e37;
                                            str4 = str20;
                                            settings = this;
                                            str3 = str3;
                                            str2 = str2;
                                            str = str5;
                                            i = 6;
                                        }
                                    }
                                }
                            }
                        }
                        str5.close();
                        settings.mNextAppLinkGeneration.put(userId, maxAppLinkGeneration + 1);
                        return;
                    } catch (IOException e38) {
                        e = e38;
                        str = str5;
                        str4 = str4;
                    } catch (XmlPullParserException e39) {
                        e = e39;
                        str = str5;
                        str3 = str3;
                        str4 = str4;
                        str2 = str2;
                        i = 6;
                    }
                } catch (XmlPullParserException e40) {
                    e = e40;
                    fileInputStream2 = str5;
                    str4 = str4;
                }
                str = fileInputStream2;
                i = 6;
            } catch (IOException e41) {
                e = e41;
                fileInputStream = str5;
            }
        } catch (XmlPullParserException e42) {
            e = e42;
            FileInputStream fileInputStream4 = str5;
            str3 = str3;
            str4 = str4;
            str2 = str2;
            i = 6;
            str = fileInputStream4;
        }
        settings.mReadMessages.append(str2 + e.toString());
        PackageManagerService.reportSettingsProblem(i, "Error reading stopped packages: " + e);
        Slog.wtf(str4, str3, e);
    }

    void setBlockUninstallLPw(int userId, String packageName, boolean blockUninstall) {
        ArraySet<String> packages = this.mBlockUninstallPackages.get(userId);
        if (blockUninstall) {
            if (packages == null) {
                packages = new ArraySet<>();
                this.mBlockUninstallPackages.put(userId, packages);
            }
            packages.add(packageName);
            return;
        }
        if (packages != null) {
            packages.remove(packageName);
            if (packages.isEmpty()) {
                this.mBlockUninstallPackages.remove(userId);
            }
        }
    }

    void clearBlockUninstallLPw(int userId) {
        this.mBlockUninstallPackages.remove(userId);
    }

    boolean getBlockUninstallLPr(int userId, String packageName) {
        ArraySet<String> packages = this.mBlockUninstallPackages.get(userId);
        if (packages == null) {
            return false;
        }
        return packages.contains(packageName);
    }

    private ArraySet<String> readComponentsLPr(XmlPullParser parser) throws XmlPullParserException, IOException {
        String componentName;
        ArraySet<String> components = null;
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                String tagName = parser.getName();
                if (tagName.equals(TAG_ITEM) && (componentName = parser.getAttributeValue(null, ATTR_NAME)) != null) {
                    if (components == null) {
                        components = new ArraySet<>();
                    }
                    components.add(componentName);
                }
            }
        }
        return components;
    }

    void writePreferredActivitiesLPr(XmlSerializer serializer, int userId, boolean full) throws IllegalStateException, IOException, IllegalArgumentException {
        serializer.startTag(null, "preferred-activities");
        PreferredIntentResolver pir = this.mPreferredActivities.get(userId);
        if (pir != null) {
            for (PreferredActivity pa : pir.filterSet()) {
                serializer.startTag(null, TAG_ITEM);
                pa.writeToXml(serializer, full);
                serializer.endTag(null, TAG_ITEM);
            }
        }
        serializer.endTag(null, "preferred-activities");
    }

    void writePersistentPreferredActivitiesLPr(XmlSerializer serializer, int userId) throws IllegalStateException, IOException, IllegalArgumentException {
        serializer.startTag(null, TAG_PERSISTENT_PREFERRED_ACTIVITIES);
        PersistentPreferredIntentResolver ppir = this.mPersistentPreferredActivities.get(userId);
        if (ppir != null) {
            for (PersistentPreferredActivity ppa : ppir.filterSet()) {
                serializer.startTag(null, TAG_ITEM);
                ppa.writeToXml(serializer);
                serializer.endTag(null, TAG_ITEM);
            }
        }
        serializer.endTag(null, TAG_PERSISTENT_PREFERRED_ACTIVITIES);
    }

    void writeCrossProfileIntentFiltersLPr(XmlSerializer serializer, int userId) throws IllegalStateException, IOException, IllegalArgumentException {
        serializer.startTag(null, TAG_CROSS_PROFILE_INTENT_FILTERS);
        CrossProfileIntentResolver cpir = this.mCrossProfileIntentResolvers.get(userId);
        if (cpir != null) {
            for (CrossProfileIntentFilter cpif : cpir.filterSet()) {
                serializer.startTag(null, TAG_ITEM);
                cpif.writeToXml(serializer);
                serializer.endTag(null, TAG_ITEM);
            }
        }
        serializer.endTag(null, TAG_CROSS_PROFILE_INTENT_FILTERS);
    }

    void writeDomainVerificationsLPr(XmlSerializer serializer, IntentFilterVerificationInfo verificationInfo) throws IllegalStateException, IOException, IllegalArgumentException {
        if (verificationInfo != null && verificationInfo.getPackageName() != null) {
            serializer.startTag(null, TAG_DOMAIN_VERIFICATION);
            verificationInfo.writeToXml(serializer);
            serializer.endTag(null, TAG_DOMAIN_VERIFICATION);
        }
    }

    void writeAllDomainVerificationsLPr(XmlSerializer serializer, int userId) throws IllegalStateException, IOException, IllegalArgumentException {
        serializer.startTag(null, TAG_ALL_INTENT_FILTER_VERIFICATION);
        int N = this.mPackages.size();
        for (int i = 0; i < N; i++) {
            PackageSetting ps = this.mPackages.valueAt(i);
            IntentFilterVerificationInfo ivi = ps.getIntentFilterVerificationInfo();
            if (ivi != null) {
                writeDomainVerificationsLPr(serializer, ivi);
            }
        }
        serializer.endTag(null, TAG_ALL_INTENT_FILTER_VERIFICATION);
    }

    void readAllDomainVerificationsLPr(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        this.mRestoredIntentFilterVerifications.clear();
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_DOMAIN_VERIFICATION)) {
                            IntentFilterVerificationInfo ivi = new IntentFilterVerificationInfo(parser);
                            String pkgName = ivi.getPackageName();
                            PackageSetting ps = this.mPackages.get(pkgName);
                            if (ps != null) {
                                ps.setIntentFilterVerificationInfo(ivi);
                            } else {
                                this.mRestoredIntentFilterVerifications.put(pkgName, ivi);
                            }
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <all-intent-filter-verification>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void writeDefaultAppsLPr(XmlSerializer serializer, int userId) throws IllegalStateException, IOException, IllegalArgumentException {
        serializer.startTag(null, TAG_DEFAULT_APPS);
        String defaultBrowser = this.mDefaultBrowserApp.get(userId);
        if (!TextUtils.isEmpty(defaultBrowser)) {
            serializer.startTag(null, TAG_DEFAULT_BROWSER);
            serializer.attribute(null, ATTR_PACKAGE_NAME, defaultBrowser);
            serializer.endTag(null, TAG_DEFAULT_BROWSER);
        }
        serializer.endTag(null, TAG_DEFAULT_APPS);
    }

    void writeBlockUninstallPackagesLPr(XmlSerializer serializer, int userId) throws IOException {
        ArraySet<String> packages = this.mBlockUninstallPackages.get(userId);
        if (packages != null) {
            serializer.startTag(null, TAG_BLOCK_UNINSTALL_PACKAGES);
            for (int i = 0; i < packages.size(); i++) {
                serializer.startTag(null, TAG_BLOCK_UNINSTALL);
                serializer.attribute(null, ATTR_PACKAGE_NAME, packages.valueAt(i));
                serializer.endTag(null, TAG_BLOCK_UNINSTALL);
            }
            serializer.endTag(null, TAG_BLOCK_UNINSTALL_PACKAGES);
        }
    }

    void writePackageRestrictionsLPr(int userId) {
        File userPackagesStateFile;
        String str;
        invalidatePackageCache();
        long startTime = SystemClock.uptimeMillis();
        File userPackagesStateFile2 = getUserPackagesStateFile(userId);
        File backupFile = getUserPackagesStateBackupFile(userId);
        new File(userPackagesStateFile2.getParent()).mkdirs();
        if (userPackagesStateFile2.exists()) {
            if (!backupFile.exists()) {
                if (!userPackagesStateFile2.renameTo(backupFile)) {
                    Slog.wtf("PackageManager", "Unable to backup user packages state file, current changes will be lost at reboot");
                    return;
                }
            } else {
                userPackagesStateFile2.delete();
                Slog.w("PackageManager", "Preserving older stopped packages backup");
            }
        }
        try {
            FileOutputStream fstr = new FileOutputStream(userPackagesStateFile2);
            BufferedOutputStream str2 = new BufferedOutputStream(fstr);
            XmlSerializer fastXmlSerializer = new FastXmlSerializer();
            str = "PackageManager";
            try {
                fastXmlSerializer.setOutput(str2, StandardCharsets.UTF_8.name());
                try {
                    String str3 = null;
                    fastXmlSerializer.startDocument(null, true);
                    fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    fastXmlSerializer.startTag(null, TAG_PACKAGE_RESTRICTIONS);
                    Iterator<PackageSetting> it = this.mPackages.values().iterator();
                    while (it.hasNext()) {
                        PackageSetting pkg = it.next();
                        PackageUserState ustate = pkg.readUserState(userId);
                        fastXmlSerializer.startTag(str3, TAG_PACKAGE);
                        Iterator<PackageSetting> it2 = it;
                        fastXmlSerializer.attribute(null, ATTR_NAME, pkg.name);
                        userPackagesStateFile = userPackagesStateFile2;
                        try {
                            if (ustate.ceDataInode != 0) {
                                try {
                                    XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_CE_DATA_INODE, ustate.ceDataInode);
                                } catch (IOException e) {
                                    e = e;
                                    String str4 = str;
                                    Slog.wtf(str4, "Unable to write package manager user packages state,  current changes will be lost at reboot", e);
                                    if (!userPackagesStateFile.exists()) {
                                        return;
                                    } else {
                                        return;
                                    }
                                }
                            }
                            if (!ustate.installed) {
                                fastXmlSerializer.attribute(null, ATTR_INSTALLED, "false");
                            }
                            if (ustate.stopped) {
                                fastXmlSerializer.attribute(null, ATTR_STOPPED, "true");
                            }
                            if (ustate.notLaunched) {
                                fastXmlSerializer.attribute(null, ATTR_NOT_LAUNCHED, "true");
                            }
                            if (ustate.hidden) {
                                fastXmlSerializer.attribute(null, ATTR_HIDDEN, "true");
                            }
                            if (ustate.distractionFlags != 0) {
                                fastXmlSerializer.attribute(null, ATTR_DISTRACTION_FLAGS, Integer.toString(ustate.distractionFlags));
                            }
                            if (ustate.suspended) {
                                fastXmlSerializer.attribute(null, ATTR_SUSPENDED, "true");
                            }
                            if (ustate.instantApp) {
                                fastXmlSerializer.attribute(null, ATTR_INSTANT_APP, "true");
                            }
                            if (ustate.virtualPreload) {
                                fastXmlSerializer.attribute(null, ATTR_VIRTUAL_PRELOAD, "true");
                            }
                            if (ustate.enabled != 0) {
                                fastXmlSerializer.attribute(null, ATTR_ENABLED, Integer.toString(ustate.enabled));
                                if (ustate.lastDisableAppCaller != null) {
                                    fastXmlSerializer.attribute(null, ATTR_ENABLED_CALLER, ustate.lastDisableAppCaller);
                                }
                            }
                            if (ustate.domainVerificationStatus != 0) {
                                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_DOMAIN_VERIFICATON_STATE, ustate.domainVerificationStatus);
                            }
                            if (ustate.appLinkGeneration != 0) {
                                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_APP_LINK_GENERATION, ustate.appLinkGeneration);
                            }
                            if (ustate.installReason != 0) {
                                fastXmlSerializer.attribute(null, ATTR_INSTALL_REASON, Integer.toString(ustate.installReason));
                            }
                            if (ustate.uninstallReason != 0) {
                                fastXmlSerializer.attribute(null, ATTR_UNINSTALL_REASON, Integer.toString(ustate.uninstallReason));
                            }
                            if (ustate.harmfulAppWarning != null) {
                                fastXmlSerializer.attribute(null, ATTR_HARMFUL_APP_WARNING, ustate.harmfulAppWarning);
                            }
                            if (ustate.suspended) {
                                for (int i = 0; i < ustate.suspendParams.size(); i++) {
                                    String suspendingPackage = (String) ustate.suspendParams.keyAt(i);
                                    fastXmlSerializer.startTag(null, TAG_SUSPEND_PARAMS);
                                    fastXmlSerializer.attribute(null, ATTR_SUSPENDING_PACKAGE, suspendingPackage);
                                    PackageUserState.SuspendParams params = (PackageUserState.SuspendParams) ustate.suspendParams.valueAt(i);
                                    if (params != null) {
                                        params.saveToXml(fastXmlSerializer);
                                    }
                                    fastXmlSerializer.endTag(null, TAG_SUSPEND_PARAMS);
                                }
                            }
                            if (!ArrayUtils.isEmpty(ustate.enabledComponents)) {
                                fastXmlSerializer.startTag(null, TAG_ENABLED_COMPONENTS);
                                for (String name : ustate.enabledComponents) {
                                    fastXmlSerializer.startTag(null, TAG_ITEM);
                                    fastXmlSerializer.attribute(null, ATTR_NAME, name);
                                    fastXmlSerializer.endTag(null, TAG_ITEM);
                                }
                                fastXmlSerializer.endTag(null, TAG_ENABLED_COMPONENTS);
                            }
                            if (!ArrayUtils.isEmpty(ustate.disabledComponents)) {
                                fastXmlSerializer.startTag(null, TAG_DISABLED_COMPONENTS);
                                for (String name2 : ustate.disabledComponents) {
                                    fastXmlSerializer.startTag(null, TAG_ITEM);
                                    fastXmlSerializer.attribute(null, ATTR_NAME, name2);
                                    fastXmlSerializer.endTag(null, TAG_ITEM);
                                }
                                fastXmlSerializer.endTag(null, TAG_DISABLED_COMPONENTS);
                            }
                            fastXmlSerializer.endTag(null, TAG_PACKAGE);
                            userPackagesStateFile2 = userPackagesStateFile;
                            it = it2;
                            backupFile = backupFile;
                            str3 = null;
                        } catch (IOException e2) {
                            e = e2;
                            String str5 = str;
                            Slog.wtf(str5, "Unable to write package manager user packages state,  current changes will be lost at reboot", e);
                            if (!userPackagesStateFile.exists() && !userPackagesStateFile.delete()) {
                                Log.i(str5, "Failed to clean up mangled file: " + this.mStoppedPackagesFilename);
                                return;
                            }
                            return;
                        }
                    }
                    userPackagesStateFile = userPackagesStateFile2;
                    writePreferredActivitiesLPr(fastXmlSerializer, userId, true);
                    writePersistentPreferredActivitiesLPr(fastXmlSerializer, userId);
                    writeCrossProfileIntentFiltersLPr(fastXmlSerializer, userId);
                    writeDefaultAppsLPr(fastXmlSerializer, userId);
                    writeBlockUninstallPackagesLPr(fastXmlSerializer, userId);
                    fastXmlSerializer.endTag(null, TAG_PACKAGE_RESTRICTIONS);
                    fastXmlSerializer.endDocument();
                    str2.flush();
                    FileUtils.sync(fstr);
                    str2.close();
                    backupFile.delete();
                    FileUtils.setPermissions(userPackagesStateFile.toString(), 432, -1, -1);
                    EventLogTags.writeCommitSysConfigFile("package-user-" + userId, SystemClock.uptimeMillis() - startTime);
                } catch (IOException e3) {
                    e = e3;
                    userPackagesStateFile = userPackagesStateFile2;
                }
            } catch (IOException e4) {
                e = e4;
                userPackagesStateFile = userPackagesStateFile2;
            }
        } catch (IOException e5) {
            e = e5;
            userPackagesStateFile = userPackagesStateFile2;
            str = "PackageManager";
        }
    }

    void readInstallPermissionsLPr(XmlPullParser parser, PermissionsState permissionsState) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            boolean granted = true;
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            String name = parser.getAttributeValue(null, ATTR_NAME);
                            BasePermission bp = this.mPermissions.getPermission(name);
                            if (bp != null) {
                                String grantedStr = parser.getAttributeValue(null, ATTR_GRANTED);
                                int flags = 0;
                                if (grantedStr != null && !Boolean.parseBoolean(grantedStr)) {
                                    granted = false;
                                }
                                String flagsStr = parser.getAttributeValue(null, ATTR_FLAGS);
                                if (flagsStr != null) {
                                    flags = Integer.parseInt(flagsStr, 16);
                                }
                                if (granted) {
                                    if (permissionsState.grantInstallPermission(bp) == -1) {
                                        Slog.w("PackageManager", "Permission already added: " + name);
                                        XmlUtils.skipCurrentTag(parser);
                                    } else {
                                        permissionsState.updatePermissionFlags(bp, -1, 261119, flags);
                                    }
                                } else if (permissionsState.revokeInstallPermission(bp) == -1) {
                                    Slog.w("PackageManager", "Permission already added: " + name);
                                    XmlUtils.skipCurrentTag(parser);
                                } else {
                                    permissionsState.updatePermissionFlags(bp, -1, 261119, flags);
                                }
                            } else {
                                Slog.w("PackageManager", "Unknown permission: " + name);
                                XmlUtils.skipCurrentTag(parser);
                            }
                        } else {
                            Slog.w("PackageManager", "Unknown element under <permissions>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void writePermissionsLPr(XmlSerializer serializer, List<PermissionsState.PermissionState> permissionStates) throws IOException {
        if (permissionStates.isEmpty()) {
            return;
        }
        serializer.startTag(null, TAG_PERMISSIONS);
        for (PermissionsState.PermissionState permissionState : permissionStates) {
            serializer.startTag(null, TAG_ITEM);
            serializer.attribute(null, ATTR_NAME, permissionState.getName());
            serializer.attribute(null, ATTR_GRANTED, String.valueOf(permissionState.isGranted()));
            serializer.attribute(null, ATTR_FLAGS, Integer.toHexString(permissionState.getFlags()));
            serializer.endTag(null, TAG_ITEM);
        }
        serializer.endTag(null, TAG_PERMISSIONS);
    }

    void readUsesStaticLibLPw(XmlPullParser parser, PackageSetting outPs) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String libName = parser.getAttributeValue(null, ATTR_NAME);
                        String libVersionStr = parser.getAttributeValue(null, "version");
                        long libVersion = -1;
                        try {
                            libVersion = Long.parseLong(libVersionStr);
                        } catch (NumberFormatException e) {
                        }
                        if (libName != null && libVersion >= 0) {
                            outPs.usesStaticLibraries = (String[]) ArrayUtils.appendElement(String.class, outPs.usesStaticLibraries, libName);
                            outPs.usesStaticLibrariesVersions = ArrayUtils.appendLong(outPs.usesStaticLibrariesVersions, libVersion);
                        }
                        XmlUtils.skipCurrentTag(parser);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void writeUsesStaticLibLPw(XmlSerializer serializer, String[] usesStaticLibraries, long[] usesStaticLibraryVersions) throws IOException {
        if (ArrayUtils.isEmpty(usesStaticLibraries) || ArrayUtils.isEmpty(usesStaticLibraryVersions) || usesStaticLibraries.length != usesStaticLibraryVersions.length) {
            return;
        }
        int libCount = usesStaticLibraries.length;
        for (int i = 0; i < libCount; i++) {
            String libName = usesStaticLibraries[i];
            long libVersion = usesStaticLibraryVersions[i];
            serializer.startTag(null, TAG_USES_STATIC_LIB);
            serializer.attribute(null, ATTR_NAME, libName);
            serializer.attribute(null, "version", Long.toString(libVersion));
            serializer.endTag(null, TAG_USES_STATIC_LIB);
        }
    }

    void readStoppedLPw() {
        int type;
        FileInputStream str = null;
        int i = 4;
        if (this.mBackupStoppedPackagesFilename.exists()) {
            try {
                str = new FileInputStream(this.mBackupStoppedPackagesFilename);
                this.mReadMessages.append("Reading from backup stopped packages file\n");
                PackageManagerService.reportSettingsProblem(4, "Need to read from backup stopped packages file");
                if (this.mSettingsFilename.exists()) {
                    Slog.w("PackageManager", "Cleaning up stopped packages file " + this.mStoppedPackagesFilename);
                    this.mStoppedPackagesFilename.delete();
                }
            } catch (IOException e) {
            }
        }
        if (str == null) {
            try {
                if (!this.mStoppedPackagesFilename.exists()) {
                    this.mReadMessages.append("No stopped packages file found\n");
                    PackageManagerService.reportSettingsProblem(4, "No stopped packages file file; assuming all started");
                    for (PackageSetting pkg : this.mPackages.values()) {
                        pkg.setStopped(false, 0);
                        pkg.setNotLaunched(false, 0);
                    }
                    return;
                }
                str = new FileInputStream(this.mStoppedPackagesFilename);
            } catch (IOException e2) {
                this.mReadMessages.append("Error reading: " + e2.toString());
                PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e2);
                Slog.wtf("PackageManager", "Error reading package manager stopped packages", e2);
                return;
            } catch (XmlPullParserException e3) {
                this.mReadMessages.append("Error reading: " + e3.toString());
                PackageManagerService.reportSettingsProblem(6, "Error reading stopped packages: " + e3);
                Slog.wtf("PackageManager", "Error reading package manager stopped packages", e3);
                return;
            }
        }
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(str, null);
        do {
            type = parser.next();
            if (type == 2) {
                break;
            }
        } while (type != 1);
        if (type != 2) {
            this.mReadMessages.append("No start tag found in stopped packages file\n");
            PackageManagerService.reportSettingsProblem(5, "No start tag found in package manager stopped packages");
            return;
        }
        int outerDepth = parser.getDepth();
        while (true) {
            int type2 = parser.next();
            if (type2 == 1 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type2 != 3 && type2 != i) {
                String tagName = parser.getName();
                if (tagName.equals(TAG_PACKAGE)) {
                    String name = parser.getAttributeValue(null, ATTR_NAME);
                    PackageSetting ps = this.mPackages.get(name);
                    if (ps != null) {
                        ps.setStopped(true, 0);
                        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(parser.getAttributeValue(null, ATTR_NOT_LAUNCHED))) {
                            ps.setNotLaunched(true, 0);
                        }
                    } else {
                        Slog.w("PackageManager", "No package known for stopped package " + name);
                    }
                    XmlUtils.skipCurrentTag(parser);
                } else {
                    Slog.w("PackageManager", "Unknown element under <stopped-packages>: " + parser.getName());
                    XmlUtils.skipCurrentTag(parser);
                }
            }
            i = 4;
        }
        str.close();
    }

    void writeLPr() throws Throwable {
        String str;
        Throwable th;
        long startTime = SystemClock.uptimeMillis();
        invalidatePackageCache();
        if (this.mSettingsFilename.exists()) {
            if (this.mBackupSettingsFilename.exists()) {
                this.mSettingsFilename.delete();
                Slog.w("PackageManager", "Preserving older settings backup");
            } else {
                Slog.w("PackageManager", "copy packages.xml to packages-copy.xml");
                if (this.mCopySettingsFilename.exists()) {
                    this.mCopySettingsFilename.delete();
                }
                FileInputStream fis = null;
                FileOutputStream fos = null;
                try {
                    try {
                        try {
                            try {
                                fos = new FileOutputStream(this.mCopySettingsFilename);
                                fis = new FileInputStream(this.mSettingsFilename);
                                try {
                                    FileUtils.copy(fis, fos);
                                    fos.flush();
                                    FileUtils.sync(fos);
                                    fis.close();
                                    fos.close();
                                } catch (FileNotFoundException e) {
                                    e = e;
                                    e.printStackTrace();
                                    fos.flush();
                                    FileUtils.sync(fos);
                                    fis.close();
                                    fos.close();
                                } catch (IOException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    fos.flush();
                                    FileUtils.sync(fos);
                                    fis.close();
                                    fos.close();
                                }
                            } catch (FileNotFoundException e3) {
                                e = e3;
                                fis = null;
                            } catch (IOException e4) {
                                e = e4;
                                fis = null;
                            } catch (Throwable th2) {
                                th = th2;
                                fis = null;
                                try {
                                    fos.flush();
                                    FileUtils.sync(fos);
                                    fis.close();
                                    fos.close();
                                    throw th;
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (FileNotFoundException e6) {
                        e = e6;
                    } catch (IOException e7) {
                        e = e7;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
                if (!this.mSettingsFilename.renameTo(this.mBackupSettingsFilename)) {
                    Slog.wtf("PackageManager", "Unable to backup package manager settings,  current changes will be lost at reboot");
                    return;
                }
            }
        }
        this.mPastSignatures.clear();
        try {
            FileOutputStream fstr = new FileOutputStream(this.mSettingsFilename);
            BufferedOutputStream str2 = new BufferedOutputStream(fstr);
            XmlSerializer serializer = new FastXmlSerializer();
            str = "PackageManager";
            try {
                serializer.setOutput(str2, StandardCharsets.UTF_8.name());
                try {
                    serializer.startDocument(null, true);
                    serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    serializer.startTag(null, "packages");
                    int i = 0;
                    while (i < this.mVersion.size()) {
                        String volumeUuid = this.mVersion.keyAt(i);
                        VersionInfo ver = this.mVersion.valueAt(i);
                        serializer.startTag(null, "version");
                        XmlUtils.writeStringAttribute(serializer, ATTR_VOLUME_UUID, volumeUuid);
                        XmlUtils.writeIntAttribute(serializer, ATTR_SDK_VERSION, ver.sdkVersion);
                        XmlUtils.writeIntAttribute(serializer, ATTR_DATABASE_VERSION, ver.databaseVersion);
                        XmlUtils.writeStringAttribute(serializer, ATTR_FINGERPRINT, ver.fingerprint);
                        serializer.endTag(null, "version");
                        i++;
                        fstr = fstr;
                    }
                    FileOutputStream fstr2 = fstr;
                    if (this.mVerifierDeviceIdentity != null) {
                        serializer.startTag(null, "verifier");
                        serializer.attribute(null, "device", this.mVerifierDeviceIdentity.toString());
                        serializer.endTag(null, "verifier");
                    }
                    if (this.mReadExternalStorageEnforced != null) {
                        serializer.startTag(null, TAG_READ_EXTERNAL_STORAGE);
                        serializer.attribute(null, ATTR_ENFORCEMENT, this.mReadExternalStorageEnforced.booleanValue() ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0");
                        serializer.endTag(null, TAG_READ_EXTERNAL_STORAGE);
                    }
                    serializer.startTag(null, "permission-trees");
                    this.mPermissions.writePermissionTrees(serializer);
                    serializer.endTag(null, "permission-trees");
                    serializer.startTag(null, "permissions");
                    this.mPermissions.writePermissions(serializer);
                    serializer.endTag(null, "permissions");
                    for (PackageSetting pkg : this.mPackages.values()) {
                        writePackageLPr(serializer, pkg);
                    }
                    for (PackageSetting pkg2 : this.mDisabledSysPackages.values()) {
                        writeDisabledSysPackageLPr(serializer, pkg2);
                    }
                    for (SharedUserSetting usr : this.mSharedUsers.values()) {
                        serializer.startTag(null, TAG_SHARED_USER);
                        serializer.attribute(null, ATTR_NAME, usr.name);
                        serializer.attribute(null, "userId", Integer.toString(usr.userId));
                        usr.signatures.writeXml(serializer, "sigs", this.mPastSignatures);
                        writePermissionsLPr(serializer, usr.getPermissionsState().getInstallPermissionStates());
                        serializer.endTag(null, TAG_SHARED_USER);
                    }
                    if (this.mRenamedPackages.size() > 0) {
                        for (Map.Entry<String, String> e9 : this.mRenamedPackages.entrySet()) {
                            serializer.startTag(null, "renamed-package");
                            serializer.attribute(null, "new", e9.getKey());
                            serializer.attribute(null, "old", e9.getValue());
                            serializer.endTag(null, "renamed-package");
                        }
                    }
                    int numIVIs = this.mRestoredIntentFilterVerifications.size();
                    if (numIVIs > 0) {
                        serializer.startTag(null, "restored-ivi");
                        for (int i2 = 0; i2 < numIVIs; i2++) {
                            IntentFilterVerificationInfo ivi = this.mRestoredIntentFilterVerifications.valueAt(i2);
                            writeDomainVerificationsLPr(serializer, ivi);
                        }
                        serializer.endTag(null, "restored-ivi");
                    }
                    this.mKeySetManagerService.writeKeySetManagerServiceLPr(serializer);
                    serializer.endTag(null, "packages");
                    serializer.endDocument();
                    str2.flush();
                    FileUtils.sync(fstr2);
                    str2.close();
                    this.mBackupSettingsFilename.delete();
                    FileUtils.setPermissions(this.mSettingsFilename.toString(), 432, -1, -1);
                    writeKernelMappingLPr();
                    writePackageListLPr();
                    writeAllUsersPackageRestrictionsLPr();
                    writeAllRuntimePermissionsLPr();
                    EventLogTags.writeCommitSysConfigFile(ATTR_PACKAGE, SystemClock.uptimeMillis() - startTime);
                } catch (IOException e10) {
                    e = e10;
                    String str3 = str;
                    Slog.wtf(str3, "Unable to write package manager settings, current changes will be lost at reboot", e);
                    if (!this.mSettingsFilename.exists() || this.mSettingsFilename.delete()) {
                        return;
                    }
                    Slog.wtf(str3, "Failed to clean up mangled file: " + this.mSettingsFilename);
                }
            } catch (IOException e11) {
                e = e11;
            }
        } catch (IOException e12) {
            e = e12;
            str = "PackageManager";
        }
    }

    private void writeKernelRemoveUserLPr(int userId) {
        if (this.mKernelMappingFilename == null) {
            return;
        }
        File removeUserIdFile = new File(this.mKernelMappingFilename, "remove_userid");
        writeIntToFile(removeUserIdFile, userId);
    }

    void writeKernelMappingLPr() {
        File file = this.mKernelMappingFilename;
        if (file == null) {
            return;
        }
        String[] known = file.list();
        ArraySet<String> knownSet = new ArraySet<>(known.length);
        for (String str : known) {
            knownSet.add(str);
        }
        for (PackageSetting ps : this.mPackages.values()) {
            knownSet.remove(ps.name);
            writeKernelMappingLPr(ps);
        }
        for (int i = 0; i < knownSet.size(); i++) {
            String name = knownSet.valueAt(i);
            this.mKernelMapping.remove(name);
            new File(this.mKernelMappingFilename, name).delete();
        }
    }

    void writeKernelMappingLPr(PackageSetting ps) {
        if (this.mKernelMappingFilename == null || ps == null || ps.name == null) {
            return;
        }
        writeKernelMappingLPr(ps.name, ps.appId, ps.getNotInstalledUserIds());
    }

    void writeKernelMappingLPr(String name, int appId, int[] excludedUserIds) {
        KernelPackageState cur = this.mKernelMapping.get(name);
        boolean firstTime = cur == null;
        boolean userIdsChanged = firstTime || !Arrays.equals(excludedUserIds, cur.excludedUserIds);
        File dir = new File(this.mKernelMappingFilename, name);
        if (firstTime) {
            dir.mkdir();
            cur = new KernelPackageState();
            this.mKernelMapping.put(name, cur);
        }
        if (cur.appId != appId) {
            File appIdFile = new File(dir, "appid");
            writeIntToFile(appIdFile, appId);
        }
        if (userIdsChanged) {
            for (int i = 0; i < excludedUserIds.length; i++) {
                if (cur.excludedUserIds == null || !ArrayUtils.contains(cur.excludedUserIds, excludedUserIds[i])) {
                    writeIntToFile(new File(dir, "excluded_userids"), excludedUserIds[i]);
                }
            }
            if (cur.excludedUserIds != null) {
                for (int i2 = 0; i2 < cur.excludedUserIds.length; i2++) {
                    if (!ArrayUtils.contains(excludedUserIds, cur.excludedUserIds[i2])) {
                        writeIntToFile(new File(dir, "clear_userid"), cur.excludedUserIds[i2]);
                    }
                }
            }
            cur.excludedUserIds = excludedUserIds;
        }
    }

    private void writeIntToFile(File file, int value) {
        try {
            FileUtils.bytesToFile(file.getAbsolutePath(), Integer.toString(value).getBytes(StandardCharsets.US_ASCII));
        } catch (IOException e) {
            Slog.w(TAG, "Couldn't write " + value + " to " + file.getAbsolutePath());
        }
    }

    void writePackageListLPr() {
        writePackageListLPr(-1);
    }

    void writePackageListLPr(int creatingUserId) {
        String filename = this.mPackageListFilename.getAbsolutePath();
        String ctx = SELinux.fileSelabelLookup(filename);
        if (ctx == null) {
            Slog.wtf(TAG, "Failed to get SELinux context for " + this.mPackageListFilename.getAbsolutePath());
        }
        if (!SELinux.setFSCreateContext(ctx)) {
            Slog.wtf(TAG, "Failed to set packages.list SELinux context");
        }
        try {
            writePackageListLPrInternal(creatingUserId);
        } finally {
            SELinux.setFSCreateContext((String) null);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private void writePackageListLPrInternal(int creatingUserId) {
        List<UserInfo> users;
        String str = " ";
        List<UserInfo> users2 = getActiveUsers(UserManagerService.getInstance(), true);
        int[] userIds = new int[users2.size()];
        for (int i = 0; i < userIds.length; i++) {
            userIds[i] = users2.get(i).id;
        }
        if (creatingUserId != -1) {
            userIds = ArrayUtils.appendInt(userIds, creatingUserId);
        }
        File tempFile = new File(this.mPackageListFilename.getAbsolutePath() + ".tmp");
        JournaledFile journal = new JournaledFile(this.mPackageListFilename, tempFile);
        File writeTarget = journal.chooseForWrite();
        BufferedWriter writer = null;
        try {
            FileOutputStream fstr = new FileOutputStream(writeTarget);
            writer = new BufferedWriter(new OutputStreamWriter(fstr, Charset.defaultCharset()));
            FileUtils.setPermissions(fstr.getFD(), 416, 1000, 1032);
            StringBuilder sb = new StringBuilder();
            for (PackageSetting pkg : this.mPackages.values()) {
                String dataPath = pkg.pkg == null ? null : PackageInfoWithoutStateUtils.getDataDir(pkg.pkg, 0).getAbsolutePath();
                if (pkg.pkg == null || dataPath == null) {
                    try {
                        if (PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg.name)) {
                            str = str;
                            users2 = users2;
                        } else {
                            Slog.w(TAG, "Skipping " + pkg + " due to missing metadata");
                            str = str;
                            users2 = users2;
                        }
                    } catch (Exception e) {
                        e = e;
                        Slog.wtf(TAG, "Failed to write packages.list", e);
                        IoUtils.closeQuietly(writer);
                        journal.rollback();
                        return;
                    }
                } else {
                    boolean isDebug = pkg.pkg.isDebuggable();
                    int[] gids = pkg.getPermissionsState().computeGids(userIds);
                    if (dataPath.indexOf(32) < 0) {
                        sb.setLength(0);
                        sb.append(pkg.pkg.getPackageName());
                        sb.append(str);
                        sb.append(pkg.pkg.getUid());
                        sb.append(isDebug ? " 1 " : " 0 ");
                        sb.append(dataPath);
                        sb.append(str);
                        sb.append(AndroidPackageUtils.getSeInfo(pkg.pkg, pkg));
                        sb.append(str);
                        if (gids == null || gids.length <= 0) {
                            users = users2;
                            sb.append("none");
                        } else {
                            sb.append(gids[0]);
                            int i2 = 1;
                            while (true) {
                                users = users2;
                                if (i2 >= gids.length) {
                                    break;
                                }
                                sb.append(",");
                                sb.append(gids[i2]);
                                i2++;
                                users2 = users;
                            }
                        }
                        sb.append(str);
                        sb.append(pkg.pkg.isProfileableByShell() ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0");
                        sb.append(str);
                        sb.append(pkg.pkg.getLongVersionCode());
                        sb.append("\n");
                        writer.append((CharSequence) sb);
                        str = str;
                        users2 = users;
                    }
                }
            }
            writer.flush();
            FileUtils.sync(fstr);
            writer.close();
            journal.commit();
        } catch (Exception e2) {
            e = e2;
        }
    }

    void writeDisabledSysPackageLPr(XmlSerializer serializer, PackageSetting pkg) throws IOException {
        serializer.startTag(null, "updated-package");
        serializer.attribute(null, ATTR_NAME, pkg.name);
        if (pkg.realName != null) {
            serializer.attribute(null, "realName", pkg.realName);
        }
        serializer.attribute(null, "codePath", pkg.codePathString);
        serializer.attribute(null, "ft", Long.toHexString(pkg.timeStamp));
        serializer.attribute(null, "it", Long.toHexString(pkg.firstInstallTime));
        serializer.attribute(null, "ut", Long.toHexString(pkg.lastUpdateTime));
        serializer.attribute(null, "version", String.valueOf(pkg.versionCode));
        if (!pkg.resourcePathString.equals(pkg.codePathString)) {
            serializer.attribute(null, "resourcePath", pkg.resourcePathString);
        }
        if (pkg.legacyNativeLibraryPathString != null) {
            serializer.attribute(null, "nativeLibraryPath", pkg.legacyNativeLibraryPathString);
        }
        if (pkg.primaryCpuAbiString != null) {
            serializer.attribute(null, "primaryCpuAbi", pkg.primaryCpuAbiString);
        }
        if (pkg.secondaryCpuAbiString != null) {
            serializer.attribute(null, "secondaryCpuAbi", pkg.secondaryCpuAbiString);
        }
        if (pkg.cpuAbiOverrideString != null) {
            serializer.attribute(null, "cpuAbiOverride", pkg.cpuAbiOverrideString);
        }
        if (pkg.sharedUser == null) {
            serializer.attribute(null, "userId", Integer.toString(pkg.appId));
        } else {
            serializer.attribute(null, "sharedUserId", Integer.toString(pkg.appId));
        }
        writeUsesStaticLibLPw(serializer, pkg.usesStaticLibraries, pkg.usesStaticLibrariesVersions);
        if (pkg.sharedUser == null) {
            writePermissionsLPr(serializer, pkg.getPermissionsState().getInstallPermissionStates());
        }
        serializer.endTag(null, "updated-package");
    }

    void writePackageLPr(XmlSerializer serializer, PackageSetting pkg) throws IOException {
        serializer.startTag(null, ATTR_PACKAGE);
        serializer.attribute(null, ATTR_NAME, pkg.name);
        if (pkg.realName != null) {
            serializer.attribute(null, "realName", pkg.realName);
        }
        serializer.attribute(null, "codePath", pkg.codePathString);
        if (!pkg.resourcePathString.equals(pkg.codePathString)) {
            serializer.attribute(null, "resourcePath", pkg.resourcePathString);
        }
        if (pkg.legacyNativeLibraryPathString != null) {
            serializer.attribute(null, "nativeLibraryPath", pkg.legacyNativeLibraryPathString);
        }
        if (pkg.primaryCpuAbiString != null) {
            serializer.attribute(null, "primaryCpuAbi", pkg.primaryCpuAbiString);
        }
        if (pkg.secondaryCpuAbiString != null) {
            serializer.attribute(null, "secondaryCpuAbi", pkg.secondaryCpuAbiString);
        }
        if (pkg.cpuAbiOverrideString != null) {
            serializer.attribute(null, "cpuAbiOverride", pkg.cpuAbiOverrideString);
        }
        serializer.attribute(null, "publicFlags", Integer.toString(pkg.pkgFlags));
        serializer.attribute(null, "privateFlags", Integer.toString(pkg.pkgPrivateFlags));
        serializer.attribute(null, "ft", Long.toHexString(pkg.timeStamp));
        serializer.attribute(null, "it", Long.toHexString(pkg.firstInstallTime));
        serializer.attribute(null, "ut", Long.toHexString(pkg.lastUpdateTime));
        serializer.attribute(null, "version", String.valueOf(pkg.versionCode));
        if (pkg.sharedUser == null) {
            serializer.attribute(null, "userId", Integer.toString(pkg.appId));
        } else {
            serializer.attribute(null, "sharedUserId", Integer.toString(pkg.appId));
        }
        if (pkg.uidError) {
            serializer.attribute(null, "uidError", "true");
        }
        InstallSource installSource = pkg.installSource;
        if (installSource.installerPackageName != null) {
            serializer.attribute(null, "installer", installSource.installerPackageName);
        }
        if (installSource.isOrphaned) {
            serializer.attribute(null, "isOrphaned", "true");
        }
        if (installSource.initiatingPackageName != null) {
            serializer.attribute(null, "installInitiator", installSource.initiatingPackageName);
        }
        if (installSource.isInitiatingPackageUninstalled) {
            serializer.attribute(null, "installInitiatorUninstalled", "true");
        }
        if (installSource.originatingPackageName != null) {
            serializer.attribute(null, "installOriginator", installSource.originatingPackageName);
        }
        if (pkg.volumeUuid != null) {
            serializer.attribute(null, ATTR_VOLUME_UUID, pkg.volumeUuid);
        }
        if (pkg.categoryHint != -1) {
            serializer.attribute(null, "categoryHint", Integer.toString(pkg.categoryHint));
        }
        if (pkg.updateAvailable) {
            serializer.attribute(null, "updateAvailable", "true");
        }
        if (pkg.forceQueryableOverride) {
            serializer.attribute(null, "forceQueryable", "true");
        }
        writeUsesStaticLibLPw(serializer, pkg.usesStaticLibraries, pkg.usesStaticLibrariesVersions);
        pkg.signatures.writeXml(serializer, "sigs", this.mPastSignatures);
        if (installSource.initiatingPackageSignatures != null) {
            installSource.initiatingPackageSignatures.writeXml(serializer, "install-initiator-sigs", this.mPastSignatures);
        }
        writePermissionsLPr(serializer, pkg.getPermissionsState().getInstallPermissionStates());
        writeSigningKeySetLPr(serializer, pkg.keySetData);
        writeUpgradeKeySetsLPr(serializer, pkg.keySetData);
        writeKeySetAliasesLPr(serializer, pkg.keySetData);
        writeDomainVerificationsLPr(serializer, pkg.verificationInfo);
        writeMimeGroupLPr(serializer, pkg.mimeGroups);
        serializer.endTag(null, ATTR_PACKAGE);
    }

    void writeSigningKeySetLPr(XmlSerializer serializer, PackageKeySetData data) throws IOException {
        serializer.startTag(null, "proper-signing-keyset");
        serializer.attribute(null, "identifier", Long.toString(data.getProperSigningKeySet()));
        serializer.endTag(null, "proper-signing-keyset");
    }

    void writeUpgradeKeySetsLPr(XmlSerializer serializer, PackageKeySetData data) throws IOException {
        if (data.isUsingUpgradeKeySets()) {
            for (long id : data.getUpgradeKeySets()) {
                serializer.startTag(null, "upgrade-keyset");
                serializer.attribute(null, "identifier", Long.toString(id));
                serializer.endTag(null, "upgrade-keyset");
            }
        }
    }

    void writeKeySetAliasesLPr(XmlSerializer serializer, PackageKeySetData data) throws IOException {
        for (Map.Entry<String, Long> e : data.getAliases().entrySet()) {
            serializer.startTag(null, "defined-keyset");
            serializer.attribute(null, "alias", e.getKey());
            serializer.attribute(null, "identifier", Long.toString(e.getValue().longValue()));
            serializer.endTag(null, "defined-keyset");
        }
    }

    void writePermissionLPr(XmlSerializer serializer, BasePermission bp) throws IOException {
        bp.writeLPr(serializer);
    }

    /* JADX WARN: Code duplicated, block: B:127:0x032c  */
    /* JADX WARN: Code duplicated, block: B:129:0x0341  */
    /* JADX WARN: Code duplicated, block: B:134:0x0359  */
    boolean parseXML(FileInputStream str) {
        FileInputStream str2;
        int type;
        int i = 4;
        int i2 = 1;
        if (str != null) {
            str2 = str;
        } else {
            try {
                if (!this.mSettingsFilename.exists()) {
                    if (!this.mCopySettingsFilename.exists()) {
                        if ("true".equals(SystemProperties.get("persist.sys.pm.firstboot", "true"))) {
                            SystemProperties.set("persist.sys.pm.firstboot", "false");
                            Slog.w("PackageManager", "first boot ");
                        } else {
                            SystemProperties.set("persist.sys.pm.file.error", "true");
                            Slog.w("PackageManager", "packages.xml packages_backup packages_copy.xml all missing");
                        }
                        this.mReadMessages.append("No settings file found\n");
                        PackageManagerService.reportSettingsProblem(4, "No settings file; creating initial state");
                        findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL).forceCurrent();
                        findOrCreateVersion("primary_physical").forceCurrent();
                        return false;
                    }
                    PackageManagerService.reportSettingsProblem(4, "use packages-copy.xml to parseXML");
                    str2 = new FileInputStream(this.mCopySettingsFilename);
                } else {
                    str2 = new FileInputStream(this.mSettingsFilename);
                }
                try {
                    this.mUsingPackagesXML = true;
                } catch (IOException e) {
                    e = e;
                    this.mReadMessages.append("Error reading: " + e.toString());
                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                    Slog.wtf("PackageManager", "Error reading package manager settings", e);
                    return true;
                } catch (XmlPullParserException e2) {
                    e = e2;
                    XmlPullParserException e3 = e;
                    this.mReadMessages.append("Error reading: " + e3.toString());
                    PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e3);
                    Slog.wtf("PackageManager", "Error reading package manager settings", e3);
                    if (this.mUsingPackagesXML) {
                        this.mUsingPackagesXML = false;
                        Slog.w("PackageManager", "packages.xml parse error,try to use packages-copy.xml");
                        this.mSettingsFilename.delete();
                        if (this.mCopySettingsFilename.exists()) {
                            try {
                                FileInputStream inputstream = new FileInputStream(this.mCopySettingsFilename);
                                Slog.w("PackageManager", "start to parse packages-copy.xml");
                                boolean parseresult = parseXML(inputstream);
                                return parseresult;
                            } catch (IOException e4) {
                                return false;
                            }
                        }
                    } else {
                        this.mCopySettingsFilename.delete();
                        Slog.d("PackageManager", "Error reading packages-copy.xml, treat as no settings");
                    }
                    findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL).forceCurrent();
                    findOrCreateVersion("primary_physical").forceCurrent();
                    return false;
                }
            } catch (IOException e5) {
                e = e5;
                this.mReadMessages.append("Error reading: " + e.toString());
                PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e);
                Slog.wtf("PackageManager", "Error reading package manager settings", e);
                return true;
            } catch (XmlPullParserException e6) {
                e = e6;
                XmlPullParserException e7 = e;
                this.mReadMessages.append("Error reading: " + e7.toString());
                PackageManagerService.reportSettingsProblem(6, "Error reading settings: " + e7);
                Slog.wtf("PackageManager", "Error reading package manager settings", e7);
                if (this.mUsingPackagesXML) {
                    this.mUsingPackagesXML = false;
                    Slog.w("PackageManager", "packages.xml parse error,try to use packages-copy.xml");
                    this.mSettingsFilename.delete();
                    if (this.mCopySettingsFilename.exists()) {
                        FileInputStream inputstream2 = new FileInputStream(this.mCopySettingsFilename);
                        Slog.w("PackageManager", "start to parse packages-copy.xml");
                        boolean parseresult2 = parseXML(inputstream2);
                        return parseresult2;
                    }
                } else {
                    this.mCopySettingsFilename.delete();
                    Slog.d("PackageManager", "Error reading packages-copy.xml, treat as no settings");
                }
                findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL).forceCurrent();
                findOrCreateVersion("primary_physical").forceCurrent();
                return false;
            }
        }
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(str2, StandardCharsets.UTF_8.name());
        do {
            type = parser.next();
            if (type == 2) {
                break;
            }
        } while (type != 1);
        if (type != 2) {
            this.mReadMessages.append("No start tag found in settings file\n");
            PackageManagerService.reportSettingsProblem(5, "No start tag found in package manager settings");
            Slog.wtf("PackageManager", "No start tag found in package manager settings");
            if (this.mUsingPackagesXML) {
                this.mUsingPackagesXML = false;
                if (this.mCopySettingsFilename.exists()) {
                    return parseXML(new FileInputStream(this.mCopySettingsFilename));
                }
            }
            str2.close();
            findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL).forceCurrent();
            findOrCreateVersion("primary_physical").forceCurrent();
            return false;
        }
        int outerDepth = parser.getDepth();
        while (true) {
            int type2 = parser.next();
            if (type2 == i2 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type2 != 3 && type2 != i) {
                String tagName = parser.getName();
                if (tagName.equals(ATTR_PACKAGE)) {
                    readPackageLPw(parser);
                } else if (tagName.equals("permissions")) {
                    this.mPermissions.readPermissions(parser);
                } else if (tagName.equals("permission-trees")) {
                    this.mPermissions.readPermissionTrees(parser);
                } else if (tagName.equals(TAG_SHARED_USER)) {
                    readSharedUserLPw(parser);
                } else if (!tagName.equals("preferred-packages")) {
                    if (tagName.equals("preferred-activities")) {
                        readPreferredActivitiesLPw(parser, 0);
                    } else if (tagName.equals(TAG_PERSISTENT_PREFERRED_ACTIVITIES)) {
                        readPersistentPreferredActivitiesLPw(parser, 0);
                    } else if (tagName.equals(TAG_CROSS_PROFILE_INTENT_FILTERS)) {
                        readCrossProfileIntentFiltersLPw(parser, 0);
                    } else if (tagName.equals(TAG_DEFAULT_BROWSER)) {
                        readDefaultAppsLPw(parser, 0);
                    } else if (tagName.equals("updated-package")) {
                        readDisabledSysPackageLPw(parser);
                    } else if (tagName.equals("renamed-package")) {
                        String nname = parser.getAttributeValue(null, "new");
                        String oname = parser.getAttributeValue(null, "old");
                        if (nname != null && oname != null) {
                            this.mRenamedPackages.put(nname, oname);
                        }
                    } else if (tagName.equals("restored-ivi")) {
                        readRestoredIntentFilterVerifications(parser);
                    } else if (tagName.equals("last-platform-version")) {
                        VersionInfo internal = findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL);
                        VersionInfo external = findOrCreateVersion("primary_physical");
                        internal.sdkVersion = XmlUtils.readIntAttribute(parser, "internal", 0);
                        external.sdkVersion = XmlUtils.readIntAttribute(parser, "external", 0);
                        String stringAttribute = XmlUtils.readStringAttribute(parser, ATTR_FINGERPRINT);
                        external.fingerprint = stringAttribute;
                        internal.fingerprint = stringAttribute;
                    } else if (tagName.equals("database-version")) {
                        VersionInfo internal2 = findOrCreateVersion(StorageManager.UUID_PRIVATE_INTERNAL);
                        VersionInfo external2 = findOrCreateVersion("primary_physical");
                        internal2.databaseVersion = XmlUtils.readIntAttribute(parser, "internal", 0);
                        external2.databaseVersion = XmlUtils.readIntAttribute(parser, "external", 0);
                    } else if (tagName.equals("verifier")) {
                        String deviceIdentity = parser.getAttributeValue(null, "device");
                        try {
                            this.mVerifierDeviceIdentity = VerifierDeviceIdentity.parse(deviceIdentity);
                        } catch (IllegalArgumentException e8) {
                            Slog.w("PackageManager", "Discard invalid verifier device id: " + e8.getMessage());
                        }
                    } else if (TAG_READ_EXTERNAL_STORAGE.equals(tagName)) {
                        String enforcement = parser.getAttributeValue(null, ATTR_ENFORCEMENT);
                        this.mReadExternalStorageEnforced = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(enforcement) ? Boolean.TRUE : Boolean.FALSE;
                    } else if (tagName.equals("keyset-settings")) {
                        this.mKeySetManagerService.readKeySetsLPw(parser, this.mKeySetRefs);
                    } else if ("version".equals(tagName)) {
                        String volumeUuid = XmlUtils.readStringAttribute(parser, ATTR_VOLUME_UUID);
                        VersionInfo ver = findOrCreateVersion(volumeUuid);
                        ver.sdkVersion = XmlUtils.readIntAttribute(parser, ATTR_SDK_VERSION);
                        ver.databaseVersion = XmlUtils.readIntAttribute(parser, ATTR_DATABASE_VERSION);
                        ver.fingerprint = XmlUtils.readStringAttribute(parser, ATTR_FINGERPRINT);
                    } else {
                        Slog.w("PackageManager", "Unknown element under <packages>: " + parser.getName());
                        XmlUtils.skipCurrentTag(parser);
                    }
                }
            }
            i = 4;
            i2 = 1;
        }
        str2.close();
        return true;
    }

    boolean readLPw(List<UserInfo> users) {
        FileInputStream str = null;
        if (this.mBackupSettingsFilename.exists()) {
            try {
                if (this.mCopySettingsFilename.exists()) {
                    str = new FileInputStream(this.mCopySettingsFilename);
                    this.mReadMessages.append("Reading from copy settings file\n");
                    PackageManagerService.reportSettingsProblem(4, "Need to read from copy backup settings file");
                    Slog.w("PackageManager", "package_copy.xml exist, Cleaning up packages-backup.xml " + this.mBackupSettingsFilename);
                    this.mBackupSettingsFilename.delete();
                } else {
                    str = new FileInputStream(this.mBackupSettingsFilename);
                    this.mReadMessages.append("Reading from backup settings file\n");
                    PackageManagerService.reportSettingsProblem(4, "Need to read from backup settings file");
                }
                if (this.mSettingsFilename.exists()) {
                    Slog.w("PackageManager", "Cleaning up settings file " + this.mSettingsFilename);
                    this.mSettingsFilename.delete();
                }
            } catch (IOException e) {
            }
        }
        this.mPendingPackages.clear();
        this.mPastSignatures.clear();
        this.mKeySetRefs.clear();
        this.mInstallerPackages.clear();
        if (!parseXML(str)) {
            return false;
        }
        int N = this.mPendingPackages.size();
        for (int i = 0; i < N; i++) {
            PackageSetting p = this.mPendingPackages.get(i);
            int sharedUserId = p.getSharedUserId();
            Object idObj = getSettingLPr(sharedUserId);
            if (idObj instanceof SharedUserSetting) {
                SharedUserSetting sharedUser = (SharedUserSetting) idObj;
                p.sharedUser = sharedUser;
                p.appId = sharedUser.userId;
                addPackageSettingLPw(p, sharedUser);
            } else if (idObj != null) {
                String msg = "Bad package setting: package " + p.name + " has shared uid " + sharedUserId + " that is not a shared uid\n";
                this.mReadMessages.append(msg);
                PackageManagerService.reportSettingsProblem(6, msg);
            } else {
                String msg2 = "Bad package setting: package " + p.name + " has shared uid " + sharedUserId + " that is not defined\n";
                this.mReadMessages.append(msg2);
                PackageManagerService.reportSettingsProblem(6, msg2);
            }
        }
        this.mPendingPackages.clear();
        if (this.mBackupStoppedPackagesFilename.exists() || this.mStoppedPackagesFilename.exists()) {
            readStoppedLPw();
            this.mBackupStoppedPackagesFilename.delete();
            this.mStoppedPackagesFilename.delete();
            writePackageRestrictionsLPr(0);
        } else {
            for (UserInfo user : users) {
                readPackageRestrictionsLPr(user.id);
            }
        }
        for (UserInfo user2 : users) {
            this.mRuntimePermissionsPersistence.readStateForUserSyncLPr(user2.id);
        }
        for (PackageSetting disabledPs : this.mDisabledSysPackages.values()) {
            Object id = getSettingLPr(disabledPs.appId);
            if (id != null && (id instanceof SharedUserSetting)) {
                disabledPs.sharedUser = (SharedUserSetting) id;
            }
        }
        this.mReadMessages.append("Read completed successfully: " + this.mPackages.size() + " packages, " + this.mSharedUsers.size() + " shared uids\n");
        writeKernelMappingLPr();
        return true;
    }

    void readPermissionStateForUserSyncLPr(int userId) {
        this.mRuntimePermissionsPersistence.readStateForUserSyncLPr(userId);
    }

    void applyDefaultPreferredAppsLPw(int userId) throws Throwable {
        PackageManagerInternal pmInternal;
        int size;
        PackageManagerInternal pmInternal2;
        int size2;
        PackageManagerService.ScanPartition partition;
        Throwable th;
        int type;
        PackageManagerInternal pmInternal3 = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        for (PackageSetting ps : this.mPackages.values()) {
            if ((1 & ps.pkgFlags) != 0 && ps.pkg != null && !ps.pkg.getPreferredActivityFilters().isEmpty()) {
                List<Pair<String, ParsedIntentInfo>> intents = ps.pkg.getPreferredActivityFilters();
                for (int i = 0; i < intents.size(); i++) {
                    Pair<String, ParsedIntentInfo> pair = intents.get(i);
                    applyDefaultPreferredActivityLPw(pmInternal3, (IntentFilter) pair.second, new ComponentName(ps.name, (String) pair.first), userId);
                }
            }
        }
        int size3 = PackageManagerService.SYSTEM_PARTITIONS.size();
        int index = 0;
        while (index < size3) {
            PackageManagerService.ScanPartition partition2 = PackageManagerService.SYSTEM_PARTITIONS.get(index);
            File preferredDir = new File(partition2.getFolder(), "etc/preferred-apps");
            if (!preferredDir.exists()) {
                pmInternal = pmInternal3;
                size = size3;
            } else if (!preferredDir.isDirectory()) {
                pmInternal = pmInternal3;
                size = size3;
            } else if (preferredDir.canRead()) {
                File[] files = preferredDir.listFiles();
                if (ArrayUtils.isEmpty(files)) {
                    pmInternal = pmInternal3;
                    size = size3;
                } else {
                    int length = files.length;
                    int i2 = 0;
                    while (i2 < length) {
                        File f = files[i2];
                        if (!f.getPath().endsWith(".xml")) {
                            Slog.i(TAG, "Non-xml file " + f + " in " + preferredDir + " directory, ignoring");
                            pmInternal2 = pmInternal3;
                            size2 = size3;
                            partition = partition2;
                        } else if (f.canRead()) {
                            try {
                                pmInternal2 = pmInternal3;
                                try {
                                    InputStream str = new BufferedInputStream(new FileInputStream(f));
                                    try {
                                        XmlPullParser parser = Xml.newPullParser();
                                        size2 = size3;
                                        try {
                                            parser.setInput(str, null);
                                            while (true) {
                                                int type2 = parser.next();
                                                partition = partition2;
                                                if (type2 == 2) {
                                                    type = type2;
                                                    break;
                                                } else if (type == 1) {
                                                    type = type2;
                                                    break;
                                                } else {
                                                    type = type2;
                                                    partition2 = partition;
                                                }
                                            }
                                            if (type != 2) {
                                                try {
                                                    Slog.w(TAG, "Preferred apps file " + f + " does not have start tag");
                                                    try {
                                                        str.close();
                                                    } catch (IOException e) {
                                                        e = e;
                                                        Slog.w(TAG, "Error reading apps file " + f, e);
                                                        i2++;
                                                        pmInternal3 = pmInternal2;
                                                        size3 = size2;
                                                        partition2 = partition;
                                                    } catch (XmlPullParserException e2) {
                                                        e = e2;
                                                        Slog.w(TAG, "Error reading apps file " + f, e);
                                                        i2++;
                                                        pmInternal3 = pmInternal2;
                                                        size3 = size2;
                                                        partition2 = partition;
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    try {
                                                        str.close();
                                                    } catch (Throwable th3) {
                                                        th.addSuppressed(th3);
                                                    }
                                                    throw th;
                                                }
                                            } else if ("preferred-activities".equals(parser.getName())) {
                                                readDefaultPreferredActivitiesLPw(parser, userId);
                                                str.close();
                                            } else {
                                                Slog.w(TAG, "Preferred apps file " + f + " does not start with 'preferred-activities'");
                                                str.close();
                                            }
                                        } catch (Throwable th4) {
                                            partition = partition2;
                                            th = th4;
                                        }
                                    } catch (Throwable th5) {
                                        size2 = size3;
                                        partition = partition2;
                                        th = th5;
                                    }
                                } catch (IOException e3) {
                                    e = e3;
                                    size2 = size3;
                                    partition = partition2;
                                } catch (XmlPullParserException e4) {
                                    e = e4;
                                    size2 = size3;
                                    partition = partition2;
                                }
                            } catch (IOException e5) {
                                e = e5;
                                pmInternal2 = pmInternal3;
                                size2 = size3;
                                partition = partition2;
                            } catch (XmlPullParserException e6) {
                                e = e6;
                                pmInternal2 = pmInternal3;
                                size2 = size3;
                                partition = partition2;
                            }
                        } else {
                            Slog.w(TAG, "Preferred apps file " + f + " cannot be read");
                            pmInternal2 = pmInternal3;
                            size2 = size3;
                            partition = partition2;
                        }
                        i2++;
                        pmInternal3 = pmInternal2;
                        size3 = size2;
                        partition2 = partition;
                    }
                    pmInternal = pmInternal3;
                    size = size3;
                }
            } else {
                Slog.w(TAG, "Directory " + preferredDir + " cannot be read");
                pmInternal = pmInternal3;
                size = size3;
            }
            index++;
            pmInternal3 = pmInternal;
            size3 = size;
        }
    }

    private void applyDefaultPreferredActivityLPw(PackageManagerInternal pmInternal, IntentFilter tmpPa, ComponentName cn, int userId) {
        Intent intent = new Intent();
        intent.setAction(tmpPa.getAction(0));
        int flags = 786432;
        for (int i = 0; i < flags; i++) {
            String cat = tmpPa.getCategory(i);
            if (cat.equals("android.intent.category.DEFAULT")) {
                flags = 65536 | flags;
            } else {
                intent.addCategory(cat);
            }
        }
        boolean doNonData = true;
        int dataSchemesCount = tmpPa.countDataSchemes();
        boolean hasSchemes = false;
        int ischeme = 0;
        while (ischeme < dataSchemesCount) {
            String scheme = tmpPa.getDataScheme(ischeme);
            if (scheme != null && !scheme.isEmpty()) {
                hasSchemes = true;
            }
            boolean doScheme = true;
            int issp = 0;
            for (int dataSchemeSpecificPartsCount = tmpPa.countDataSchemeSpecificParts(); issp < dataSchemeSpecificPartsCount; dataSchemeSpecificPartsCount = dataSchemeSpecificPartsCount) {
                Uri.Builder builder = new Uri.Builder();
                builder.scheme(scheme);
                PatternMatcher ssp = tmpPa.getDataSchemeSpecificPart(issp);
                builder.opaquePart(ssp.getPath());
                Intent finalIntent = new Intent(intent);
                finalIntent.setData(builder.build());
                applyDefaultPreferredActivityLPw(pmInternal, finalIntent, flags, cn, scheme, ssp, null, null, userId);
                doScheme = false;
                issp++;
                scheme = scheme;
                dataSchemesCount = dataSchemesCount;
            }
            String scheme2 = scheme;
            int dataSchemesCount2 = dataSchemesCount;
            int dataAuthoritiesCount = tmpPa.countDataAuthorities();
            int iauth = 0;
            while (iauth < dataAuthoritiesCount) {
                IntentFilter.AuthorityEntry auth = tmpPa.getDataAuthority(iauth);
                int dataPathsCount = tmpPa.countDataPaths();
                int ipath = 0;
                boolean doScheme2 = doScheme;
                boolean doAuth = true;
                while (ipath < dataPathsCount) {
                    Uri.Builder builder2 = new Uri.Builder();
                    builder2.scheme(scheme2);
                    if (auth.getHost() != null) {
                        builder2.authority(auth.getHost());
                    }
                    PatternMatcher path = tmpPa.getDataPath(ipath);
                    builder2.path(path.getPath());
                    Intent finalIntent2 = new Intent(intent);
                    finalIntent2.setData(builder2.build());
                    applyDefaultPreferredActivityLPw(pmInternal, finalIntent2, flags, cn, scheme2, null, auth, path, userId);
                    doScheme2 = false;
                    doAuth = false;
                    ipath++;
                    dataPathsCount = dataPathsCount;
                    iauth = iauth;
                    dataAuthoritiesCount = dataAuthoritiesCount;
                }
                int iauth2 = iauth;
                int dataAuthoritiesCount2 = dataAuthoritiesCount;
                if (!doAuth) {
                    doScheme = doScheme2;
                } else {
                    Uri.Builder builder3 = new Uri.Builder();
                    builder3.scheme(scheme2);
                    if (auth.getHost() != null) {
                        builder3.authority(auth.getHost());
                    }
                    Intent finalIntent3 = new Intent(intent);
                    finalIntent3.setData(builder3.build());
                    applyDefaultPreferredActivityLPw(pmInternal, finalIntent3, flags, cn, scheme2, null, auth, null, userId);
                    doScheme = false;
                }
                iauth = iauth2 + 1;
                dataAuthoritiesCount = dataAuthoritiesCount2;
            }
            if (doScheme) {
                Uri.Builder builder4 = new Uri.Builder();
                builder4.scheme(scheme2);
                Intent finalIntent4 = new Intent(intent);
                finalIntent4.setData(builder4.build());
                applyDefaultPreferredActivityLPw(pmInternal, finalIntent4, flags, cn, scheme2, null, null, null, userId);
            }
            doNonData = false;
            ischeme++;
            dataSchemesCount = dataSchemesCount2;
        }
        boolean doNonData2 = doNonData;
        for (int idata = 0; idata < tmpPa.countDataTypes(); idata++) {
            String mimeType = tmpPa.getDataType(idata);
            if (hasSchemes) {
                Uri.Builder builder5 = new Uri.Builder();
                for (int ischeme2 = 0; ischeme2 < tmpPa.countDataSchemes(); ischeme2++) {
                    String scheme3 = tmpPa.getDataScheme(ischeme2);
                    if (scheme3 != null && !scheme3.isEmpty()) {
                        Intent finalIntent5 = new Intent(intent);
                        builder5.scheme(scheme3);
                        finalIntent5.setDataAndType(builder5.build(), mimeType);
                        applyDefaultPreferredActivityLPw(pmInternal, finalIntent5, flags, cn, scheme3, null, null, null, userId);
                    }
                }
            } else {
                Intent finalIntent6 = new Intent(intent);
                finalIntent6.setType(mimeType);
                applyDefaultPreferredActivityLPw(pmInternal, finalIntent6, flags, cn, null, null, null, null, userId);
            }
            doNonData2 = false;
        }
        if (doNonData2) {
            applyDefaultPreferredActivityLPw(pmInternal, intent, flags, cn, null, null, null, null, userId);
        }
    }

    private void applyDefaultPreferredActivityLPw(PackageManagerInternal pmInternal, Intent intent, int flags, ComponentName cn, String scheme, PatternMatcher ssp, IntentFilter.AuthorityEntry auth, PatternMatcher path, int userId) {
        List<ResolveInfo> ri = pmInternal.queryIntentActivities(intent, intent.getType(), flags, Binder.getCallingUid(), 0);
        int numMatches = ri == null ? 0 : ri.size();
        if (numMatches <= 1) {
            Slog.w(TAG, "No potential matches found for " + intent + " while setting preferred " + cn.flattenToShortString());
            return;
        }
        ComponentName haveNonSys = null;
        ComponentName[] set = new ComponentName[ri.size()];
        boolean haveAct = false;
        int systemMatch = 0;
        for (int i = 0; i < numMatches; i++) {
            ActivityInfo ai = ri.get(i).activityInfo;
            set[i] = new ComponentName(ai.packageName, ai.name);
            if ((ai.applicationInfo.flags & 1) == 0) {
                if (ri.get(i).match >= 0) {
                    haveNonSys = set[i];
                    break;
                }
            } else if (cn.getPackageName().equals(ai.packageName) && cn.getClassName().equals(ai.name)) {
                systemMatch = ri.get(i).match;
                haveAct = true;
            }
        }
        if (haveNonSys != null && 0 < systemMatch) {
            haveNonSys = null;
        }
        if (haveAct && haveNonSys == null) {
            IntentFilter filter = new IntentFilter();
            if (intent.getAction() != null) {
                filter.addAction(intent.getAction());
            }
            if (intent.getCategories() != null) {
                for (String cat : intent.getCategories()) {
                    filter.addCategory(cat);
                }
            }
            if ((flags & 65536) != 0) {
                filter.addCategory("android.intent.category.DEFAULT");
            }
            if (scheme != null) {
                filter.addDataScheme(scheme);
            }
            if (ssp != null) {
                filter.addDataSchemeSpecificPart(ssp.getPath(), ssp.getType());
            }
            if (auth != null) {
                filter.addDataAuthority(auth);
            }
            if (path != null) {
                filter.addDataPath(path);
            }
            if (intent.getType() != null) {
                try {
                    filter.addDataType(intent.getType());
                } catch (IntentFilter.MalformedMimeTypeException e) {
                    Slog.w(TAG, "Malformed mimetype " + intent.getType() + " for " + cn);
                }
            }
            PreferredActivity pa = new PreferredActivity(filter, systemMatch, set, cn, true);
            editPreferredActivitiesLPw(userId).addFilter(pa);
            return;
        }
        if (haveNonSys == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("No component ");
            sb.append(cn.flattenToShortString());
            sb.append(" found setting preferred ");
            sb.append(intent);
            sb.append("; possible matches are ");
            for (int i2 = 0; i2 < set.length; i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(set[i2].flattenToShortString());
            }
            Slog.w(TAG, sb.toString());
            return;
        }
        Slog.i(TAG, "Not setting preferred " + intent + "; found third party match " + haveNonSys.flattenToShortString());
    }

    private void readDefaultPreferredActivitiesLPw(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        PackageManagerInternal pmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            PreferredActivity tmpPa = new PreferredActivity(parser);
                            if (tmpPa.mPref.getParseError() == null) {
                                applyDefaultPreferredActivityLPw(pmInternal, tmpPa, tmpPa.mPref.mComponent, userId);
                            } else {
                                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <preferred-activity> " + tmpPa.mPref.getParseError() + " at " + parser.getPositionDescription());
                            }
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <preferred-activities>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readDisabledSysPackageLPw(XmlPullParser parser) throws XmlPullParserException, IOException {
        String primaryCpuAbiStr;
        String resourcePathStr;
        long versionCode;
        int pkgPrivateFlags;
        String name = parser.getAttributeValue(null, ATTR_NAME);
        String realName = parser.getAttributeValue(null, "realName");
        String codePathStr = parser.getAttributeValue(null, "codePath");
        String resourcePathStr2 = parser.getAttributeValue(null, "resourcePath");
        String legacyCpuAbiStr = parser.getAttributeValue(null, "requiredCpuAbi");
        String legacyNativeLibraryPathStr = parser.getAttributeValue(null, "nativeLibraryPath");
        parser.getAttributeValue(null, "parentPackageName");
        String primaryCpuAbiStr2 = parser.getAttributeValue(null, "primaryCpuAbi");
        String secondaryCpuAbiStr = parser.getAttributeValue(null, "secondaryCpuAbi");
        String cpuAbiOverrideStr = parser.getAttributeValue(null, "cpuAbiOverride");
        if (primaryCpuAbiStr2 == null && legacyCpuAbiStr != null) {
            primaryCpuAbiStr = legacyCpuAbiStr;
        } else {
            primaryCpuAbiStr = primaryCpuAbiStr2;
        }
        if (resourcePathStr2 != null) {
            resourcePathStr = resourcePathStr2;
        } else {
            resourcePathStr = codePathStr;
        }
        String version = parser.getAttributeValue(null, "version");
        if (version != null) {
            try {
                long versionCode2 = Long.parseLong(version);
                versionCode = versionCode2;
            } catch (NumberFormatException e) {
                versionCode = 0;
            }
        } else {
            versionCode = 0;
        }
        int pkgFlags = 0 | 1;
        if (!codePathStr.contains("/priv-app/")) {
            pkgPrivateFlags = 0;
        } else {
            int pkgPrivateFlags2 = 0 | 8;
            pkgPrivateFlags = pkgPrivateFlags2;
        }
        PackageSetting ps = new PackageSetting(name, realName, new File(codePathStr), new File(resourcePathStr), legacyNativeLibraryPathStr, primaryCpuAbiStr, secondaryCpuAbiStr, cpuAbiOverrideStr, versionCode, pkgFlags, pkgPrivateFlags, 0, null, null, null);
        String timeStampStr = parser.getAttributeValue(null, "ft");
        if (timeStampStr != null) {
            try {
                long timeStamp = Long.parseLong(timeStampStr, 16);
                ps.setTimeStamp(timeStamp);
            } catch (NumberFormatException e2) {
            }
        } else {
            String timeStampStr2 = parser.getAttributeValue(null, "ts");
            if (timeStampStr2 != null) {
                try {
                    long timeStamp2 = Long.parseLong(timeStampStr2);
                    ps.setTimeStamp(timeStamp2);
                } catch (NumberFormatException e3) {
                }
            }
        }
        String timeStampStr3 = parser.getAttributeValue(null, "it");
        if (timeStampStr3 != null) {
            try {
                ps.firstInstallTime = Long.parseLong(timeStampStr3, 16);
            } catch (NumberFormatException e4) {
            }
        }
        String timeStampStr4 = parser.getAttributeValue(null, "ut");
        if (timeStampStr4 != null) {
            try {
                ps.lastUpdateTime = Long.parseLong(timeStampStr4, 16);
            } catch (NumberFormatException e5) {
            }
        }
        String idStr = parser.getAttributeValue(null, "userId");
        ps.appId = idStr != null ? Integer.parseInt(idStr) : 0;
        if (ps.appId <= 0) {
            String sharedIdStr = parser.getAttributeValue(null, "sharedUserId");
            ps.appId = sharedIdStr != null ? Integer.parseInt(sharedIdStr) : 0;
        }
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                if (parser.getName().equals(TAG_PERMISSIONS)) {
                    readInstallPermissionsLPr(parser, ps.getPermissionsState());
                } else if (parser.getName().equals(TAG_USES_STATIC_LIB)) {
                    readUsesStaticLibLPw(parser, ps);
                } else {
                    PackageManagerService.reportSettingsProblem(5, "Unknown element under <updated-package>: " + parser.getName());
                    XmlUtils.skipCurrentTag(parser);
                }
            }
        }
        this.mDisabledSysPackages.put(name, ps);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: PHI empty after try-catch fix!
        	at jadx.core.dex.visitors.ssa.SSATransform.fixPhiInTryCatch(SSATransform.java:222)
        	at jadx.core.dex.visitors.ssa.SSATransform.fixLastAssignInTry(SSATransform.java:202)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:58)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:44)
        */
    private void readPackageLPw(
    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: PHI empty after try-catch fix!
        	at jadx.core.dex.visitors.ssa.SSATransform.fixPhiInTryCatch(SSATransform.java:222)
        	at jadx.core.dex.visitors.ssa.SSATransform.fixLastAssignInTry(SSATransform.java:202)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:58)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r80v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    void addInstallerPackageNames(InstallSource installSource) {
        if (installSource.installerPackageName != null) {
            this.mInstallerPackages.add(installSource.installerPackageName);
        }
        if (installSource.initiatingPackageName != null) {
            this.mInstallerPackages.add(installSource.initiatingPackageName);
        }
        if (installSource.originatingPackageName != null) {
            this.mInstallerPackages.add(installSource.originatingPackageName);
        }
    }

    private Map<String, ArraySet<String>> readMimeGroupLPw(XmlPullParser parser, Map<String, ArraySet<String>> mimeGroups) throws XmlPullParserException, IOException {
        String groupName = parser.getAttributeValue(null, ATTR_NAME);
        if (groupName == null) {
            XmlUtils.skipCurrentTag(parser);
            return mimeGroups;
        }
        if (mimeGroups == null) {
            mimeGroups = new ArrayMap();
        }
        ArraySet<String> mimeTypes = mimeGroups.get(groupName);
        if (mimeTypes == null) {
            mimeTypes = new ArraySet<>();
            mimeGroups.put(groupName, mimeTypes);
        }
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                String tagName = parser.getName();
                if (tagName.equals(TAG_MIME_TYPE)) {
                    String typeName = parser.getAttributeValue(null, ATTR_VALUE);
                    if (typeName != null) {
                        mimeTypes.add(typeName);
                    }
                } else {
                    PackageManagerService.reportSettingsProblem(5, "Unknown element under <mime-group>: " + parser.getName());
                    XmlUtils.skipCurrentTag(parser);
                }
            }
        }
        return mimeGroups;
    }

    private void writeMimeGroupLPr(XmlSerializer serializer, Map<String, ArraySet<String>> mimeGroups) throws IOException {
        if (mimeGroups == null) {
            return;
        }
        for (String mimeGroup : mimeGroups.keySet()) {
            serializer.startTag(null, TAG_MIME_GROUP);
            serializer.attribute(null, ATTR_NAME, mimeGroup);
            for (String mimeType : mimeGroups.get(mimeGroup)) {
                serializer.startTag(null, TAG_MIME_TYPE);
                serializer.attribute(null, ATTR_VALUE, mimeType);
                serializer.endTag(null, TAG_MIME_TYPE);
            }
            serializer.endTag(null, TAG_MIME_GROUP);
        }
    }

    private void readDisabledComponentsLPw(PackageSettingBase packageSetting, XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            String name = parser.getAttributeValue(null, ATTR_NAME);
                            if (name != null) {
                                packageSetting.addDisabledComponent(name.intern(), userId);
                            } else {
                                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <disabled-components> has no name at " + parser.getPositionDescription());
                            }
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <disabled-components>: " + parser.getName());
                        }
                        XmlUtils.skipCurrentTag(parser);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readEnabledComponentsLPw(PackageSettingBase packageSetting, XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(TAG_ITEM)) {
                            String name = parser.getAttributeValue(null, ATTR_NAME);
                            if (name != null) {
                                packageSetting.addEnabledComponent(name.intern(), userId);
                            } else {
                                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <enabled-components> has no name at " + parser.getPositionDescription());
                            }
                        } else {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element under <enabled-components>: " + parser.getName());
                        }
                        XmlUtils.skipCurrentTag(parser);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readSharedUserLPw(XmlPullParser parser) throws XmlPullParserException, IOException {
        int pkgFlags = 0;
        SharedUserSetting su = null;
        try {
            String name = parser.getAttributeValue(null, ATTR_NAME);
            String idStr = parser.getAttributeValue(null, "userId");
            int userId = idStr != null ? Integer.parseInt(idStr) : 0;
            if ("true".equals(parser.getAttributeValue(null, "system"))) {
                pkgFlags = 0 | 1;
            }
            if (name == null) {
                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <shared-user> has no name at " + parser.getPositionDescription());
            } else if (userId != 0) {
                SharedUserSetting sharedUserSettingAddSharedUserLPw = addSharedUserLPw(name.intern(), userId, pkgFlags, 0);
                su = sharedUserSettingAddSharedUserLPw;
                if (sharedUserSettingAddSharedUserLPw == null) {
                    PackageManagerService.reportSettingsProblem(6, "Occurred while parsing settings at " + parser.getPositionDescription());
                }
            } else {
                PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: shared-user " + name + " has bad userId " + idStr + " at " + parser.getPositionDescription());
            }
        } catch (NumberFormatException e) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: package " + ((String) null) + " has bad userId " + ((String) null) + " at " + parser.getPositionDescription());
        }
        if (su != null) {
            int outerDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                if (type != 1) {
                    if (type != 3 || parser.getDepth() > outerDepth) {
                        if (type != 3 && type != 4) {
                            String tagName = parser.getName();
                            if (tagName.equals("sigs")) {
                                su.signatures.readXml(parser, this.mPastSignatures);
                            } else if (tagName.equals(TAG_PERMISSIONS)) {
                                readInstallPermissionsLPr(parser, su.getPermissionsState());
                            } else {
                                PackageManagerService.reportSettingsProblem(5, "Unknown element under <shared-user>: " + parser.getName());
                                XmlUtils.skipCurrentTag(parser);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        } else {
            XmlUtils.skipCurrentTag(parser);
        }
    }

    void createNewUserLI(PackageManagerService service, Installer installer, int userHandle, Set<String> userTypeInstallablePackages, String[] disallowedPackages) throws Throwable {
        TimingsTraceAndSlog t = new TimingsTraceAndSlog("PackageSettingsTiming", 262144L);
        t.traceBegin("createNewUser-" + userHandle);
        boolean skipPackageWhitelist = userTypeInstallablePackages == null;
        synchronized (this.mLock) {
            try {
                Collection<PackageSetting> packages = this.mPackages.values();
                int packagesCount = packages.size();
                String[] volumeUuids = new String[packagesCount];
                String[] names = new String[packagesCount];
                int[] appIds = new int[packagesCount];
                String[] seinfos = new String[packagesCount];
                int[] targetSdkVersions = new int[packagesCount];
                Iterator<PackageSetting> packagesIterator = packages.iterator();
                for (int i = 0; i < packagesCount; i++) {
                    try {
                        PackageSetting ps = packagesIterator.next();
                        if (ps.pkg != null) {
                            boolean shouldMaybeInstall = (!ps.isSystem() || ArrayUtils.contains(disallowedPackages, ps.name) || ps.getPkgState().isHiddenUntilInstalled()) ? false : true;
                            boolean shouldReallyInstall = shouldMaybeInstall && (skipPackageWhitelist || userTypeInstallablePackages.contains(ps.name));
                            ps.setInstalled(shouldReallyInstall, userHandle);
                            int uninstallReason = (!shouldMaybeInstall || shouldReallyInstall) ? 0 : 1;
                            ps.setUninstallReason(uninstallReason, userHandle);
                            if (!shouldReallyInstall) {
                                writeKernelMappingLPr(ps);
                            }
                            volumeUuids[i] = ps.volumeUuid;
                            names[i] = ps.name;
                            appIds[i] = ps.appId;
                            seinfos[i] = AndroidPackageUtils.getSeInfo(ps.pkg, ps);
                            targetSdkVersions[i] = ps.pkg.getTargetSdkVersion();
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                t.traceBegin("createAppData");
                try {
                    installer.createAppDataBatched(volumeUuids, names, userHandle, 3, appIds, seinfos, targetSdkVersions);
                } catch (Installer.InstallerException e) {
                    Slog.w(TAG, "Failed to prepare app data", e);
                }
                t.traceEnd();
                synchronized (this.mLock) {
                    applyDefaultPreferredAppsLPw(userHandle);
                }
                t.traceEnd();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void removeUserLPw(int userId) {
        Set<Map.Entry<String, PackageSetting>> entries = this.mPackages.entrySet();
        for (Map.Entry<String, PackageSetting> entry : entries) {
            entry.getValue().removeUser(userId);
        }
        this.mPreferredActivities.remove(userId);
        File file = getUserPackagesStateFile(userId);
        file.delete();
        File file2 = getUserPackagesStateBackupFile(userId);
        file2.delete();
        removeCrossProfileIntentFiltersLPw(userId);
        this.mRuntimePermissionsPersistence.onUserRemovedLPw(userId);
        writePackageListLPr();
        writeKernelRemoveUserLPr(userId);
    }

    void removeCrossProfileIntentFiltersLPw(int userId) {
        synchronized (this.mCrossProfileIntentResolvers) {
            if (this.mCrossProfileIntentResolvers.get(userId) != null) {
                this.mCrossProfileIntentResolvers.remove(userId);
                writePackageRestrictionsLPr(userId);
            }
            int count = this.mCrossProfileIntentResolvers.size();
            for (int i = 0; i < count; i++) {
                int sourceUserId = this.mCrossProfileIntentResolvers.keyAt(i);
                CrossProfileIntentResolver cpir = this.mCrossProfileIntentResolvers.get(sourceUserId);
                boolean needsWriting = false;
                ArraySet<CrossProfileIntentFilter> cpifs = new ArraySet<>(cpir.filterSet());
                for (CrossProfileIntentFilter cpif : cpifs) {
                    if (cpif.getTargetUserId() == userId) {
                        needsWriting = true;
                        cpir.removeFilter(cpif);
                    }
                }
                if (needsWriting) {
                    writePackageRestrictionsLPr(sourceUserId);
                }
            }
        }
    }

    private void setFirstAvailableUid(int uid) {
        if (uid > mFirstAvailableUid) {
            mFirstAvailableUid = uid;
        }
    }

    private int acquireAndRegisterNewAppIdLPw(SettingBase obj) {
        int size = this.mAppIds.size();
        for (int i = mFirstAvailableUid; i < size; i++) {
            if (this.mAppIds.get(i) == null) {
                this.mAppIds.set(i, obj);
                return i + 10000;
            }
        }
        if (size > 9999) {
            return -1;
        }
        this.mAppIds.add(obj);
        return size + 10000;
    }

    public VerifierDeviceIdentity getVerifierDeviceIdentityLPw() throws Throwable {
        if (this.mVerifierDeviceIdentity == null) {
            this.mVerifierDeviceIdentity = VerifierDeviceIdentity.generate();
            writeLPr();
        }
        return this.mVerifierDeviceIdentity;
    }

    public PackageSetting getDisabledSystemPkgLPr(String name) {
        PackageSetting ps = this.mDisabledSysPackages.get(name);
        return ps;
    }

    public PackageSetting getDisabledSystemPkgLPr(PackageSetting enabledPackageSetting) {
        if (enabledPackageSetting == null) {
            return null;
        }
        return getDisabledSystemPkgLPr(enabledPackageSetting.name);
    }

    boolean isEnabledAndMatchLPr(ComponentInfo componentInfo, int flags, int userId) {
        PackageSetting ps = this.mPackages.get(componentInfo.packageName);
        if (ps == null) {
            return false;
        }
        PackageUserState userState = ps.readUserState(userId);
        return userState.isMatch(componentInfo, flags);
    }

    public boolean isEnabledAndMatchLPr(AndroidPackage pkg, ParsedMainComponent component, int flags, int userId) {
        PackageSetting ps = this.mPackages.get(component.getPackageName());
        if (ps == null) {
            return false;
        }
        PackageUserState userState = ps.readUserState(userId);
        return userState.isMatch(pkg.isSystem(), pkg.isEnabled(), component, flags);
    }

    boolean isOrphaned(String packageName) {
        PackageSetting pkg = this.mPackages.get(packageName);
        if (pkg == null) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        return pkg.installSource.isOrphaned;
    }

    int getApplicationEnabledSettingLPr(String packageName, int userId) throws PackageManager.NameNotFoundException {
        PackageSetting pkg = this.mPackages.get(packageName);
        if (pkg == null) {
            throw new PackageManager.NameNotFoundException(packageName);
        }
        return pkg.getEnabled(userId);
    }

    int getComponentEnabledSettingLPr(ComponentName componentName, int userId) throws PackageManager.NameNotFoundException {
        String packageName = componentName.getPackageName();
        PackageSetting pkg = this.mPackages.get(packageName);
        if (pkg == null) {
            throw new PackageManager.NameNotFoundException(componentName.getPackageName());
        }
        String classNameStr = componentName.getClassName();
        return pkg.getCurrentEnabledStateLPr(classNameStr, userId);
    }

    boolean wasPackageEverLaunchedLPr(String packageName, int userId) {
        PackageSetting pkgSetting = this.mPackages.get(packageName);
        if (pkgSetting == null) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        return !pkgSetting.getNotLaunched(userId);
    }

    boolean setPackageStoppedStateLPw(PackageManagerService pm, String packageName, boolean stopped, boolean allowedByPermission, int uid, int userId) {
        int appId = UserHandle.getAppId(uid);
        PackageSetting pkgSetting = this.mPackages.get(packageName);
        if (pkgSetting == null) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        if (!allowedByPermission && appId != pkgSetting.appId) {
            throw new SecurityException("Permission Denial: attempt to change stopped state from pid=" + Binder.getCallingPid() + ", uid=" + uid + ", package uid=" + pkgSetting.appId);
        }
        if (pkgSetting.getStopped(userId) == stopped) {
            return false;
        }
        pkgSetting.setStopped(stopped, userId);
        if (pkgSetting.getNotLaunched(userId)) {
            if (pkgSetting.installSource.installerPackageName != null) {
                pm.notifyFirstLaunch(pkgSetting.name, pkgSetting.installSource.installerPackageName, userId);
            }
            pkgSetting.setNotLaunched(false, userId);
            return true;
        }
        return true;
    }

    void setHarmfulAppWarningLPw(String packageName, CharSequence warning, int userId) {
        PackageSetting pkgSetting = this.mPackages.get(packageName);
        if (pkgSetting == null) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        pkgSetting.setHarmfulAppWarning(userId, warning == null ? null : warning.toString());
    }

    String getHarmfulAppWarningLPr(String packageName, int userId) {
        PackageSetting pkgSetting = this.mPackages.get(packageName);
        if (pkgSetting == null) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        return pkgSetting.getHarmfulAppWarning(userId);
    }

    private static List<UserInfo> getAllUsers(UserManagerService userManager) {
        return getUsers(userManager, false, false);
    }

    private static List<UserInfo> getActiveUsers(UserManagerService userManager, boolean excludeDying) {
        return getUsers(userManager, excludeDying, true);
    }

    private static List<UserInfo> getUsers(UserManagerService userManager, boolean excludeDying, boolean excludePreCreated) {
        long id = Binder.clearCallingIdentity();
        try {
            return userManager.getUsers(true, excludeDying, excludePreCreated);
        } catch (NullPointerException e) {
            return null;
        } finally {
            Binder.restoreCallingIdentity(id);
        }
    }

    List<PackageSetting> getVolumePackagesLPr(String volumeUuid) {
        ArrayList<PackageSetting> res = new ArrayList<>();
        for (int i = 0; i < this.mPackages.size(); i++) {
            PackageSetting setting = this.mPackages.valueAt(i);
            if (Objects.equals(volumeUuid, setting.volumeUuid)) {
                res.add(setting);
            }
        }
        return res;
    }

    static void printFlags(PrintWriter pw, int val, Object[] spec) {
        pw.print("[ ");
        for (int i = 0; i < spec.length; i += 2) {
            int mask = ((Integer) spec[i]).intValue();
            if ((val & mask) != 0) {
                pw.print(spec[i + 1]);
                pw.print(" ");
            }
        }
        pw.print("]");
    }

    void dumpVersionLPr(IndentingPrintWriter pw) {
        pw.increaseIndent();
        for (int i = 0; i < this.mVersion.size(); i++) {
            String volumeUuid = this.mVersion.keyAt(i);
            VersionInfo ver = this.mVersion.valueAt(i);
            if (Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, volumeUuid)) {
                pw.println("Internal:");
            } else if (Objects.equals("primary_physical", volumeUuid)) {
                pw.println("External:");
            } else {
                pw.println("UUID " + volumeUuid + ":");
            }
            pw.increaseIndent();
            pw.printPair(ATTR_SDK_VERSION, Integer.valueOf(ver.sdkVersion));
            pw.printPair(ATTR_DATABASE_VERSION, Integer.valueOf(ver.databaseVersion));
            pw.println();
            pw.printPair(ATTR_FINGERPRINT, ver.fingerprint);
            pw.println();
            pw.decreaseIndent();
        }
        pw.decreaseIndent();
    }

    void dumpPackageLPr(PrintWriter pw, String prefix, String checkinTag, ArraySet<String> permissionNames, PackageSetting ps, SimpleDateFormat sdf, Date date, List<UserInfo> users, boolean dumpAll, boolean dumpAllComponents) {
        Settings settings = this;
        AndroidPackage pkg = ps.pkg;
        if (checkinTag != null) {
            pw.print(checkinTag);
            pw.print(",");
            pw.print(ps.realName != null ? ps.realName : ps.name);
            pw.print(",");
            pw.print(ps.appId);
            pw.print(",");
            pw.print(ps.versionCode);
            pw.print(",");
            pw.print(ps.firstInstallTime);
            pw.print(",");
            pw.print(ps.lastUpdateTime);
            pw.print(",");
            pw.print(ps.installSource.installerPackageName != null ? ps.installSource.installerPackageName : "?");
            pw.println();
            if (pkg != null) {
                pw.print(checkinTag);
                pw.print("-");
                pw.print("splt,");
                pw.print("base,");
                pw.println(pkg.getBaseRevisionCode());
                if (pkg.getSplitNames() != null) {
                    int[] splitRevisionCodes = pkg.getSplitRevisionCodes();
                    for (int i = 0; i < pkg.getSplitNames().length; i++) {
                        pw.print(checkinTag);
                        pw.print("-");
                        pw.print("splt,");
                        pw.print(pkg.getSplitNames()[i]);
                        pw.print(",");
                        pw.println(splitRevisionCodes[i]);
                    }
                }
            }
            for (UserInfo user : users) {
                pw.print(checkinTag);
                pw.print("-");
                pw.print("usr");
                pw.print(",");
                pw.print(user.id);
                pw.print(",");
                pw.print(ps.getInstalled(user.id) ? "I" : "i");
                pw.print(ps.getHidden(user.id) ? "B" : "b");
                pw.print(ps.getSuspended(user.id) ? "SU" : "su");
                pw.print(ps.getStopped(user.id) ? "S" : "s");
                pw.print(ps.getNotLaunched(user.id) ? "l" : "L");
                pw.print(ps.getInstantApp(user.id) ? "IA" : "ia");
                pw.print(ps.getVirtulalPreload(user.id) ? "VPI" : "vpi");
                pw.print(ps.getHarmfulAppWarning(user.id) != null ? "HA" : "ha");
                pw.print(",");
                pw.print(ps.getEnabled(user.id));
                String lastDisabledAppCaller = ps.getLastDisabledAppCaller(user.id);
                pw.print(",");
                pw.print(lastDisabledAppCaller != null ? lastDisabledAppCaller : "?");
                pw.print(",");
                pw.println();
            }
            return;
        }
        pw.print(prefix);
        pw.print("Package [");
        pw.print(ps.realName != null ? ps.realName : ps.name);
        pw.print("] (");
        pw.print(Integer.toHexString(System.identityHashCode(ps)));
        pw.println("):");
        if (ps.realName != null) {
            pw.print(prefix);
            pw.print("  compat name=");
            pw.println(ps.name);
        }
        pw.print(prefix);
        pw.print("  userId=");
        pw.println(ps.appId);
        if (ps.sharedUser != null) {
            pw.print(prefix);
            pw.print("  sharedUser=");
            pw.println(ps.sharedUser);
        }
        pw.print(prefix);
        pw.print("  pkg=");
        pw.println(pkg);
        pw.print(prefix);
        pw.print("  codePath=");
        pw.println(ps.codePathString);
        if (permissionNames == null) {
            pw.print(prefix);
            pw.print("  resourcePath=");
            pw.println(ps.resourcePathString);
            pw.print(prefix);
            pw.print("  legacyNativeLibraryDir=");
            pw.println(ps.legacyNativeLibraryPathString);
            pw.print(prefix);
            pw.print("  primaryCpuAbi=");
            pw.println(ps.primaryCpuAbiString);
            pw.print(prefix);
            pw.print("  secondaryCpuAbi=");
            pw.println(ps.secondaryCpuAbiString);
        }
        pw.print(prefix);
        pw.print("  versionCode=");
        pw.print(ps.versionCode);
        if (pkg != null) {
            pw.print(" minSdk=");
            pw.print(pkg.getMinSdkVersion());
            pw.print(" targetSdk=");
            pw.print(pkg.getTargetSdkVersion());
        }
        pw.println();
        if (pkg != null) {
            pw.print(prefix);
            pw.print("  versionName=");
            pw.println(pkg.getVersionName());
            pw.print(prefix);
            pw.print("  splits=");
            dumpSplitNames(pw, pkg);
            pw.println();
            int apkSigningVersion = pkg.getSigningDetails().signatureSchemeVersion;
            pw.print(prefix);
            pw.print("  apkSigningVersion=");
            pw.println(apkSigningVersion);
            pw.print(prefix);
            pw.print("  applicationInfo=");
            pw.println(pkg.toAppInfoToString());
            pw.print(prefix);
            pw.print("  flags=");
            printFlags(pw, PackageInfoUtils.appInfoFlags(pkg, ps), FLAG_DUMP_SPEC);
            pw.println();
            int privateFlags = PackageInfoUtils.appInfoPrivateFlags(pkg, ps);
            if (privateFlags != 0) {
                pw.print(prefix);
                pw.print("  privateFlags=");
                printFlags(pw, privateFlags, PRIVATE_FLAG_DUMP_SPEC);
                pw.println();
            }
            if (pkg.hasPreserveLegacyExternalStorage()) {
                pw.print(prefix);
                pw.print("  hasPreserveLegacyExternalStorage=true");
                pw.println();
            }
            pw.print(prefix);
            pw.print("  forceQueryable=");
            pw.print(ps.pkg.isForceQueryable());
            if (ps.forceQueryableOverride) {
                pw.print(" (override=true)");
            }
            pw.println();
            if (ps.pkg.getQueriesPackages().isEmpty()) {
                pw.append((CharSequence) prefix).append((CharSequence) "  queriesPackages=").println(ps.pkg.getQueriesPackages());
            }
            if (!ps.pkg.getQueriesIntents().isEmpty()) {
                pw.append((CharSequence) prefix).append((CharSequence) "  queriesIntents=").println(ps.pkg.getQueriesIntents());
            }
            File dataDir = PackageInfoWithoutStateUtils.getDataDir(pkg, UserHandle.myUserId());
            pw.print(prefix);
            pw.print("  dataDir=");
            pw.println(dataDir.getAbsolutePath());
            pw.print(prefix);
            pw.print("  supportsScreens=[");
            boolean first = true;
            if (pkg.isSupportsSmallScreens()) {
                if (1 == 0) {
                    pw.print(", ");
                }
                first = false;
                pw.print("small");
            }
            if (pkg.isSupportsNormalScreens()) {
                if (!first) {
                    pw.print(", ");
                }
                first = false;
                pw.print("medium");
            }
            if (pkg.isSupportsLargeScreens()) {
                if (!first) {
                    pw.print(", ");
                }
                first = false;
                pw.print("large");
            }
            if (pkg.isSupportsExtraLargeScreens()) {
                if (!first) {
                    pw.print(", ");
                }
                first = false;
                pw.print("xlarge");
            }
            if (pkg.isResizeable()) {
                if (!first) {
                    pw.print(", ");
                }
                first = false;
                pw.print("resizeable");
            }
            if (pkg.isAnyDensity()) {
                if (!first) {
                    pw.print(", ");
                }
                first = false;
                pw.print("anyDensity");
            }
            pw.println("]");
            List<String> libraryNames = pkg.getLibraryNames();
            if (libraryNames != null && libraryNames.size() > 0) {
                pw.print(prefix);
                pw.println("  dynamic libraries:");
                for (int i2 = 0; i2 < libraryNames.size(); i2++) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.println(libraryNames.get(i2));
                }
            }
            if (pkg.getStaticSharedLibName() != null) {
                pw.print(prefix);
                pw.println("  static library:");
                pw.print(prefix);
                pw.print("    ");
                pw.print("name:");
                pw.print(pkg.getStaticSharedLibName());
                pw.print(" version:");
                pw.println(pkg.getStaticSharedLibVersion());
            }
            List<String> usesLibraries = pkg.getUsesLibraries();
            if (usesLibraries.size() > 0) {
                pw.print(prefix);
                pw.println("  usesLibraries:");
                int i3 = 0;
                while (true) {
                    File dataDir2 = dataDir;
                    if (i3 >= usesLibraries.size()) {
                        break;
                    }
                    pw.print(prefix);
                    pw.print("    ");
                    pw.println(usesLibraries.get(i3));
                    i3++;
                    dataDir = dataDir2;
                }
            }
            List<String> usesStaticLibraries = pkg.getUsesStaticLibraries();
            long[] usesStaticLibrariesVersions = pkg.getUsesStaticLibrariesVersions();
            if (usesStaticLibraries.size() > 0) {
                pw.print(prefix);
                pw.println("  usesStaticLibraries:");
                int i4 = 0;
                while (true) {
                    boolean first2 = first;
                    if (i4 >= usesStaticLibraries.size()) {
                        break;
                    }
                    pw.print(prefix);
                    pw.print("    ");
                    pw.print(usesStaticLibraries.get(i4));
                    pw.print(" version:");
                    pw.println(usesStaticLibrariesVersions[i4]);
                    i4++;
                    first = first2;
                    libraryNames = libraryNames;
                }
            }
            List<String> usesOptionalLibraries = pkg.getUsesOptionalLibraries();
            if (usesOptionalLibraries.size() > 0) {
                pw.print(prefix);
                pw.println("  usesOptionalLibraries:");
                for (int i5 = 0; i5 < usesOptionalLibraries.size(); i5++) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.println(usesOptionalLibraries.get(i5));
                }
            }
            List<String> usesLibraryFiles = ps.getPkgState().getUsesLibraryFiles();
            if (usesLibraryFiles.size() > 0) {
                pw.print(prefix);
                pw.println("  usesLibraryFiles:");
                for (int i6 = 0; i6 < usesLibraryFiles.size(); i6++) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.println(usesLibraryFiles.get(i6));
                }
            }
            Map<String, ParsedProcess> procs = pkg.getProcesses();
            if (!procs.isEmpty()) {
                pw.print(prefix);
                pw.println("  processes:");
                for (ParsedProcess proc : procs.values()) {
                    pw.print(prefix);
                    pw.print("    ");
                    List<String> usesOptionalLibraries2 = usesOptionalLibraries;
                    pw.println(proc.getName());
                    if (proc.getDeniedPermissions() != null) {
                        Iterator it = proc.getDeniedPermissions().iterator();
                        while (it.hasNext()) {
                            Iterator it2 = it;
                            String deniedPermission = (String) it.next();
                            pw.print(prefix);
                            pw.print("      deny: ");
                            pw.println(deniedPermission);
                            usesStaticLibraries = usesStaticLibraries;
                            it = it2;
                        }
                    }
                    usesOptionalLibraries = usesOptionalLibraries2;
                    usesStaticLibraries = usesStaticLibraries;
                }
            }
        }
        pw.print(prefix);
        pw.print("  timeStamp=");
        date.setTime(ps.timeStamp);
        pw.println(sdf.format(date));
        pw.print(prefix);
        pw.print("  firstInstallTime=");
        date.setTime(ps.firstInstallTime);
        pw.println(sdf.format(date));
        pw.print(prefix);
        pw.print("  lastUpdateTime=");
        date.setTime(ps.lastUpdateTime);
        pw.println(sdf.format(date));
        if (ps.installSource.installerPackageName != null) {
            pw.print(prefix);
            pw.print("  installerPackageName=");
            pw.println(ps.installSource.installerPackageName);
        }
        if (ps.volumeUuid != null) {
            pw.print(prefix);
            pw.print("  volumeUuid=");
            pw.println(ps.volumeUuid);
        }
        pw.print(prefix);
        pw.print("  signatures=");
        pw.println(ps.signatures);
        pw.print(prefix);
        pw.print("  installPermissionsFixed=");
        pw.print(ps.installPermissionsFixed);
        pw.println();
        pw.print(prefix);
        pw.print("  pkgFlags=");
        printFlags(pw, ps.pkgFlags, FLAG_DUMP_SPEC);
        pw.println();
        if (pkg != null && pkg.getOverlayTarget() != null) {
            pw.print(prefix);
            pw.print("  overlayTarget=");
            pw.println(pkg.getOverlayTarget());
            pw.print(prefix);
            pw.print("  overlayCategory=");
            pw.println(pkg.getOverlayCategory());
        }
        if (pkg != null && !pkg.getPermissions().isEmpty()) {
            List<ParsedPermission> perms = pkg.getPermissions();
            pw.print(prefix);
            pw.println("  declared permissions:");
            for (int i7 = 0; i7 < perms.size(); i7++) {
                ParsedPermission perm = perms.get(i7);
                if (permissionNames == null || permissionNames.contains(perm.getName())) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.print(perm.getName());
                    pw.print(": prot=");
                    pw.print(PermissionInfo.protectionToString(perm.getProtectionLevel()));
                    if ((perm.getFlags() & 1) != 0) {
                        pw.print(", COSTS_MONEY");
                    }
                    if ((perm.getFlags() & 2) != 0) {
                        pw.print(", HIDDEN");
                    }
                    if ((perm.getFlags() & 1073741824) != 0) {
                        pw.print(", INSTALLED");
                    }
                    pw.println();
                }
            }
        }
        if ((permissionNames != null || dumpAll) && pkg != null && pkg.getRequestedPermissions() != null && pkg.getRequestedPermissions().size() > 0) {
            List<String> perms2 = pkg.getRequestedPermissions();
            pw.print(prefix);
            pw.println("  requested permissions:");
            for (int i8 = 0; i8 < perms2.size(); i8++) {
                String perm2 = perms2.get(i8);
                if (permissionNames == null || permissionNames.contains(perm2)) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.print(perm2);
                    BasePermission bp = settings.mPermissions.getPermission(perm2);
                    if (bp != null && bp.isHardOrSoftRestricted()) {
                        pw.println(": restricted=true");
                    } else {
                        pw.println();
                    }
                }
            }
        }
        if (ps.sharedUser == null || permissionNames != null || dumpAll) {
            settings.dumpInstallPermissionsLPr(pw, prefix + "  ", permissionNames, ps.getPermissionsState());
        }
        if (dumpAllComponents) {
            settings.dumpComponents(pw, prefix + "  ", ps);
        }
        for (UserInfo user2 : users) {
            pw.print(prefix);
            pw.print("  User ");
            pw.print(user2.id);
            pw.print(": ");
            pw.print("ceDataInode=");
            pw.print(ps.getCeDataInode(user2.id));
            pw.print(" installed=");
            pw.print(ps.getInstalled(user2.id));
            pw.print(" hidden=");
            pw.print(ps.getHidden(user2.id));
            pw.print(" suspended=");
            pw.print(ps.getSuspended(user2.id));
            pw.print(" distractionFlags=");
            pw.print(ps.getDistractionFlags(user2.id));
            pw.print(" stopped=");
            pw.print(ps.getStopped(user2.id));
            pw.print(" notLaunched=");
            pw.print(ps.getNotLaunched(user2.id));
            pw.print(" enabled=");
            pw.print(ps.getEnabled(user2.id));
            pw.print(" instant=");
            pw.print(ps.getInstantApp(user2.id));
            pw.print(" virtual=");
            pw.println(ps.getVirtulalPreload(user2.id));
            if (ps.getSuspended(user2.id)) {
                pw.print(prefix);
                pw.println("  Suspend params:");
                PackageUserState pus = ps.readUserState(user2.id);
                for (int i9 = 0; i9 < pus.suspendParams.size(); i9++) {
                    pw.print(prefix);
                    pw.print("    suspendingPackage=");
                    pw.print((String) pus.suspendParams.keyAt(i9));
                    PackageUserState.SuspendParams params = (PackageUserState.SuspendParams) pus.suspendParams.valueAt(i9);
                    if (params != null) {
                        pw.print(" dialogInfo=");
                        pw.print(params.dialogInfo);
                    }
                    pw.println();
                }
            }
            String[] overlayPaths = ps.getOverlayPaths(user2.id);
            if (overlayPaths != null && overlayPaths.length > 0) {
                pw.print(prefix);
                pw.println("  overlay paths:");
                for (String path : overlayPaths) {
                    pw.print(prefix);
                    pw.print("    ");
                    pw.println(path);
                }
            }
            Map<String, String[]> sharedLibraryOverlayPaths = ps.getOverlayPathsForLibrary(user2.id);
            if (sharedLibraryOverlayPaths != null) {
                Iterator<Map.Entry<String, String[]>> it3 = sharedLibraryOverlayPaths.entrySet().iterator();
                while (it3.hasNext()) {
                    Map.Entry<String, String[]> libOverlayPaths = it3.next();
                    if (libOverlayPaths.getValue() != null) {
                        pw.print(prefix);
                        pw.print("  ");
                        pw.print(libOverlayPaths.getKey());
                        pw.println(" overlay paths:");
                        String[] value = libOverlayPaths.getValue();
                        int length = value.length;
                        Iterator<Map.Entry<String, String[]>> it4 = it3;
                        int i10 = 0;
                        while (i10 < length) {
                            int i11 = length;
                            String path2 = value[i10];
                            pw.print(prefix);
                            pw.print("    ");
                            pw.println(path2);
                            i10++;
                            length = i11;
                        }
                        it3 = it4;
                    }
                }
            }
            String lastDisabledAppCaller2 = ps.getLastDisabledAppCaller(user2.id);
            if (lastDisabledAppCaller2 != null) {
                pw.print(prefix);
                pw.print("    lastDisabledCaller: ");
                pw.println(lastDisabledAppCaller2);
            }
            if (ps.sharedUser == null) {
                PermissionsState permissionsState = ps.getPermissionsState();
                settings.dumpGidsLPr(pw, prefix + "    ", permissionsState.computeGids(user2.id));
                dumpRuntimePermissionsLPr(pw, prefix + "    ", permissionNames, permissionsState.getRuntimePermissionStates(user2.id), dumpAll);
            }
            String harmfulAppWarning = ps.getHarmfulAppWarning(user2.id);
            if (harmfulAppWarning != null) {
                pw.print(prefix);
                pw.print("      harmfulAppWarning: ");
                pw.println(harmfulAppWarning);
            }
            if (permissionNames == null) {
                ArraySet<String> cmp = ps.getDisabledComponents(user2.id);
                if (cmp != null && cmp.size() > 0) {
                    pw.print(prefix);
                    pw.println("    disabledComponents:");
                    for (String s : cmp) {
                        pw.print(prefix);
                        pw.print("      ");
                        pw.println(s);
                    }
                }
                ArraySet<String> cmp2 = ps.getEnabledComponents(user2.id);
                if (cmp2 != null && cmp2.size() > 0) {
                    pw.print(prefix);
                    pw.println("    enabledComponents:");
                    for (String s2 : cmp2) {
                        pw.print(prefix);
                        pw.print("      ");
                        pw.println(s2);
                    }
                }
            }
            settings = this;
        }
    }

    void dumpPackagesLPr(PrintWriter pw, String packageName, ArraySet<String> permissionNames, DumpState dumpState, boolean checkin) {
        boolean printedSomething;
        PrintWriter printWriter = pw;
        String str = packageName;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        boolean printedSomething2 = false;
        boolean dumpAllComponents = dumpState.isOptionEnabled(2);
        List<UserInfo> users = getAllUsers(UserManagerService.getInstance());
        Iterator<PackageSetting> it = this.mPackages.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PackageSetting ps = it.next();
            if (str == null || str.equals(ps.realName) || str.equals(ps.name)) {
                if (permissionNames == null || ps.getPermissionsState().hasRequestedPermission(permissionNames)) {
                    if (!checkin && str != null) {
                        dumpState.setSharedUser(ps.sharedUser);
                    }
                    if (!checkin && !printedSomething2) {
                        if (dumpState.onTitlePrinted()) {
                            pw.println();
                        }
                        printWriter.println("Packages:");
                        printedSomething = true;
                    } else {
                        printedSomething = printedSomething2;
                    }
                    dumpPackageLPr(pw, "  ", checkin ? TAG_PACKAGE : null, permissionNames, ps, sdf, date, users, str != null, dumpAllComponents);
                    printedSomething2 = printedSomething;
                }
            }
        }
        boolean printedSomething3 = false;
        if (this.mRenamedPackages.size() > 0 && permissionNames == null) {
            for (Map.Entry<String, String> e : this.mRenamedPackages.entrySet()) {
                if (str == null || str.equals(e.getKey()) || str.equals(e.getValue())) {
                    if (!checkin) {
                        if (!printedSomething3) {
                            if (dumpState.onTitlePrinted()) {
                                pw.println();
                            }
                            printWriter.println("Renamed packages:");
                            printedSomething3 = true;
                        }
                        printWriter.print("  ");
                    } else {
                        printWriter.print("ren,");
                    }
                    printWriter.print(e.getKey());
                    printWriter.print(checkin ? " -> " : ",");
                    printWriter.println(e.getValue());
                }
            }
        }
        boolean printedSomething4 = false;
        if (this.mDisabledSysPackages.size() > 0 && permissionNames == null) {
            for (PackageSetting ps2 : this.mDisabledSysPackages.values()) {
                if (str == null || str.equals(ps2.realName) || str.equals(ps2.name)) {
                    if (!checkin && !printedSomething4) {
                        if (dumpState.onTitlePrinted()) {
                            pw.println();
                        }
                        printWriter.println("Hidden system packages:");
                        printedSomething4 = true;
                    }
                    dumpPackageLPr(pw, "  ", checkin ? "dis" : null, permissionNames, ps2, sdf, date, users, str != null, dumpAllComponents);
                    printWriter = pw;
                    str = packageName;
                }
            }
        }
    }

    void dumpPackagesProto(ProtoOutputStream proto) {
        List<UserInfo> users = getAllUsers(UserManagerService.getInstance());
        int count = this.mPackages.size();
        for (int i = 0; i < count; i++) {
            PackageSetting ps = this.mPackages.valueAt(i);
            ps.dumpDebug(proto, 2246267895813L, users);
        }
    }

    void dumpPermissionsLPr(PrintWriter pw, String packageName, ArraySet<String> permissionNames, DumpState dumpState) {
        this.mPermissions.dumpPermissions(pw, packageName, permissionNames, this.mReadExternalStorageEnforced == Boolean.TRUE, dumpState);
    }

    void dumpSharedUsersLPr(PrintWriter pw, String packageName, ArraySet<String> permissionNames, DumpState dumpState, boolean checkin) {
        boolean printedSomething;
        boolean printedSomething2 = false;
        for (SharedUserSetting su : this.mSharedUsers.values()) {
            if (packageName == null || su == dumpState.getSharedUser()) {
                if (permissionNames == null || su.getPermissionsState().hasRequestedPermission(permissionNames)) {
                    if (checkin) {
                        pw.print("suid,");
                        pw.print(su.userId);
                        pw.print(",");
                        pw.println(su.name);
                    } else {
                        if (printedSomething2) {
                            printedSomething = printedSomething2;
                        } else {
                            if (dumpState.onTitlePrinted()) {
                                pw.println();
                            }
                            pw.println("Shared users:");
                            printedSomething = true;
                        }
                        pw.print("  SharedUser [");
                        pw.print(su.name);
                        pw.print("] (");
                        pw.print(Integer.toHexString(System.identityHashCode(su)));
                        pw.println("):");
                        pw.print("    ");
                        pw.print("userId=");
                        pw.println(su.userId);
                        pw.print("    ");
                        pw.println("Packages");
                        int numPackages = su.packages.size();
                        for (int i = 0; i < numPackages; i++) {
                            PackageSetting ps = su.packages.valueAt(i);
                            if (ps != null) {
                                pw.print("      ");
                                pw.println(ps.toString());
                            } else {
                                pw.print("      ");
                                pw.println("NULL?!");
                            }
                        }
                        if (dumpState.isOptionEnabled(4)) {
                            printedSomething2 = printedSomething;
                        } else {
                            PermissionsState permissionsState = su.getPermissionsState();
                            dumpInstallPermissionsLPr(pw, "    ", permissionNames, permissionsState);
                            int[] userIds = UserManagerService.getInstance().getUserIds();
                            int length = userIds.length;
                            int i2 = 0;
                            while (i2 < length) {
                                int userId = userIds[i2];
                                int[] gids = permissionsState.computeGids(userId);
                                List<PermissionsState.PermissionState> permissions = permissionsState.getRuntimePermissionStates(userId);
                                if (!ArrayUtils.isEmpty(gids) || !permissions.isEmpty()) {
                                    pw.print("    ");
                                    pw.print("User ");
                                    pw.print(userId);
                                    pw.println(": ");
                                    dumpGidsLPr(pw, "      ", gids);
                                    dumpRuntimePermissionsLPr(pw, "      ", permissionNames, permissions, packageName != null);
                                }
                                i2++;
                                length = length;
                                userIds = userIds;
                                permissionsState = permissionsState;
                            }
                            printedSomething2 = printedSomething;
                        }
                    }
                }
            }
        }
    }

    void dumpSharedUsersProto(ProtoOutputStream proto) {
        int count = this.mSharedUsers.size();
        for (int i = 0; i < count; i++) {
            this.mSharedUsers.valueAt(i).dumpDebug(proto, 2246267895814L);
        }
    }

    void dumpReadMessagesLPr(PrintWriter pw, DumpState dumpState) {
        pw.println("Settings parse messages:");
        pw.print(this.mReadMessages.toString());
    }

    private static void dumpSplitNames(PrintWriter pw, AndroidPackage pkg) {
        if (pkg == null) {
            pw.print(UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN);
            return;
        }
        pw.print("[");
        pw.print("base");
        if (pkg.getBaseRevisionCode() != 0) {
            pw.print(":");
            pw.print(pkg.getBaseRevisionCode());
        }
        String[] splitNames = pkg.getSplitNames();
        int[] splitRevisionCodes = pkg.getSplitRevisionCodes();
        if (splitNames != null) {
            for (int i = 0; i < splitNames.length; i++) {
                pw.print(", ");
                pw.print(splitNames[i]);
                if (splitRevisionCodes[i] != 0) {
                    pw.print(":");
                    pw.print(splitRevisionCodes[i]);
                }
            }
        }
        pw.print("]");
    }

    void dumpGidsLPr(PrintWriter pw, String prefix, int[] gids) {
        if (!ArrayUtils.isEmpty(gids)) {
            pw.print(prefix);
            pw.print("gids=");
            pw.println(PackageManagerService.arrayToString(gids));
        }
    }

    void dumpRuntimePermissionsLPr(PrintWriter pw, String prefix, ArraySet<String> permissionNames, List<PermissionsState.PermissionState> permissionStates, boolean dumpAll) {
        if (!permissionStates.isEmpty() || dumpAll) {
            pw.print(prefix);
            pw.println("runtime permissions:");
            for (PermissionsState.PermissionState permissionState : permissionStates) {
                if (permissionNames == null || permissionNames.contains(permissionState.getName())) {
                    pw.print(prefix);
                    pw.print("  ");
                    pw.print(permissionState.getName());
                    pw.print(": granted=");
                    pw.print(permissionState.isGranted());
                    pw.println(permissionFlagsToString(", flags=", permissionState.getFlags()));
                }
            }
        }
    }

    private static String permissionFlagsToString(String prefix, int flags) {
        StringBuilder flagsString = null;
        while (flags != 0) {
            if (flagsString == null) {
                flagsString = new StringBuilder();
                flagsString.append(prefix);
                flagsString.append("[ ");
            }
            int flag = 1 << Integer.numberOfTrailingZeros(flags);
            flags &= ~flag;
            flagsString.append(PackageManager.permissionFlagToString(flag));
            if (flags != 0) {
                flagsString.append('|');
            }
        }
        if (flagsString != null) {
            flagsString.append(']');
            return flagsString.toString();
        }
        return "";
    }

    void dumpInstallPermissionsLPr(PrintWriter pw, String prefix, ArraySet<String> permissionNames, PermissionsState permissionsState) {
        List<PermissionsState.PermissionState> permissionStates = permissionsState.getInstallPermissionStates();
        if (!permissionStates.isEmpty()) {
            pw.print(prefix);
            pw.println("install permissions:");
            for (PermissionsState.PermissionState permissionState : permissionStates) {
                if (permissionNames == null || permissionNames.contains(permissionState.getName())) {
                    pw.print(prefix);
                    pw.print("  ");
                    pw.print(permissionState.getName());
                    pw.print(": granted=");
                    pw.print(permissionState.isGranted());
                    pw.println(permissionFlagsToString(", flags=", permissionState.getFlags()));
                }
            }
        }
    }

    void dumpComponents(PrintWriter pw, String prefix, PackageSetting ps) {
        dumpComponents(pw, prefix, "activities:", ps.pkg.getActivities());
        dumpComponents(pw, prefix, "services:", ps.pkg.getServices());
        dumpComponents(pw, prefix, "receivers:", ps.pkg.getReceivers());
        dumpComponents(pw, prefix, "providers:", ps.pkg.getProviders());
        dumpComponents(pw, prefix, "instrumentations:", ps.pkg.getInstrumentations());
    }

    void dumpComponents(PrintWriter pw, String prefix, String label, List<? extends ParsedComponent> list) {
        int size = CollectionUtils.size(list);
        if (size == 0) {
            return;
        }
        pw.print(prefix);
        pw.println(label);
        for (int i = 0; i < size; i++) {
            ParsedComponent component = list.get(i);
            pw.print(prefix);
            pw.print("  ");
            pw.println(component.getComponentName().flattenToShortString());
        }
    }

    public void writeRuntimePermissionsForUserLPr(int userId, boolean sync) {
        if (sync) {
            this.mRuntimePermissionsPersistence.writePermissionsForUserSyncLPr(userId);
        } else {
            this.mRuntimePermissionsPersistence.writePermissionsForUserAsyncLPr(userId);
        }
    }

    private static class KeySetToValueMap<K, V> implements Map<K, V> {
        private final Set<K> mKeySet;
        private final V mValue;

        KeySetToValueMap(Set<K> keySet, V value) {
            this.mKeySet = keySet;
            this.mValue = value;
        }

        @Override // java.util.Map
        public int size() {
            return this.mKeySet.size();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.mKeySet.isEmpty();
        }

        @Override // java.util.Map
        public boolean containsKey(Object key) {
            return this.mKeySet.contains(key);
        }

        @Override // java.util.Map
        public boolean containsValue(Object value) {
            return this.mValue == value;
        }

        @Override // java.util.Map
        public V get(Object key) {
            return this.mValue;
        }

        @Override // java.util.Map
        public V put(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public V remove(Object key) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> m) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            return this.mKeySet;
        }

        @Override // java.util.Map
        public Collection<V> values() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            throw new UnsupportedOperationException();
        }
    }

    private final class RuntimePermissionPersistence {
        private static final int INITIAL_VERSION = 0;
        private static final long MAX_WRITE_PERMISSIONS_DELAY_MILLIS = 2000;
        private static final int UPGRADE_VERSION = -1;
        private static final long WRITE_PERMISSIONS_DELAY_MILLIS = 200;
        private String mExtendedFingerprint;
        private final Object mPersistenceLock;
        private final RuntimePermissionsPersistence mPersistence = RuntimePermissionsPersistence.createInstance();
        private final Handler mHandler = new MyHandler();
        private final SparseBooleanArray mWriteScheduled = new SparseBooleanArray();
        private final SparseLongArray mLastNotWrittenMutationTimesMillis = new SparseLongArray();
        private final SparseIntArray mVersions = new SparseIntArray();
        private final SparseArray<String> mFingerprints = new SparseArray<>();
        private final SparseBooleanArray mPermissionUpgradeNeeded = new SparseBooleanArray();

        public RuntimePermissionPersistence(Object persistenceLock) {
            this.mPersistenceLock = persistenceLock;
        }

        int getVersionLPr(int userId) {
            return this.mVersions.get(userId, 0);
        }

        void setVersionLPr(int version, int userId) {
            this.mVersions.put(userId, version);
            writePermissionsForUserAsyncLPr(userId);
        }

        public boolean isPermissionUpgradeNeeded(int userId) {
            return this.mPermissionUpgradeNeeded.get(userId, true);
        }

        public void updateRuntimePermissionsFingerprintLPr(int userId) {
            String str = this.mExtendedFingerprint;
            if (str == null) {
                throw new RuntimeException("The version of the permission controller hasn't been set before trying to update the fingerprint.");
            }
            this.mFingerprints.put(userId, str);
            writePermissionsForUserAsyncLPr(userId);
        }

        public void setPermissionControllerVersion(long version) {
            int numUser = this.mFingerprints.size();
            this.mExtendedFingerprint = getExtendedFingerprint(version);
            for (int i = 0; i < numUser; i++) {
                int userId = this.mFingerprints.keyAt(i);
                String fingerprint = this.mFingerprints.valueAt(i);
                this.mPermissionUpgradeNeeded.put(userId, !TextUtils.equals(this.mExtendedFingerprint, fingerprint));
            }
        }

        private String getExtendedFingerprint(long version) {
            return Build.FINGERPRINT + "?pc_version=" + version;
        }

        public void writePermissionsForUserSyncLPr(int userId) {
            this.mHandler.removeMessages(userId);
            writePermissionsSync(userId);
        }

        public void writePermissionsForUserAsyncLPr(int userId) {
            long currentTimeMillis = SystemClock.uptimeMillis();
            if (this.mWriteScheduled.get(userId)) {
                this.mHandler.removeMessages(userId);
                long lastNotWrittenMutationTimeMillis = this.mLastNotWrittenMutationTimesMillis.get(userId);
                long timeSinceLastNotWrittenMutationMillis = currentTimeMillis - lastNotWrittenMutationTimeMillis;
                if (timeSinceLastNotWrittenMutationMillis >= MAX_WRITE_PERMISSIONS_DELAY_MILLIS) {
                    this.mHandler.obtainMessage(userId).sendToTarget();
                    return;
                }
                long maxDelayMillis = Math.max((MAX_WRITE_PERMISSIONS_DELAY_MILLIS + lastNotWrittenMutationTimeMillis) - currentTimeMillis, 0L);
                long writeDelayMillis = Math.min(WRITE_PERMISSIONS_DELAY_MILLIS, maxDelayMillis);
                Message message = this.mHandler.obtainMessage(userId);
                this.mHandler.sendMessageDelayed(message, writeDelayMillis);
                return;
            }
            this.mLastNotWrittenMutationTimesMillis.put(userId, currentTimeMillis);
            Message message2 = this.mHandler.obtainMessage(userId);
            this.mHandler.sendMessageDelayed(message2, WRITE_PERMISSIONS_DELAY_MILLIS);
            this.mWriteScheduled.put(userId, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writePermissionsSync(int userId) {
            RuntimePermissionsState runtimePermissions;
            synchronized (this.mPersistenceLock) {
                this.mWriteScheduled.delete(userId);
                int version = this.mVersions.get(userId, 0);
                String fingerprint = this.mFingerprints.get(userId);
                Map<String, List<RuntimePermissionsState.PermissionState>> packagePermissions = new ArrayMap<>();
                int packagesSize = Settings.this.mPackages.size();
                for (int i = 0; i < packagesSize; i++) {
                    String packageName = Settings.this.mPackages.keyAt(i);
                    PackageSetting packageSetting = Settings.this.mPackages.valueAt(i);
                    if (packageSetting.sharedUser == null) {
                        List<RuntimePermissionsState.PermissionState> permissions = getPermissionsFromPermissionsState(packageSetting.getPermissionsState(), userId);
                        packagePermissions.put(packageName, permissions);
                    }
                }
                Map<String, List<RuntimePermissionsState.PermissionState>> sharedUserPermissions = new ArrayMap<>();
                int sharedUsersSize = Settings.this.mSharedUsers.size();
                for (int i2 = 0; i2 < sharedUsersSize; i2++) {
                    String sharedUserName = Settings.this.mSharedUsers.keyAt(i2);
                    SharedUserSetting sharedUserSetting = Settings.this.mSharedUsers.valueAt(i2);
                    List<RuntimePermissionsState.PermissionState> permissions2 = getPermissionsFromPermissionsState(sharedUserSetting.getPermissionsState(), userId);
                    sharedUserPermissions.put(sharedUserName, permissions2);
                }
                runtimePermissions = new RuntimePermissionsState(version, fingerprint, packagePermissions, sharedUserPermissions);
            }
            this.mPersistence.writeForUser(runtimePermissions, UserHandle.of(userId));
        }

        private List<RuntimePermissionsState.PermissionState> getPermissionsFromPermissionsState(PermissionsState permissionsState, int userId) {
            List<PermissionsState.PermissionState> permissionStates = permissionsState.getRuntimePermissionStates(userId);
            List<RuntimePermissionsState.PermissionState> permissions = new ArrayList<>();
            int permissionStatesSize = permissionStates.size();
            for (int i = 0; i < permissionStatesSize; i++) {
                PermissionsState.PermissionState permissionState = permissionStates.get(i);
                RuntimePermissionsState.PermissionState permission = new RuntimePermissionsState.PermissionState(permissionState.getName(), permissionState.isGranted(), permissionState.getFlags());
                permissions.add(permission);
            }
            return permissions;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onUserRemovedLPw(int userId) {
            this.mHandler.removeMessages(userId);
            for (SettingBase sb : Settings.this.mPackages.values()) {
                revokeRuntimePermissionsAndClearFlags(sb, userId);
            }
            for (SettingBase sb2 : Settings.this.mSharedUsers.values()) {
                revokeRuntimePermissionsAndClearFlags(sb2, userId);
            }
            this.mPermissionUpgradeNeeded.delete(userId);
            this.mVersions.delete(userId);
            this.mFingerprints.remove(userId);
        }

        private void revokeRuntimePermissionsAndClearFlags(SettingBase sb, int userId) {
            PermissionsState permissionsState = sb.getPermissionsState();
            for (PermissionsState.PermissionState permissionState : permissionsState.getRuntimePermissionStates(userId)) {
                BasePermission bp = Settings.this.mPermissions.getPermission(permissionState.getName());
                if (bp != null) {
                    permissionsState.revokeRuntimePermission(bp, userId);
                    permissionsState.updatePermissionFlags(bp, userId, 261119, 0);
                }
            }
        }

        public void deleteUserRuntimePermissionsFile(int userId) {
            this.mPersistence.deleteForUser(UserHandle.of(userId));
        }

        public void readStateForUserSyncLPr(int userId) {
            RuntimePermissionPersistence runtimePermissionPersistence = this;
            RuntimePermissionsState runtimePermissions = runtimePermissionPersistence.mPersistence.readForUser(UserHandle.of(userId));
            if (runtimePermissions == null) {
                readLegacyStateForUserSyncLPr(userId);
                writePermissionsForUserAsyncLPr(userId);
                return;
            }
            int version = runtimePermissions.getVersion();
            if (version == -1) {
                version = -1;
            }
            runtimePermissionPersistence.mVersions.put(userId, version);
            String fingerprint = runtimePermissions.getFingerprint();
            runtimePermissionPersistence.mFingerprints.put(userId, fingerprint);
            boolean isUpgradeToR = Settings.this.getInternalVersion().sdkVersion < 30;
            Map<String, List<RuntimePermissionsState.PermissionState>> packagePermissions = runtimePermissions.getPackagePermissions();
            int packagesSize = Settings.this.mPackages.size();
            for (int i = 0; i < packagesSize; i++) {
                String packageName = Settings.this.mPackages.keyAt(i);
                PackageSetting packageSetting = Settings.this.mPackages.valueAt(i);
                List<RuntimePermissionsState.PermissionState> permissions = packagePermissions.get(packageName);
                if (permissions != null) {
                    runtimePermissionPersistence.readPermissionsStateLpr(permissions, packageSetting.getPermissionsState(), userId);
                } else if (packageSetting.sharedUser == null && !isUpgradeToR) {
                    Slog.w(Settings.TAG, "Missing permission state for package: " + packageName);
                    packageSetting.getPermissionsState().setMissing(true, userId);
                }
            }
            Map<String, List<RuntimePermissionsState.PermissionState>> sharedUserPermissions = runtimePermissions.getSharedUserPermissions();
            int sharedUsersSize = Settings.this.mSharedUsers.size();
            int i2 = 0;
            while (i2 < sharedUsersSize) {
                String sharedUserName = Settings.this.mSharedUsers.keyAt(i2);
                SharedUserSetting sharedUserSetting = Settings.this.mSharedUsers.valueAt(i2);
                List<RuntimePermissionsState.PermissionState> permissions2 = sharedUserPermissions.get(sharedUserName);
                if (permissions2 != null) {
                    runtimePermissionPersistence.readPermissionsStateLpr(permissions2, sharedUserSetting.getPermissionsState(), userId);
                } else if (!isUpgradeToR) {
                    Slog.w(Settings.TAG, "Missing permission state for shared user: " + sharedUserName);
                    sharedUserSetting.getPermissionsState().setMissing(true, userId);
                }
                i2++;
                runtimePermissionPersistence = this;
            }
        }

        private void readPermissionsStateLpr(List<RuntimePermissionsState.PermissionState> permissions, PermissionsState permissionsState, int userId) {
            int permissionsSize = permissions.size();
            for (int i = 0; i < permissionsSize; i++) {
                RuntimePermissionsState.PermissionState permission = permissions.get(i);
                String name = permission.getName();
                BasePermission basePermission = Settings.this.mPermissions.getPermission(name);
                if (basePermission == null) {
                    Slog.w("PackageManager", "Unknown permission:" + name);
                } else {
                    boolean granted = permission.isGranted();
                    int flags = permission.getFlags();
                    if (granted) {
                        permissionsState.grantRuntimePermission(basePermission, userId);
                        permissionsState.updatePermissionFlags(basePermission, userId, 261119, flags);
                    } else {
                        permissionsState.updatePermissionFlags(basePermission, userId, 261119, flags);
                    }
                }
            }
        }

        private void readLegacyStateForUserSyncLPr(int userId) {
            File permissionsFile = Settings.this.getUserRuntimePermissionsFile(userId);
            if (!permissionsFile.exists()) {
                return;
            }
            try {
                FileInputStream in = new AtomicFile(permissionsFile).openRead();
                try {
                    try {
                        XmlPullParser parser = Xml.newPullParser();
                        parser.setInput(in, null);
                        parseRuntimePermissionsLPr(parser, userId);
                        IoUtils.closeQuietly(in);
                    } catch (IOException | XmlPullParserException e) {
                        throw new IllegalStateException("Failed parsing permissions file: " + permissionsFile, e);
                    }
                } catch (Throwable th) {
                    IoUtils.closeQuietly(in);
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                Slog.i("PackageManager", "No permissions state");
            }
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0056  */
        private void parseRuntimePermissionsLPr(XmlPullParser parser, int userId) throws XmlPullParserException, IOException {
            byte b;
            int outerDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                if (type != 1) {
                    if (type != 3 || parser.getDepth() > outerDepth) {
                        if (type != 3 && type != 4) {
                            String name = parser.getName();
                            int iHashCode = name.hashCode();
                            if (iHashCode != 111052) {
                                if (iHashCode != 160289295) {
                                    if (iHashCode == 485578803 && name.equals(Settings.TAG_SHARED_USER)) {
                                        b = 2;
                                    } else {
                                        b = -1;
                                    }
                                } else if (name.equals(Settings.TAG_RUNTIME_PERMISSIONS)) {
                                    b = 0;
                                } else {
                                    b = -1;
                                }
                            } else if (name.equals(Settings.TAG_PACKAGE)) {
                                b = 1;
                            } else {
                                b = -1;
                            }
                            if (b == 0) {
                                int version = XmlUtils.readIntAttribute(parser, "version", -1);
                                this.mVersions.put(userId, version);
                                String fingerprint = parser.getAttributeValue(null, Settings.ATTR_FINGERPRINT);
                                this.mFingerprints.put(userId, fingerprint);
                            } else if (b == 1) {
                                String name2 = parser.getAttributeValue(null, Settings.ATTR_NAME);
                                PackageSetting ps = Settings.this.mPackages.get(name2);
                                if (ps == null) {
                                    Slog.w("PackageManager", "Unknown package:" + name2);
                                    XmlUtils.skipCurrentTag(parser);
                                } else {
                                    parsePermissionsLPr(parser, ps.getPermissionsState(), userId);
                                }
                            } else if (b == 2) {
                                String name3 = parser.getAttributeValue(null, Settings.ATTR_NAME);
                                SharedUserSetting sus = Settings.this.mSharedUsers.get(name3);
                                if (sus == null) {
                                    Slog.w("PackageManager", "Unknown shared user:" + name3);
                                    XmlUtils.skipCurrentTag(parser);
                                } else {
                                    parsePermissionsLPr(parser, sus.getPermissionsState(), userId);
                                }
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private void parsePermissionsLPr(XmlPullParser parser, PermissionsState permissionsState, int userId) throws XmlPullParserException, IOException {
            int outerDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                boolean granted = true;
                if (type != 1) {
                    if (type != 3 || parser.getDepth() > outerDepth) {
                        if (type != 3 && type != 4) {
                            String name = parser.getName();
                            byte b = -1;
                            if (name.hashCode() == 3242771 && name.equals(Settings.TAG_ITEM)) {
                                b = 0;
                            }
                            if (b == 0) {
                                String name2 = parser.getAttributeValue(null, Settings.ATTR_NAME);
                                BasePermission bp = Settings.this.mPermissions.getPermission(name2);
                                if (bp != null) {
                                    String grantedStr = parser.getAttributeValue(null, Settings.ATTR_GRANTED);
                                    if (grantedStr != null && !Boolean.parseBoolean(grantedStr)) {
                                        granted = false;
                                    }
                                    String flagsStr = parser.getAttributeValue(null, Settings.ATTR_FLAGS);
                                    int flags = flagsStr != null ? Integer.parseInt(flagsStr, 16) : 0;
                                    if (granted) {
                                        permissionsState.grantRuntimePermission(bp, userId);
                                        permissionsState.updatePermissionFlags(bp, userId, 261119, flags);
                                    } else {
                                        permissionsState.updatePermissionFlags(bp, userId, 261119, flags);
                                    }
                                } else {
                                    Slog.w("PackageManager", "Unknown permission:" + name2);
                                    XmlUtils.skipCurrentTag(parser);
                                }
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private final class MyHandler extends Handler {
            public MyHandler() {
                super(BackgroundThread.getHandler().getLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int userId = message.what;
                Runnable callback = (Runnable) message.obj;
                RuntimePermissionPersistence.this.writePermissionsSync(userId);
                if (callback != null) {
                    callback.run();
                }
            }
        }
    }
}
