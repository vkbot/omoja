.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$KeySetToValueMap;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DISTRACTION_FLAGS:Ljava/lang/String; = "distraction_flags"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_UNINSTALL_REASON:Ljava/lang/String; = "uninstall-reason"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MIME_GROUP:Ljava/lang/String; = "mime-group"

.field private static final TAG_MIME_TYPE:Ljava/lang/String; = "mime-type"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPEND_PARAMS:Ljava/lang/String; = "suspend-params"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCopySettingsFilename:Ljava/io/File;

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherAppIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private mUsingPackagesXML:Z

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private overlayUIDs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 330
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3808
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3809
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3810
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4678
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4679
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4680
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v9, "DEBUGGABLE"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 4681
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v9

    const-string v11, "HAS_CODE"

    const/4 v12, 0x5

    aput-object v11, v4, v12

    .line 4682
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const-string v15, "PERSISTENT"

    const/16 v16, 0x7

    aput-object v15, v4, v16

    .line 4683
    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v11

    const-string v18, "FACTORY_TEST"

    const/16 v19, 0x9

    aput-object v18, v4, v19

    .line 4684
    const/16 v18, 0x20

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const-string v22, "ALLOW_TASK_REPARENTING"

    const/16 v23, 0xb

    aput-object v22, v4, v23

    .line 4685
    const/16 v22, 0x40

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v24, 0xc

    aput-object v22, v4, v24

    const-string v25, "ALLOW_CLEAR_USER_DATA"

    const/16 v26, 0xd

    aput-object v25, v4, v26

    .line 4686
    const/16 v25, 0x80

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v27, 0xe

    aput-object v25, v4, v27

    const/16 v28, 0xf

    const-string v29, "UPDATED_SYSTEM_APP"

    aput-object v29, v4, v28

    .line 4687
    const/16 v28, 0x100

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v15

    const/16 v28, 0x11

    const-string v29, "TEST_ONLY"

    aput-object v29, v4, v28

    .line 4688
    const/16 v28, 0x4000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const/16 v28, 0x13

    const-string v29, "VM_SAFE_MODE"

    aput-object v29, v4, v28

    .line 4689
    const v28, 0x8000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const/16 v28, 0x15

    const-string v29, "ALLOW_BACKUP"

    aput-object v29, v4, v28

    .line 4690
    const/high16 v28, 0x10000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const/16 v28, 0x17

    const-string v29, "KILL_AFTER_RESTORE"

    aput-object v29, v4, v28

    .line 4691
    const/high16 v28, 0x20000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const/16 v28, 0x19

    const-string v29, "RESTORE_ANY_VERSION"

    aput-object v29, v4, v28

    .line 4692
    const/high16 v28, 0x40000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const/16 v28, 0x1b

    const-string v29, "EXTERNAL_STORAGE"

    aput-object v29, v4, v28

    .line 4693
    const/high16 v28, 0x100000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const/16 v28, 0x1d

    const-string v29, "LARGE_HEAP"

    aput-object v29, v4, v28

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4696
    const/16 v4, 0x30

    new-array v4, v4, [Ljava/lang/Object;

    .line 4697
    const/16 v28, 0x400

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4698
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v10

    .line 4699
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v12

    .line 4700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v16

    .line 4701
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v11

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v19

    .line 4702
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v21

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v4, v23

    .line 4703
    aput-object v8, v4, v24

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v4, v26

    .line 4704
    aput-object v20, v4, v27

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4705
    aput-object v22, v4, v15

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4706
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4707
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4708
    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4709
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4710
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4711
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4712
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4713
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v18

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4714
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4715
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4716
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4717
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "SYSTEM_EXT"

    aput-object v1, v4, v0

    .line 4718
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4719
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    .line 4720
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v4, v1

    const/16 v0, 0x2f

    const-string v1, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4696
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .locals 8
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "permission"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    .line 303
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 309
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 312
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 315
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 319
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 322
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 333
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 377
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 382
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 386
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 389
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 391
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 396
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 403
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 406
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 409
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 424
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 448
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 449
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 450
    new-instance v2, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-direct {v2, p0, p3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 452
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 453
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 454
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 458
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 460
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages-copy.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filelist length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 464
    .local v5, "file_name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v5    # "file_name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    const-string/jumbo v0, "persist.sys.pm.overlay.uids"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "overlayProperty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persist.sys.pm.overlay.uids "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    .line 471
    array-length v2, v2

    sput v2, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 472
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v3, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-ge v2, v3, :cond_1

    .line 473
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages-backup.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 478
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages.list"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 479
    const/16 v3, 0x1a0

    const/16 v4, 0x3e8

    const/16 v5, 0x408

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 481
    new-instance v2, Ljava/io/File;

    const-string v3, "/config/sdcardfs"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v2, "kernelDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 485
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages-stopped.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 486
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "packages-stopped-backup.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 487
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 429
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    .line 303
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 309
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 315
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 319
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 322
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 333
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 377
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 382
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 386
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 389
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 391
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 396
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 403
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 406
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 409
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 424
    new-instance v1, Lcom/android/server/pm/KeySetManagerService;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 430
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 432
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 433
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 434
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 435
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 437
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    .line 439
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 440
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 441
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 442
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 443
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 444
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .locals 3
    .param p1, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 4451
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4452
    .local v0, "size":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4453
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4454
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4455
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 4452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4460
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    .line 4461
    const/4 v1, -0x1

    return v1

    .line 4464
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4465
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 971
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    if-eqz p2, :cond_2

    .line 973
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_0

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 978
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_0

    .line 979
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_1

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 987
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 988
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 989
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 994
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 995
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_3

    .line 996
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 997
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    .line 1000
    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 1001
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 1005
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1006
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_5

    .line 1010
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1013
    :cond_5
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 20
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .line 3571
    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3573
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3572
    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    .line 3577
    .local v1, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 3578
    .local v0, "systemMatch":I
    const/4 v2, 0x0

    .line 3579
    .local v2, "thirdPartyMatch":I
    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 3580
    .local v3, "numMatches":I
    :goto_0
    const-string v4, "PackageSettings"

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1

    .line 3581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3581
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    return-void

    .line 3585
    :cond_1
    const/4 v6, 0x0

    .line 3586
    .local v6, "haveAct":Z
    const/4 v11, 0x0

    .line 3587
    .local v11, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ComponentName;

    .line 3588
    .local v12, "set":[Landroid/content/ComponentName;
    const/4 v13, 0x0

    move/from16 v19, v6

    move v6, v0

    .end local v0    # "systemMatch":I
    .local v6, "systemMatch":I
    .local v13, "i":I
    .local v19, "haveAct":Z
    :goto_1
    if-ge v13, v3, :cond_4

    .line 3589
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3590
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v12, v13

    .line 3591
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    if-nez v5, :cond_2

    .line 3592
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v2, :cond_3

    .line 3599
    aget-object v11, v12, v13

    .line 3600
    goto :goto_2

    .line 3602
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3603
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3607
    const/4 v5, 0x1

    .line 3608
    .end local v19    # "haveAct":Z
    .local v5, "haveAct":Z
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget v6, v15, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v19, v5

    .line 3588
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "haveAct":Z
    .restart local v19    # "haveAct":Z
    :cond_3
    add-int/lit8 v13, v13, 0x1

    move v5, v14

    goto :goto_1

    .line 3615
    .end local v13    # "i":I
    :cond_4
    :goto_2
    if-eqz v11, :cond_5

    if-ge v2, v6, :cond_5

    .line 3620
    const/4 v11, 0x0

    .line 3622
    :cond_5
    if-eqz v19, :cond_e

    if-nez v11, :cond_e

    .line 3623
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v0

    .line 3624
    .local v5, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3625
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3627
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3628
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3629
    .local v13, "cat":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3630
    .end local v13    # "cat":Ljava/lang/String;
    goto :goto_3

    .line 3632
    :cond_7
    const/high16 v0, 0x10000

    and-int v0, p3, v0

    if-eqz v0, :cond_8

    .line 3633
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3635
    :cond_8
    if-eqz v8, :cond_9

    .line 3636
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3638
    :cond_9
    if-eqz p6, :cond_a

    .line 3639
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v13

    invoke-virtual {v5, v0, v13}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3641
    :cond_a
    if-eqz v9, :cond_b

    .line 3642
    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3644
    :cond_b
    if-eqz v10, :cond_c

    .line 3645
    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3647
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3649
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3652
    move-object/from16 v15, p4

    goto :goto_4

    .line 3650
    :catch_0
    move-exception v0

    .line 3651
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Malformed mimetype "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3647
    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    move-object/from16 v15, p4

    .line 3654
    :goto_4
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v18, 0x1

    move-object v13, v0

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v12

    move-object/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3655
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v13, p0

    move/from16 v14, p9

    invoke-virtual {v13, v14}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 3656
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    goto :goto_6

    .line 3622
    :cond_e
    move-object/from16 v13, p0

    move/from16 v14, p9

    .line 3656
    if-nez v11, :cond_11

    .line 3657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3658
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "No component "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3659
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    const-string v5, " found setting preferred "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3662
    const-string v5, "; possible matches are "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v15, v12

    if-ge v5, v15, :cond_10

    .line 3664
    if-lez v5, :cond_f

    const-string v15, ", "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    :cond_f
    aget-object v15, v12, v5

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3667
    .end local v5    # "i":I
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 3669
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting preferred "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; found third party match "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    :goto_6
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 30
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 3461
    move-object/from16 v0, p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3462
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3464
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3465
    const/4 v4, 0x0

    move v15, v2

    .end local v2    # "flags":I
    .local v4, "i":I
    .local v15, "flags":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 3466
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    .line 3467
    .local v2, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3468
    const/high16 v5, 0x10000

    or-int/2addr v5, v15

    move v15, v5

    .end local v15    # "flags":I
    .local v5, "flags":I
    goto :goto_1

    .line 3470
    .end local v5    # "flags":I
    .restart local v15    # "flags":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3465
    .end local v2    # "cat":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3474
    .end local v4    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 3475
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3477
    .local v4, "hasSchemes":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 3478
    .local v14, "dataSchemesCount":I
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v5

    .local v4, "ischeme":I
    .local v16, "hasSchemes":Z
    :goto_2
    if-ge v4, v14, :cond_a

    .line 3479
    const/4 v5, 0x1

    .line 3480
    .local v5, "doScheme":Z
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3481
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3482
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 3484
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v12

    .line 3485
    .local v12, "dataSchemeSpecificPartsCount":I
    const/4 v6, 0x0

    move/from16 v17, v5

    move v11, v6

    .end local v5    # "doScheme":Z
    .local v11, "issp":I
    .local v17, "doScheme":Z
    :goto_3
    if-ge v11, v12, :cond_3

    .line 3486
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3487
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3488
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v18

    .line 3489
    .local v18, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3490
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3491
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3492
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v21, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v22, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move-object v10, v13

    move/from16 v23, v11

    .end local v11    # "issp":I
    .local v23, "issp":I
    move-object/from16 v11, v18

    move/from16 v24, v12

    .end local v12    # "dataSchemeSpecificPartsCount":I
    .local v24, "dataSchemeSpecificPartsCount":I
    move-object/from16 v12, v19

    move-object v3, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    move-object/from16 v13, v20

    move/from16 v20, v14

    .end local v14    # "dataSchemesCount":I
    .local v20, "dataSchemesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3494
    const/16 v17, 0x0

    .line 3485
    .end local v18    # "ssp":Landroid/os/PatternMatcher;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v23, 0x1

    move-object v13, v3

    move/from16 v14, v20

    move/from16 v12, v24

    const/4 v3, 0x0

    .end local v23    # "issp":I
    .restart local v11    # "issp":I
    goto :goto_3

    .end local v3    # "scheme":Ljava/lang/String;
    .end local v20    # "dataSchemesCount":I
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .restart local v12    # "dataSchemeSpecificPartsCount":I
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "dataSchemesCount":I
    :cond_3
    move/from16 v23, v11

    move/from16 v24, v12

    move-object v3, v13

    move/from16 v20, v14

    .line 3496
    .end local v11    # "issp":I
    .end local v12    # "dataSchemeSpecificPartsCount":I
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "dataSchemesCount":I
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v20    # "dataSchemesCount":I
    .restart local v24    # "dataSchemeSpecificPartsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v14

    .line 3497
    .local v14, "dataAuthoritiesCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "iauth":I
    :goto_4
    if-ge v13, v14, :cond_8

    .line 3498
    const/4 v5, 0x1

    .line 3499
    .local v5, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v18

    .line 3500
    .local v18, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v12

    .line 3501
    .local v12, "dataPathsCount":I
    const/4 v6, 0x0

    move v11, v6

    move/from16 v21, v17

    move/from16 v17, v5

    .end local v5    # "doAuth":Z
    .local v11, "ipath":I
    .local v17, "doAuth":Z
    .local v21, "doScheme":Z
    :goto_5
    if-ge v11, v12, :cond_5

    .line 3502
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3503
    .restart local v10    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3504
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3505
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3507
    :cond_4
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v22

    .line 3508
    .local v22, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3509
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3510
    .restart local v9    # "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3511
    const/16 v23, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v25, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v25, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v26, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v26, "builder":Landroid/net/Uri$Builder;
    move-object v10, v3

    move/from16 v27, v11

    .end local v11    # "ipath":I
    .local v27, "ipath":I
    move-object/from16 v11, v23

    move/from16 v23, v12

    .end local v12    # "dataPathsCount":I
    .local v23, "dataPathsCount":I
    move-object/from16 v12, v18

    move/from16 v28, v13

    .end local v13    # "iauth":I
    .local v28, "iauth":I
    move-object/from16 v13, v22

    move/from16 v29, v14

    .end local v14    # "dataAuthoritiesCount":I
    .local v29, "dataAuthoritiesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3513
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v17, v19

    .line 3501
    .end local v22    # "path":Landroid/os/PatternMatcher;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .end local v26    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v27, 0x1

    move/from16 v12, v23

    move/from16 v13, v28

    move/from16 v14, v29

    .end local v27    # "ipath":I
    .restart local v11    # "ipath":I
    goto :goto_5

    .end local v23    # "dataPathsCount":I
    .end local v28    # "iauth":I
    .end local v29    # "dataAuthoritiesCount":I
    .restart local v12    # "dataPathsCount":I
    .restart local v13    # "iauth":I
    .restart local v14    # "dataAuthoritiesCount":I
    :cond_5
    move/from16 v27, v11

    move/from16 v23, v12

    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3515
    .end local v11    # "ipath":I
    .end local v12    # "dataPathsCount":I
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v23    # "dataPathsCount":I
    .restart local v28    # "iauth":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_7

    .line 3516
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3517
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3518
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3519
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3521
    :cond_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3522
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3523
    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v12, v18

    move-object/from16 v25, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v22

    move-object/from16 v22, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3525
    const/4 v5, 0x0

    move/from16 v17, v5

    .end local v21    # "doScheme":Z
    .local v5, "doScheme":Z
    goto :goto_6

    .line 3515
    .end local v5    # "doScheme":Z
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "doScheme":Z
    :cond_7
    move/from16 v17, v21

    .line 3497
    .end local v18    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21    # "doScheme":Z
    .end local v23    # "dataPathsCount":I
    .local v17, "doScheme":Z
    :goto_6
    add-int/lit8 v13, v28, 0x1

    move/from16 v14, v29

    .end local v28    # "iauth":I
    .local v13, "iauth":I
    goto/16 :goto_4

    .end local v29    # "dataAuthoritiesCount":I
    .local v14, "dataAuthoritiesCount":I
    :cond_8
    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3528
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_9

    .line 3529
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3530
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3531
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3532
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3533
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v21, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3536
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    :cond_9
    const/4 v2, 0x0

    .line 3478
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .end local v29    # "dataAuthoritiesCount":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    move/from16 v14, v20

    goto/16 :goto_2

    .end local v20    # "dataSchemesCount":I
    .local v14, "dataSchemesCount":I
    :cond_a
    move/from16 v20, v14

    .line 3539
    .end local v4    # "ischeme":I
    .end local v14    # "dataSchemesCount":I
    .restart local v20    # "dataSchemesCount":I
    const/4 v3, 0x0

    move/from16 v17, v2

    .end local v2    # "doNonData":Z
    .local v3, "idata":I
    .local v17, "doNonData":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 3540
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v2

    .line 3541
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 3542
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3543
    .local v4, "builder":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "ischeme":I
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v14, v5, :cond_c

    .line 3544
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3545
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3546
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v5

    .line 3547
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3548
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3549
    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v13

    move-object/from16 v21, v12

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v18, "scheme":Ljava/lang/String;
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "ischeme":I
    .local v19, "ischeme":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_9

    .line 3545
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "ischeme":I
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "ischeme":I
    :cond_b
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 3543
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "ischeme":I
    .restart local v19    # "ischeme":I
    :goto_9
    add-int/lit8 v14, v19, 0x1

    .end local v19    # "ischeme":I
    .restart local v14    # "ischeme":I
    goto :goto_8

    :cond_c
    move/from16 v19, v14

    .line 3553
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "ischeme":I
    goto :goto_a

    .line 3554
    :cond_d
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3555
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3556
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v4

    move v8, v15

    move-object/from16 v9, p3

    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3559
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :goto_a
    const/16 v17, 0x0

    .line 3539
    .end local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3562
    .end local v3    # "idata":I
    :cond_e
    if-eqz v17, :cond_f

    .line 3563
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3566
    :cond_f
    return-void
.end method

.method private static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 775
    .local p0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 776
    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 43
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "originalPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "versionCode"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "installUser"    # Landroid/os/UserHandle;
    .param p15, "allowInstall"    # Z
    .param p16, "instantApp"    # Z
    .param p17, "virtualPreload"    # Z
    .param p18, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p19, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p20, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 675
    .local p21, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v15, p12

    if-eqz v0, :cond_0

    .line 678
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v14, p0

    invoke-direct {v3, v0, v14}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 679
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v12, p5

    iput-object v12, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 680
    move-object/from16 v13, p7

    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 681
    iput v15, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 682
    move/from16 v10, p13

    iput v10, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 683
    move-object/from16 v9, p8

    iput-object v9, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 684
    move-object/from16 v8, p6

    iput-object v8, v3, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 685
    move-object/from16 v7, p9

    iput-object v7, v3, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 688
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 689
    move-wide/from16 v5, p10

    iput-wide v5, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 690
    move-object/from16 v4, p19

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 691
    move-object/from16 v11, p20

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 693
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v10, p18

    goto/16 :goto_7

    .line 695
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v12, p5

    move-object/from16 v8, p6

    move-object/from16 v13, p7

    move-object/from16 v9, p8

    move-object/from16 v7, p9

    move/from16 v10, p13

    move-object/from16 v11, p20

    new-instance v20, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v3, v20

    const/4 v4, 0x0

    move-object v11, v4

    const/16 v16, 0x0

    .line 699
    invoke-static/range {p21 .. p21}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    invoke-direct/range {v3 .. v19}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 700
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 701
    iput-object v2, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 703
    and-int/lit8 v4, p12, 0x1

    if-nez v4, :cond_8

    .line 709
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 710
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    if-eqz p14, :cond_1

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v5

    .line 711
    .local v6, "installUserId":I
    :goto_0
    if-eqz v4, :cond_7

    if-eqz p15, :cond_7

    .line 712
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 719
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz p14, :cond_5

    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 721
    move-object/from16 v10, p18

    invoke-static {v10, v9}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 719
    :cond_2
    move-object/from16 v10, p18

    .line 721
    :goto_2
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v9, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move/from16 v26, v5

    goto :goto_4

    .line 719
    :cond_5
    move-object/from16 v10, p18

    .line 721
    :goto_3
    const/4 v9, 0x1

    move/from16 v26, v9

    .line 723
    .local v26, "installed":Z
    :goto_4
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v9

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v21, v3

    move/from16 v33, p16

    move/from16 v34, p17

    invoke-virtual/range {v21 .. v42}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V

    .line 741
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v26    # "installed":Z
    goto :goto_1

    .line 712
    :cond_6
    move-object/from16 v10, p18

    goto :goto_5

    .line 711
    :cond_7
    move-object/from16 v10, p18

    goto :goto_5

    .line 703
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "installUserId":I
    :cond_8
    move-object/from16 v10, p18

    .line 744
    :goto_5
    if-eqz v2, :cond_9

    .line 745
    iget v4, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_7

    .line 748
    :cond_9
    if-eqz v1, :cond_a

    .line 753
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 754
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 756
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 758
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 759
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_a

    .line 760
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 761
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 762
    .local v7, "userId":I
    nop

    .line 763
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 762
    invoke-virtual {v3, v8, v7}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 764
    nop

    .line 765
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 764
    invoke-virtual {v3, v8, v7}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 766
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_6

    .line 771
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a
    :goto_7
    return-object v3
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5325
    if-nez p1, :cond_0

    .line 5326
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 5329
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5330
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5331
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 5332
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5334
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5335
    .local v0, "splitNames":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v2

    .line 5336
    .local v2, "splitRevisionCodes":[I
    if-eqz v0, :cond_3

    .line 5337
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 5338
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5339
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5340
    aget v4, v2, v3

    if-eqz v4, :cond_2

    .line 5341
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v4, v2, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5337
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5345
    .end local v3    # "i":I
    :cond_3
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5347
    .end local v0    # "splitNames":[Ljava/lang/String;
    .end local v2    # "splitRevisionCodes":[I
    :goto_1
    return-void
.end method

.method private static getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4625
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4612
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 1372
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1360
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1361
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1367
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1368
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .locals 3
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .param p2, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4641
    .local v0, "id":J
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4641
    return-object v2

    .line 4646
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4647
    throw v2

    .line 4643
    :catch_0
    move-exception v2

    .line 4646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4647
    nop

    .line 4648
    const/4 v2, 0x0

    return-object v2
.end method

.method private static invalidatePackageCache()V
    .locals 0

    .line 490
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 491
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 492
    return-void
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 948
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5375
    const/4 v0, 0x0

    .line 5376
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p1, :cond_2

    .line 5377
    if-nez v0, :cond_0

    .line 5378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5382
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5383
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5384
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5385
    if-eqz p1, :cond_1

    .line 5386
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5389
    .end local v1    # "flag":I
    :cond_1
    goto :goto_0

    .line 5390
    :cond_2
    if-eqz v0, :cond_3

    .line 5391
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5394
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4667
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4669
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4670
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 4671
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4672
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4668
    .end local v1    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4675
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4676
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1895
    const/4 v0, 0x0

    .line 1897
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1899
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1901
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1902
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1904
    goto :goto_0

    .line 1906
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1907
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1908
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1909
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1910
    if-nez v0, :cond_3

    .line 1911
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1913
    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1915
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1917
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1495
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1497
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1499
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1500
    goto :goto_0

    .line 1502
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1503
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1504
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1505
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1506
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_1

    .line 1507
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1509
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1510
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1512
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1513
    :cond_4
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3676
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3677
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3678
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3680
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 3681
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 3682
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 3683
    goto :goto_0

    .line 3686
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3687
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_4

    .line 3688
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3689
    .local v4, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3690
    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 3693
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3695
    invoke-virtual {v7}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3696
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3693
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3698
    .end local v4    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 3699
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3699
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3701
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3703
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 3704
    :cond_5
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4210
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4212
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 4213
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 4214
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 4215
    goto :goto_0

    .line 4218
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4219
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 4220
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4221
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4222
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4224
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4226
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4224
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4228
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4229
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4229
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4232
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4233
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 4234
    :cond_5
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 36
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3708
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string/jumbo v0, "name"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3709
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3710
    .local v21, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3711
    .local v13, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3713
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3714
    .local v22, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3716
    .local v23, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3718
    .local v24, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3719
    .local v4, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3720
    .local v25, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3722
    .local v26, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v4, :cond_0

    if-eqz v22, :cond_0

    .line 3723
    move-object/from16 v4, v22

    move-object/from16 v27, v4

    goto :goto_0

    .line 3726
    :cond_0
    move-object/from16 v27, v4

    .end local v4    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v27, "primaryCpuAbiStr":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 3727
    move-object v0, v13

    move-object v14, v0

    goto :goto_1

    .line 3726
    :cond_1
    move-object v14, v0

    .line 3729
    .end local v0    # "resourcePathStr":Ljava/lang/String;
    .local v14, "resourcePathStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3730
    .local v28, "version":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 3731
    .local v4, "versionCode":J
    if-eqz v28, :cond_2

    .line 3733
    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 3735
    move-wide/from16 v29, v4

    goto :goto_2

    .line 3734
    :catch_0
    move-exception v0

    .line 3738
    :cond_2
    move-wide/from16 v29, v4

    .end local v4    # "versionCode":J
    .local v29, "versionCode":J
    :goto_2
    const/4 v0, 0x0

    .line 3739
    .local v0, "pkgFlags":I
    const/4 v4, 0x0

    .line 3740
    .local v4, "pkgPrivateFlags":I
    const/4 v12, 0x1

    or-int/lit8 v31, v0, 0x1

    .line 3741
    .end local v0    # "pkgFlags":I
    .local v31, "pkgFlags":I
    const-string v0, "/priv-app/"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3742
    or-int/lit8 v4, v4, 0x8

    move/from16 v32, v4

    goto :goto_3

    .line 3741
    :cond_3
    move/from16 v32, v4

    .line 3744
    .end local v4    # "pkgPrivateFlags":I
    .local v32, "pkgPrivateFlags":I
    :goto_3
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    move-object v4, v0

    new-instance v5, Ljava/io/File;

    move-object v7, v5

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v15

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v27

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .end local v13    # "codePathStr":Ljava/lang/String;
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .local v33, "codePathStr":Ljava/lang/String;
    .local v34, "resourcePathStr":Ljava/lang/String;
    move-wide/from16 v13, v29

    move-object/from16 v35, v15

    .end local v15    # "name":Ljava/lang/String;
    .local v35, "name":Ljava/lang/String;
    move/from16 v15, v31

    move/from16 v16, v32

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 3748
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3749
    .local v5, "timeStampStr":Ljava/lang/String;
    const/16 v6, 0x10

    if-eqz v5, :cond_4

    .line 3751
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 3752
    .local v7, "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "timeStamp":J
    goto :goto_4

    .line 3753
    :catch_1
    move-exception v0

    .line 3754
    :goto_4
    goto :goto_5

    .line 3756
    :cond_4
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3757
    if-eqz v5, :cond_5

    .line 3759
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3760
    .restart local v7    # "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3762
    .end local v7    # "timeStamp":J
    goto :goto_5

    .line 3761
    :catch_2
    move-exception v0

    .line 3765
    :cond_5
    :goto_5
    const-string/jumbo v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3766
    if-eqz v5, :cond_6

    .line 3768
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3770
    goto :goto_6

    .line 3769
    :catch_3
    move-exception v0

    .line 3772
    :cond_6
    :goto_6
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3773
    if-eqz v5, :cond_7

    .line 3775
    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3777
    goto :goto_7

    .line 3776
    :catch_4
    move-exception v0

    .line 3779
    :cond_7
    :goto_7
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3780
    .local v0, "idStr":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_8

    :cond_8
    move v7, v6

    :goto_8
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3781
    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_a

    .line 3782
    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3783
    .local v3, "sharedIdStr":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_9
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3786
    .end local v3    # "sharedIdStr":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3788
    .local v3, "outerDepth":I
    :cond_b
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x1

    .local v7, "type":I
    if-eq v6, v8, :cond_10

    const/4 v6, 0x3

    if-ne v7, v6, :cond_c

    .line 3789
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_10

    .line 3790
    :cond_c
    if-eq v7, v6, :cond_b

    const/4 v6, 0x4

    if-ne v7, v6, :cond_d

    .line 3791
    goto :goto_9

    .line 3794
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3795
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_9

    .line 3796
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "uses-static-lib"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3797
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_9

    .line 3799
    :cond_f
    const/4 v6, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <updated-package>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3799
    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3801
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3805
    :cond_10
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v8, v35

    .end local v35    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1517
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1518
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1522
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4238
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4240
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 4241
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 4242
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 4243
    goto :goto_0

    .line 4246
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4247
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 4248
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4249
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4250
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4252
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4254
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4252
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4256
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4257
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4257
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4260
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4261
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 4262
    :cond_5
    return-void
.end method

.method private readMimeGroupLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4149
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4150
    .local v1, "groupName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4151
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4152
    return-object p2

    .line 4155
    :cond_0
    if-nez p2, :cond_1

    .line 4156
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object p2, v2

    .line 4159
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 4160
    .local v2, "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 4161
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 4162
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4166
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v4, 0x3

    if-ne v5, v4, :cond_4

    .line 4167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_8

    .line 4168
    :cond_4
    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    .line 4169
    goto :goto_0

    .line 4172
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4173
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "mime-type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4174
    const-string/jumbo v6, "value"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4175
    .local v6, "typeName":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 4176
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4178
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 4179
    :cond_7
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <mime-group>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4179
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4181
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4183
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4185
    :cond_8
    return-object p2
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 79
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3813
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const-string v11, " has bad userId "

    const-string v12, " at "

    const-string v10, "Error in package manager settings: package "

    const-string/jumbo v7, "true"

    const/4 v1, 0x0

    .line 3814
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3815
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3816
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3817
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3818
    .local v5, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3819
    .local v6, "resourcePathStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3820
    .local v8, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3821
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3822
    .local v15, "primaryCpuAbiString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3823
    .local v16, "secondaryCpuAbiString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3824
    .local v17, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3825
    .local v18, "systemStr":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3826
    .local v19, "installerPackageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3827
    .local v20, "isOrphaned":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3828
    .local v21, "installOriginatingPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3829
    .local v22, "installInitiatingPackageName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 3830
    .local v23, "installInitiatorUninstalled":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3831
    .local v24, "volumeUuid":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3832
    .local v25, "categoryHintString":Ljava/lang/String;
    const/16 v26, 0x0

    .line 3833
    .local v26, "updateAvailable":Ljava/lang/String;
    const/16 v27, -0x1

    .line 3834
    .local v27, "categoryHint":I
    const/16 v28, 0x0

    .line 3835
    .local v28, "uidError":Ljava/lang/String;
    const/16 v29, 0x0

    .line 3836
    .local v29, "pkgFlags":I
    const/16 v30, 0x0

    .line 3837
    .local v30, "pkgPrivateFlags":I
    const-wide/16 v31, 0x0

    .line 3838
    .local v31, "timeStamp":J
    const-wide/16 v33, 0x0

    .line 3839
    .local v33, "firstInstallTime":J
    const-wide/16 v35, 0x0

    .line 3840
    .local v35, "lastUpdateTime":J
    const/16 v37, 0x0

    .line 3841
    .local v37, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v38, 0x0

    .line 3842
    .local v38, "version":Ljava/lang/String;
    const-wide/16 v39, 0x0

    .line 3843
    .local v39, "versionCode":J
    const/16 v41, 0x0

    .line 3845
    .local v41, "installedForceQueryable":Ljava/lang/String;
    move-object/from16 v42, v15

    .end local v15    # "primaryCpuAbiString":Ljava/lang/String;
    .local v42, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_0
    const-string/jumbo v0, "name"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_34

    move-object v1, v0

    .line 3846
    :try_start_1
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_33

    move-object v2, v0

    .line 3847
    :try_start_2
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_32

    move-object v3, v0

    .line 3848
    :try_start_3
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    .line 3849
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_31

    move-object v4, v0

    .line 3850
    :try_start_4
    const-string v0, "codePath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_30

    move-object v5, v0

    .line 3851
    :try_start_5
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2f

    move-object/from16 v45, v0

    .line 3853
    .end local v6    # "resourcePathStr":Ljava/lang/String;
    .local v45, "resourcePathStr":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2e

    move-object/from16 v46, v0

    .line 3855
    .end local v8    # "legacyCpuAbiString":Ljava/lang/String;
    .local v46, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_7
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2d

    .line 3856
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_8
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    .line 3857
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2c

    .line 3858
    .end local v16    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_9
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2b

    .line 3859
    .end local v17    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_a
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    .line 3860
    const-string v0, "forceQueryable"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v41, v0

    .line 3862
    if-nez v42, :cond_0

    if-eqz v46, :cond_0

    .line 3863
    move-object/from16 v0, v46

    move-object/from16 v42, v0

    .line 3866
    :cond_0
    const-string/jumbo v0, "version"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2a

    move-object/from16 v38, v0

    .line 3867
    if-eqz v38, :cond_1

    .line 3869
    :try_start_b
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    move-wide/from16 v39, v16

    .line 3871
    goto :goto_0

    .line 3870
    :catch_0
    move-exception v0

    .line 3873
    :cond_1
    :goto_0
    :try_start_c
    const-string v0, "installer"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 3874
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 3875
    const-string v0, "installInitiator"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 3876
    const-string v0, "installOriginator"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3877
    const-string v0, "installInitiatorUninstalled"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 3879
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 3880
    const-string v0, "categoryHint"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2a

    move-object/from16 v25, v0

    .line 3881
    if-eqz v25, :cond_2

    .line 3883
    :try_start_d
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1

    move/from16 v27, v0

    .line 3885
    goto :goto_1

    .line 3884
    :catch_1
    move-exception v0

    .line 3888
    :cond_2
    :goto_1
    :try_start_e
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2a

    move-object/from16 v18, v0

    .line 3889
    if-eqz v18, :cond_4

    .line 3891
    :try_start_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2

    move/from16 v29, v0

    .line 3893
    goto :goto_2

    .line 3892
    :catch_2
    move-exception v0

    .line 3894
    :goto_2
    :try_start_10
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v16, v0

    .line 3895
    .end local v18    # "systemStr":Ljava/lang/String;
    .local v16, "systemStr":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 3897
    :try_start_11
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_3

    move/from16 v30, v0

    .line 3899
    move-object/from16 v18, v16

    goto/16 :goto_5

    .line 3898
    :catch_3
    move-exception v0

    .line 3934
    :cond_3
    move-object/from16 v18, v16

    goto/16 :goto_5

    .line 4027
    .end local v16    # "systemStr":Ljava/lang/String;
    .restart local v18    # "systemStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v74, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    const/4 v12, 0x5

    move-object/from16 v32, v2

    move-object v9, v6

    move-object v2, v11

    move-object/from16 v6, v45

    goto/16 :goto_12

    .line 3903
    :cond_4
    :try_start_12
    const-string v0, "flags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_2a

    move-object/from16 v18, v0

    .line 3904
    if-eqz v18, :cond_8

    .line 3906
    :try_start_13
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5

    move/from16 v29, v0

    .line 3908
    goto :goto_3

    .line 3907
    :catch_5
    move-exception v0

    .line 3909
    :goto_3
    :try_start_14
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v29, v0

    if-eqz v0, :cond_5

    .line 3910
    or-int/lit8 v30, v30, 0x1

    .line 3912
    :cond_5
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v29, v0

    if-eqz v0, :cond_6

    .line 3913
    or-int/lit8 v0, v30, 0x2

    move/from16 v30, v0

    .line 3915
    :cond_6
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v29, v0

    if-eqz v0, :cond_7

    .line 3916
    or-int/lit8 v0, v30, 0x8

    move/from16 v30, v0

    .line 3918
    :cond_7
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_4

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v29, v0

    move/from16 v29, v0

    .end local v29    # "pkgFlags":I
    .local v0, "pkgFlags":I
    goto :goto_5

    .line 3923
    .end local v0    # "pkgFlags":I
    .restart local v29    # "pkgFlags":I
    :cond_8
    :try_start_15
    const-string/jumbo v0, "system"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_2a

    move-object/from16 v16, v0

    .line 3924
    .end local v18    # "systemStr":Ljava/lang/String;
    .restart local v16    # "systemStr":Ljava/lang/String;
    move-object/from16 v15, v16

    .end local v16    # "systemStr":Ljava/lang/String;
    .local v15, "systemStr":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 3925
    :try_start_16
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_6

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    .line 3926
    :cond_9
    const/4 v0, 0x0

    :goto_4
    or-int v0, v29, v0

    move/from16 v29, v0

    move-object/from16 v18, v15

    .end local v29    # "pkgFlags":I
    .restart local v0    # "pkgFlags":I
    goto :goto_5

    .line 4027
    .end local v0    # "pkgFlags":I
    .restart local v29    # "pkgFlags":I
    :catch_6
    move-exception v0

    move-object/from16 v74, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v18, v15

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    const/4 v12, 0x5

    move-object/from16 v32, v2

    move-object v9, v6

    move-object v2, v11

    move-object/from16 v6, v45

    goto/16 :goto_12

    .line 3930
    :cond_a
    or-int/lit8 v0, v29, 0x1

    move/from16 v29, v0

    move-object/from16 v18, v15

    .line 3934
    .end local v15    # "systemStr":Ljava/lang/String;
    .restart local v18    # "systemStr":Ljava/lang/String;
    :goto_5
    :try_start_17
    const-string v0, "ft"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2a

    move-object v15, v0

    .line 3935
    .local v15, "timeStampStr":Ljava/lang/String;
    move-object/from16 v48, v7

    const/16 v7, 0x10

    if-eqz v15, :cond_b

    .line 3937
    :try_start_18
    invoke-static {v15, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_7

    move-wide/from16 v31, v16

    goto :goto_6

    .line 3938
    :catch_7
    move-exception v0

    .line 3939
    :goto_6
    move-wide/from16 v64, v31

    goto :goto_7

    .line 3941
    :cond_b
    :try_start_19
    const-string/jumbo v0, "ts"

    const/4 v7, 0x0

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_29

    move-object v15, v0

    .line 3942
    if-eqz v15, :cond_c

    .line 3944
    :try_start_1a
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v49
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_8

    move-wide/from16 v31, v49

    .line 3946
    move-wide/from16 v64, v31

    goto :goto_7

    .line 3945
    :catch_8
    move-exception v0

    .line 3949
    :cond_c
    move-wide/from16 v64, v31

    .end local v31    # "timeStamp":J
    .local v64, "timeStamp":J
    :goto_7
    :try_start_1b
    const-string/jumbo v0, "it"

    const/4 v7, 0x0

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_28

    move-object v7, v0

    .line 3950
    .end local v15    # "timeStampStr":Ljava/lang/String;
    .local v7, "timeStampStr":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 3952
    const/16 v15, 0x10

    :try_start_1c
    invoke-static {v7, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v31
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_9

    move-wide/from16 v33, v31

    .line 3954
    move-wide/from16 v66, v33

    goto :goto_8

    .line 3953
    :catch_9
    move-exception v0

    .line 3956
    :cond_d
    move-wide/from16 v66, v33

    .end local v33    # "firstInstallTime":J
    .local v66, "firstInstallTime":J
    :goto_8
    :try_start_1d
    const-string/jumbo v0, "ut"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_27

    move-object v7, v0

    .line 3957
    if-eqz v7, :cond_e

    .line 3959
    const/16 v15, 0x10

    :try_start_1e
    invoke-static {v7, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_a

    move-wide/from16 v35, v15

    .line 3961
    move-wide/from16 v68, v35

    goto :goto_9

    .line 3960
    :catch_a
    move-exception v0

    .line 3966
    :cond_e
    move-wide/from16 v68, v35

    .end local v35    # "lastUpdateTime":J
    .local v68, "lastUpdateTime":J
    :goto_9
    if-eqz v3, :cond_f

    :try_start_1f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    .line 4027
    .end local v7    # "timeStampStr":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v74, v48

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v45

    goto/16 :goto_12

    .line 3966
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    :cond_f
    const/4 v0, 0x0

    .line 3967
    .local v0, "userId":I
    :goto_a
    if-eqz v4, :cond_10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_b

    goto :goto_b

    :cond_10
    const/4 v15, 0x0

    :goto_b
    move/from16 v31, v15

    .line 3968
    .local v31, "sharedUserId":I
    if-nez v45, :cond_11

    .line 3969
    move-object v15, v5

    .end local v45    # "resourcePathStr":Ljava/lang/String;
    .local v15, "resourcePathStr":Ljava/lang/String;
    goto :goto_c

    .line 3968
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v45    # "resourcePathStr":Ljava/lang/String;
    :cond_11
    move-object/from16 v15, v45

    .line 3971
    .end local v45    # "resourcePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    :goto_c
    if-eqz v2, :cond_12

    .line 3972
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_c

    move-object/from16 v2, v16

    move-object/from16 v32, v2

    goto :goto_d

    .line 4027
    .end local v0    # "userId":I
    .end local v7    # "timeStampStr":Ljava/lang/String;
    .end local v31    # "sharedUserId":I
    :catch_c
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    move-object/from16 v8, v46

    move-object/from16 v74, v48

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    const/4 v12, 0x5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    goto/16 :goto_12

    .line 3971
    .restart local v0    # "userId":I
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    .restart local v31    # "sharedUserId":I
    :cond_12
    move-object/from16 v32, v2

    .line 3974
    .end local v2    # "realName":Ljava/lang/String;
    .local v32, "realName":Ljava/lang/String;
    :goto_d
    if-nez v1, :cond_13

    .line 3975
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_e

    move-object/from16 v49, v3

    .end local v3    # "idStr":Ljava/lang/String;
    .local v49, "idStr":Ljava/lang/String;
    :try_start_22
    const-string v3, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_f

    .line 3975
    const/4 v3, 0x5

    :try_start_23
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_d

    move-object v3, v1

    move-object/from16 v72, v4

    move-object v7, v5

    move-object v5, v10

    move-object v4, v12

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-wide/from16 v16, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    const/4 v1, 0x5

    goto/16 :goto_10

    .line 4027
    .end local v0    # "userId":I
    .end local v7    # "timeStampStr":Ljava/lang/String;
    .end local v31    # "sharedUserId":I
    :catch_d
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    move-object/from16 v8, v46

    move-object/from16 v74, v48

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    move v12, v3

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v3, v49

    goto/16 :goto_12

    .end local v49    # "idStr":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v49, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    move-object/from16 v8, v46

    move-object/from16 v74, v48

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    const/4 v12, 0x5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v49    # "idStr":Ljava/lang/String;
    goto/16 :goto_12

    .line 3978
    .end local v49    # "idStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    .restart local v31    # "sharedUserId":I
    :cond_13
    move-object/from16 v49, v3

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v49    # "idStr":Ljava/lang/String;
    if-nez v5, :cond_14

    .line 3979
    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3981
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_f

    .line 3979
    const/4 v3, 0x5

    :try_start_25
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_d

    move-object/from16 v72, v4

    move-object v7, v5

    move-object v5, v10

    move-object v4, v12

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-wide/from16 v16, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move/from16 v78, v3

    move-object v3, v1

    move/from16 v1, v78

    goto/16 :goto_10

    .line 4027
    .end local v0    # "userId":I
    .end local v7    # "timeStampStr":Ljava/lang/String;
    .end local v31    # "sharedUserId":I
    :catch_f
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    move-object/from16 v8, v46

    move-object/from16 v74, v48

    move-object/from16 v3, v49

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    const/4 v12, 0x5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    goto/16 :goto_12

    .line 3982
    .restart local v0    # "userId":I
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    .restart local v31    # "sharedUserId":I
    :cond_14
    const/4 v3, 0x5

    if-lez v0, :cond_16

    .line 3983
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_17

    move-object/from16 v43, v4

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v43, "sharedIdStr":Ljava/lang/String;
    :try_start_27
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_16

    move-object/from16 v50, v5

    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v50, "codePathStr":Ljava/lang/String;
    :try_start_28
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_15

    const/16 v16, 0x0

    move-object v3, v15

    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .local v3, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v15, v16

    const/16 v17, 0x0

    move-object/from16 v44, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v44, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v71, v3

    move-object/from16 v70, v49

    .end local v3    # "resourcePathStr":Ljava/lang/String;
    .end local v49    # "idStr":Ljava/lang/String;
    .local v70, "idStr":Ljava/lang/String;
    .local v71, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v3, v32

    move-object/from16 v72, v43

    .end local v43    # "sharedIdStr":Ljava/lang/String;
    .local v72, "sharedIdStr":Ljava/lang/String;
    move-object/from16 v73, v50

    .end local v50    # "codePathStr":Ljava/lang/String;
    .local v73, "codePathStr":Ljava/lang/String;
    move-object/from16 v33, v7

    move-object/from16 v74, v48

    .end local v7    # "timeStampStr":Ljava/lang/String;
    .local v33, "timeStampStr":Ljava/lang/String;
    move-object/from16 v7, v42

    move-object/from16 v75, v10

    move v10, v0

    move-object/from16 v77, v11

    move-object/from16 v76, v12

    move-wide/from16 v11, v39

    move/from16 v13, v29

    move/from16 v14, v30

    :try_start_29
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_14

    .line 3991
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_15

    .line 3992
    const/4 v2, 0x6

    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3992
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_10

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    goto :goto_e

    .line 4027
    .end local v0    # "userId":I
    .end local v31    # "sharedUserId":I
    .end local v33    # "timeStampStr":Ljava/lang/String;
    :catch_10
    move-exception v0

    const/4 v12, 0x5

    move-object/from16 v14, p0

    move-object/from16 v37, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    move-object/from16 v8, v46

    move-wide/from16 v33, v66

    move-wide/from16 v35, v68

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    move-object v9, v6

    move-object/from16 v6, v71

    goto/16 :goto_12

    .line 3996
    .restart local v0    # "userId":I
    .restart local v31    # "sharedUserId":I
    .restart local v33    # "timeStampStr":Ljava/lang/String;
    :cond_15
    move-wide/from16 v3, v64

    .end local v64    # "timeStamp":J
    .local v3, "timeStamp":J
    :try_start_2b
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 3997
    move-wide/from16 v10, v66

    .end local v66    # "firstInstallTime":J
    .local v10, "firstInstallTime":J
    :try_start_2c
    iput-wide v10, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_12

    .line 3998
    move-wide/from16 v12, v68

    .end local v68    # "lastUpdateTime":J
    .local v12, "lastUpdateTime":J
    :try_start_2d
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_11

    .line 4031
    .end local v0    # "userId":I
    .end local v31    # "sharedUserId":I
    .end local v33    # "timeStampStr":Ljava/lang/String;
    :goto_e
    move-object/from16 v14, p0

    move-object/from16 v37, v1

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    move-object/from16 v15, v71

    move-object/from16 v7, v73

    move-object/from16 v5, v75

    move-object/from16 v4, v76

    const/4 v1, 0x5

    goto/16 :goto_10

    .line 4027
    :catch_11
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v37, v1

    move-wide/from16 v64, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    goto/16 :goto_12

    .end local v12    # "lastUpdateTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_12
    move-exception v0

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v37, v1

    move-wide/from16 v64, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v68    # "lastUpdateTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_12

    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_13
    move-exception v0

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v37, v1

    move-wide/from16 v64, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_12

    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_14
    move-exception v0

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_12

    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "sharedIdStr":Ljava/lang/String;
    .restart local v49    # "idStr":Ljava/lang/String;
    .restart local v50    # "codePathStr":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_15
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v75, v10

    move-object/from16 v77, v11

    move-object/from16 v76, v12

    move-object/from16 v71, v15

    move-object/from16 v72, v43

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-object/from16 v73, v50

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v1    # "name":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "sharedIdStr":Ljava/lang/String;
    .end local v49    # "idStr":Ljava/lang/String;
    .end local v50    # "codePathStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "sharedIdStr":Ljava/lang/String;
    .restart local v49    # "idStr":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_16
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v73, v5

    move-object/from16 v75, v10

    move-object/from16 v77, v11

    move-object/from16 v76, v12

    move-object/from16 v71, v15

    move-object/from16 v72, v43

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "sharedIdStr":Ljava/lang/String;
    .end local v49    # "idStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v49    # "idStr":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :catch_17
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v75, v10

    move-object/from16 v77, v11

    move-object/from16 v76, v12

    move-object/from16 v71, v15

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v9, v6

    move-object/from16 v6, v71

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v49    # "idStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_12

    .line 4000
    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v31    # "sharedUserId":I
    .restart local v49    # "idStr":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :cond_16
    move-object/from16 v44, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v33, v7

    move-object/from16 v75, v10

    move-object/from16 v77, v11

    move-object/from16 v76, v12

    move-object/from16 v71, v15

    move-object/from16 v74, v48

    move-object/from16 v70, v49

    move-wide/from16 v3, v64

    move-wide/from16 v10, v66

    move-wide/from16 v12, v68

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v49    # "idStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .end local v68    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    .restart local v33    # "timeStampStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    move-object/from16 v1, v72

    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 4001
    if-lez v31, :cond_17

    .line 4002
    :try_start_2e
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v48

    new-instance v5, Ljava/io/File;
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_1c

    move-object/from16 v7, v73

    .end local v73    # "codePathStr":Ljava/lang/String;
    .local v7, "codePathStr":Ljava/lang/String;
    :try_start_2f
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_1b

    move-object/from16 v15, v71

    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    :try_start_30
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v47, v2

    move-object/from16 v49, v32

    move-object/from16 v50, v5

    move-object/from16 v51, v14

    move-object/from16 v52, v6

    move-object/from16 v53, v42

    move-object/from16 v54, v8

    move-object/from16 v55, v9

    move-wide/from16 v56, v39

    move/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    invoke-direct/range {v47 .. v63}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_1a

    .line 4009
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_31
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 4010
    iput-wide v10, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 4011
    iput-wide v12, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_19

    .line 4012
    move-object/from16 v14, p0

    :try_start_32
    iget-object v5, v14, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_18

    move-object/from16 v72, v1

    move-object/from16 v37, v2

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    move-object/from16 v5, v75

    move-object/from16 v4, v76

    const/4 v1, 0x5

    goto/16 :goto_10

    .line 4027
    .end local v0    # "userId":I
    .end local v31    # "sharedUserId":I
    .end local v33    # "timeStampStr":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object/from16 v37, v2

    move-wide/from16 v64, v3

    move-object v5, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v4, v1

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    goto/16 :goto_12

    :catch_19
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v37, v2

    move-wide/from16 v64, v3

    move-object v5, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v4, v1

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    goto/16 :goto_12

    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_1a
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v64, v3

    move-object v5, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v4, v1

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    goto/16 :goto_12

    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v15, v71

    move-wide/from16 v64, v3

    move-object v5, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v4, v1

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    :catch_1c
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v15, v71

    move-object/from16 v7, v73

    move-wide/from16 v64, v3

    move-object v5, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v4, v1

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v1, v44

    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_12

    .line 4017
    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v31    # "sharedUserId":I
    .restart local v33    # "timeStampStr":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    :cond_17
    move-object/from16 v14, p0

    move-object/from16 v15, v71

    move-object/from16 v7, v73

    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    :try_start_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_21

    move-object/from16 v5, v75

    :try_start_34
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_20

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    .end local v44    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v16, "timeStamp":J
    :try_start_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad sharedId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_1f

    move-object/from16 v4, v76

    :try_start_36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    move/from16 v34, v0

    .end local v0    # "userId":I
    .local v34, "userId":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_1e

    .line 4017
    const/4 v2, 0x5

    :try_start_37
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_1d

    move-object/from16 v72, v1

    move v1, v2

    goto/16 :goto_10

    .line 4027
    .end local v31    # "sharedUserId":I
    .end local v33    # "timeStampStr":Ljava/lang/String;
    .end local v34    # "userId":I
    :catch_1d
    move-exception v0

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move v12, v2

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v2, v77

    move-object v4, v1

    move-object v1, v3

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v3, v70

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto/16 :goto_12

    :catch_1e
    move-exception v0

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object v4, v1

    move-object v1, v3

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v3, v70

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto/16 :goto_12

    :catch_1f
    move-exception v0

    move-object v4, v1

    move-object v1, v3

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto/16 :goto_12

    .end local v16    # "timeStamp":J
    .local v3, "timeStamp":J
    .restart local v44    # "name":Ljava/lang/String;
    :catch_20
    move-exception v0

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    move-object v4, v1

    move-object v1, v3

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto :goto_f

    :catch_21
    move-exception v0

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    move-object v4, v1

    move-object v1, v3

    move-object v5, v7

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    move-object/from16 v7, v75

    move-object/from16 v10, v76

    move-object/from16 v2, v77

    const/4 v12, 0x5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    .end local v44    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v16    # "timeStamp":J
    :goto_f
    goto/16 :goto_12

    .line 4023
    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v16    # "timeStamp":J
    .restart local v0    # "userId":I
    .local v3, "timeStamp":J
    .restart local v31    # "sharedUserId":I
    .restart local v33    # "timeStampStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v71    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    :cond_18
    const/4 v2, 0x5

    move-object/from16 v14, p0

    move/from16 v34, v0

    move-wide/from16 v16, v3

    move-object/from16 v3, v44

    move-object/from16 v15, v71

    move-object/from16 v7, v73

    move-object/from16 v5, v75

    move-object/from16 v4, v76

    .end local v0    # "userId":I
    .end local v44    # "name":Ljava/lang/String;
    .end local v71    # "resourcePathStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v16    # "timeStamp":J
    .restart local v34    # "userId":I
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_26

    move-object/from16 v2, v77

    :try_start_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_25

    move-object/from16 v72, v1

    move-object/from16 v1, v70

    .end local v70    # "idStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    :try_start_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_24

    .line 4025
    move-object/from16 v70, v1

    .end local v1    # "idStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    :try_start_3b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_23

    .line 4023
    const/4 v1, 0x5

    :try_start_3c
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_22

    .line 4031
    .end local v31    # "sharedUserId":I
    .end local v33    # "timeStampStr":Ljava/lang/String;
    .end local v34    # "userId":I
    :goto_10
    move-object/from16 v76, v4

    move-wide/from16 v66, v10

    move-wide/from16 v68, v12

    move-wide/from16 v64, v16

    move-object/from16 v2, v19

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move-object/from16 v14, v28

    move-object/from16 v10, v37

    move-object/from16 v1, v42

    move-object/from16 v21, v70

    move-object/from16 v16, v72

    move-object/from16 v22, v3

    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v3, v41

    move-object v7, v5

    move-object v9, v6

    move-object/from16 v6, v20

    move-object/from16 v5, v26

    move-object/from16 v20, v15

    move/from16 v15, v27

    goto/16 :goto_13

    .line 4027
    :catch_22
    move-exception v0

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move v12, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto/16 :goto_12

    :catch_23
    move-exception v0

    move-object v1, v3

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    const/4 v12, 0x5

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v4, v72

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    goto/16 :goto_12

    .end local v70    # "idStr":Ljava/lang/String;
    .restart local v1    # "idStr":Ljava/lang/String;
    :catch_24
    move-exception v0

    move-object/from16 v70, v1

    move-object v1, v3

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    const/4 v12, 0x5

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v4, v72

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    .end local v1    # "idStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    :catch_25
    move-exception v0

    move-object/from16 v72, v1

    move-object v1, v3

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move-object/from16 v3, v70

    const/4 v12, 0x5

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    goto :goto_11

    :catch_26
    move-exception v0

    move-object/from16 v72, v1

    move v1, v2

    move-object/from16 v2, v77

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v64, v16

    move v12, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v3, v70

    :goto_11
    move-object/from16 v4, v72

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v16    # "timeStamp":J
    .end local v32    # "realName":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v35    # "lastUpdateTime":J
    .restart local v45    # "resourcePathStr":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    .restart local v66    # "firstInstallTime":J
    :catch_27
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object v7, v5

    move-object v5, v10

    move-object v4, v12

    move-object/from16 v74, v48

    move-wide/from16 v16, v64

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-wide/from16 v10, v66

    move-object/from16 v32, v1

    move-object v1, v3

    move-wide/from16 v33, v10

    move-object/from16 v15, v42

    move-object/from16 v3, v70

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v4, v72

    move-object v9, v6

    move-object/from16 v6, v45

    move-object/from16 v78, v7

    move-object v7, v5

    move-object/from16 v5, v78

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .end local v66    # "firstInstallTime":J
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v10    # "firstInstallTime":J
    .restart local v16    # "timeStamp":J
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v10    # "firstInstallTime":J
    .end local v16    # "timeStamp":J
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v33, "firstInstallTime":J
    .restart local v64    # "timeStamp":J
    :catch_28
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object v7, v5

    move-object v4, v12

    move-object/from16 v74, v48

    move-wide/from16 v16, v64

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v7, v10

    move-object/from16 v15, v42

    move-object/from16 v3, v70

    move-object v10, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v46

    move-object/from16 v4, v72

    move-object v9, v6

    move-object/from16 v6, v45

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v64    # "timeStamp":J
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v16    # "timeStamp":J
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v16    # "timeStamp":J
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v31, "timeStamp":J
    :catch_29
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object v7, v5

    move-object v4, v12

    move-object/from16 v74, v48

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object v9, v6

    move-object/from16 v6, v45

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v8, v46

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object v9, v6

    move-object/from16 v6, v45

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v17    # "cpuAbiOverrideString":Ljava/lang/String;
    :catch_2b
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object v9, v6

    move-object/from16 v16, v8

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v6, v45

    move-object/from16 v8, v46

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v16, "secondaryCpuAbiString":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object v9, v6

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v6, v45

    move-object/from16 v8, v46

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_2d
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v6, v45

    move-object/from16 v8, v46

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v46    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v8, "legacyCpuAbiString":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v6, v45

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v45    # "resourcePathStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    :catch_2f
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v7, v5

    move-object v2, v11

    move-object v7, v10

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v10, v4

    move-object/from16 v3, v70

    move-object/from16 v4, v72

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v7    # "codePathStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    :catch_30
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v72, v4

    move-object/from16 v74, v7

    move-object v7, v10

    move-object v4, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-object v10, v4

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v4, v72

    move-object/from16 v32, v1

    move-object v1, v3

    move-object/from16 v3, v70

    .end local v2    # "realName":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v70    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object/from16 v70, v3

    move-object/from16 v74, v7

    move-object v7, v10

    move-object v10, v12

    const/4 v12, 0x5

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v32, v1

    move-object v1, v3

    move-object/from16 v3, v70

    .end local v2    # "realName":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    goto :goto_12

    .end local v70    # "idStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v74, v7

    move-object v7, v10

    move-object v10, v12

    const/4 v12, 0x5

    move-object/from16 v78, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v11, v78

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v32, v1

    move-object v1, v3

    move-object v3, v11

    .end local v2    # "realName":Ljava/lang/String;
    .local v1, "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v11, "idStr":Ljava/lang/String;
    goto :goto_12

    .end local v11    # "idStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    :catch_33
    move-exception v0

    move-object v13, v2

    move-object/from16 v74, v7

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    const/4 v12, 0x5

    move-object v11, v3

    move-object v3, v1

    move-object v3, v11

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v32, v13

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v11    # "idStr":Ljava/lang/String;
    .local v13, "realName":Ljava/lang/String;
    goto :goto_12

    .end local v11    # "idStr":Ljava/lang/String;
    .end local v13    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object v13, v2

    move-object/from16 v74, v7

    move-object v7, v10

    move-object v2, v11

    move-object v10, v12

    const/4 v12, 0x5

    move-object v11, v3

    move-wide/from16 v64, v31

    move-object/from16 v15, v42

    move-object/from16 v32, v13

    .line 4028
    .end local v2    # "realName":Ljava/lang/String;
    .end local v31    # "timeStamp":J
    .end local v42    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v15, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v32    # "realName":Ljava/lang/String;
    .restart local v64    # "timeStamp":J
    :goto_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4028
    invoke-static {v12, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v46, v8

    move-object/from16 v76, v10

    move-object/from16 v8, v16

    move-object/from16 v2, v19

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v28

    move-wide/from16 v66, v33

    move-wide/from16 v68, v35

    move-object/from16 v10, v37

    move-object/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object v1, v15

    move-object/from16 v4, v24

    move-object/from16 v5, v26

    move/from16 v15, v27

    move-object/from16 v3, v41

    move-object/from16 v78, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v78

    .line 4032
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "installInitiatorUninstalled":Ljava/lang/String;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "updateAvailable":Ljava/lang/String;
    .end local v27    # "categoryHint":I
    .end local v28    # "uidError":Ljava/lang/String;
    .end local v33    # "firstInstallTime":J
    .end local v35    # "lastUpdateTime":J
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v41    # "installedForceQueryable":Ljava/lang/String;
    .local v1, "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .local v3, "installedForceQueryable":Ljava/lang/String;
    .local v4, "volumeUuid":Ljava/lang/String;
    .local v5, "updateAvailable":Ljava/lang/String;
    .local v6, "isOrphaned":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v10, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v11, "installOriginatingPackageName":Ljava/lang/String;
    .local v12, "installInitiatorUninstalled":Ljava/lang/String;
    .local v13, "installInitiatingPackageName":Ljava/lang/String;
    .local v14, "uidError":Ljava/lang/String;
    .local v15, "categoryHint":I
    .local v16, "sharedIdStr":Ljava/lang/String;
    .local v19, "codePathStr":Ljava/lang/String;
    .local v20, "resourcePathStr":Ljava/lang/String;
    .local v21, "idStr":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    .restart local v46    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v66    # "firstInstallTime":J
    .restart local v68    # "lastUpdateTime":J
    :goto_13
    if-eqz v10, :cond_2f

    .line 4033
    move-object/from16 v75, v7

    move-object/from16 v7, v74

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 4034
    nop

    .line 4036
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4037
    move-object/from16 v23, v6

    .end local v6    # "isOrphaned":Ljava/lang/String;
    .local v23, "isOrphaned":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4034
    invoke-static {v13, v11, v2, v0, v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v6

    .line 4038
    .local v6, "installSource":Lcom/android/server/pm/InstallSource;
    iput-object v6, v10, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 4039
    iput-object v4, v10, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 4040
    iput v15, v10, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 4041
    iput-object v9, v10, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 4042
    iput-object v1, v10, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 4043
    iput-object v8, v10, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 4044
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 4045
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 4047
    const-string v0, "enabled"

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v2, 0x0

    move-object/from16 v1, p1

    .end local v1    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v3    # "installedForceQueryable":Ljava/lang/String;
    .local v24, "primaryCpuAbiString":Ljava/lang/String;
    .local v26, "installerPackageName":Ljava/lang/String;
    .local v27, "installedForceQueryable":Ljava/lang/String;
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4048
    .local v3, "enabledStr":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 4050
    :try_start_3d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_36

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "volumeUuid":Ljava/lang/String;
    .local v28, "volumeUuid":Ljava/lang/String;
    :try_start_3e
    invoke-virtual {v10, v0, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_35

    .line 4064
    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto/16 :goto_16

    .line 4051
    :catch_35
    move-exception v0

    goto :goto_14

    .end local v28    # "volumeUuid":Ljava/lang/String;
    .restart local v4    # "volumeUuid":Ljava/lang/String;
    :catch_36
    move-exception v0

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .line 4052
    .end local v4    # "volumeUuid":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v28    # "volumeUuid":Ljava/lang/String;
    :goto_14
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 4053
    const/4 v7, 0x1

    invoke-virtual {v10, v7, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_15

    .line 4054
    :cond_19
    const/4 v7, 0x1

    const-string v7, "false"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 4055
    const/4 v7, 0x2

    invoke-virtual {v10, v7, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_15

    .line 4056
    :cond_1a
    const-string v7, "default"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 4057
    invoke-virtual {v10, v4, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_15

    .line 4059
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v75

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad enabled value: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    .end local v21    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v2

    move-object/from16 v2, v76

    .end local v2    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4059
    const/4 v7, 0x5

    invoke-static {v7, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4064
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_15
    goto :goto_16

    .line 4066
    .end local v28    # "volumeUuid":Ljava/lang/String;
    .local v4, "volumeUuid":Ljava/lang/String;
    .local v21, "idStr":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    :cond_1c
    move-object/from16 v28, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    .restart local v28    # "volumeUuid":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v2, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4069
    :goto_16
    move-object/from16 v2, p0

    move-object v7, v14

    .end local v14    # "uidError":Ljava/lang/String;
    .local v7, "uidError":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 4071
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4073
    .local v0, "outerDepth":I
    :goto_17
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v22, v14

    move-object/from16 v31, v3

    const/4 v3, 0x1

    .end local v3    # "enabledStr":Ljava/lang/String;
    .local v22, "type":I
    .local v31, "enabledStr":Ljava/lang/String;
    if-eq v14, v3, :cond_2e

    const/4 v3, 0x3

    move/from16 v14, v22

    .end local v22    # "type":I
    .local v14, "type":I
    if-ne v14, v3, :cond_1e

    .line 4074
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_1d

    goto :goto_18

    :cond_1d
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    goto/16 :goto_1d

    .line 4075
    :cond_1e
    :goto_18
    const/4 v3, 0x3

    if-eq v14, v3, :cond_2d

    const/4 v3, 0x4

    if-ne v14, v3, :cond_1f

    .line 4076
    move-object/from16 v3, v31

    goto :goto_17

    .line 4079
    :cond_1f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4081
    .local v3, "tagName":Ljava/lang/String;
    move/from16 v22, v0

    .end local v0    # "outerDepth":I
    .local v22, "outerDepth":I
    const-string v0, "disabled-components"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4082
    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "idStr":Ljava/lang/String;
    .local v33, "idStr":Ljava/lang/String;
    invoke-direct {v2, v10, v1, v4}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_1c

    .line 4083
    .end local v33    # "idStr":Ljava/lang/String;
    .restart local v4    # "idStr":Ljava/lang/String;
    :cond_20
    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "idStr":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    const-string v0, "enabled-components"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4084
    invoke-direct {v2, v10, v1, v4}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_1c

    .line 4085
    :cond_21
    const-string/jumbo v0, "sigs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4086
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_1c

    .line 4087
    :cond_22
    const-string/jumbo v0, "perms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4088
    nop

    .line 4089
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4088
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4090
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move/from16 v42, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    const/4 v4, 0x5

    goto/16 :goto_1c

    .line 4091
    :cond_23
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "identifier"

    if-eqz v0, :cond_25

    .line 4092
    move-object/from16 v34, v5

    const/4 v5, 0x0

    .end local v5    # "updateAvailable":Ljava/lang/String;
    .local v34, "updateAvailable":Ljava/lang/String;
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4093
    .local v4, "id":J
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v35, v6

    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .local v35, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4094
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_24

    .line 4095
    iget-object v6, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v36, v7

    .end local v7    # "uidError":Ljava/lang/String;
    .local v36, "uidError":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v41, 0x1

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v42, v0

    .end local v0    # "refCt":Ljava/lang/Integer;
    .local v42, "refCt":Ljava/lang/Integer;
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 4097
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v42    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    .restart local v7    # "uidError":Ljava/lang/String;
    :cond_24
    move-object/from16 v42, v0

    move-object/from16 v36, v7

    const/16 v41, 0x1

    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v7    # "uidError":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v42    # "refCt":Ljava/lang/Integer;
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4099
    :goto_19
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .end local v4    # "id":J
    .end local v42    # "refCt":Ljava/lang/Integer;
    goto :goto_1a

    .line 4100
    .end local v34    # "updateAvailable":Ljava/lang/String;
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "uidError":Ljava/lang/String;
    .restart local v5    # "updateAvailable":Ljava/lang/String;
    .restart local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v7    # "uidError":Ljava/lang/String;
    :cond_25
    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    .end local v5    # "updateAvailable":Ljava/lang/String;
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v7    # "uidError":Ljava/lang/String;
    .restart local v34    # "updateAvailable":Ljava/lang/String;
    .restart local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v36    # "uidError":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :goto_1a
    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_1c

    .line 4102
    :cond_26
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4103
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4104
    .restart local v4    # "id":J
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 4105
    .end local v4    # "id":J
    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_1c

    :cond_27
    const-string v0, "defined-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4106
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4107
    .local v6, "id":J
    const-string v0, "alias"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4108
    .local v0, "alias":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4109
    .local v4, "refCt":Ljava/lang/Integer;
    if-eqz v4, :cond_28

    .line 4110
    iget-object v5, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v37, v8

    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v37, "secondaryCpuAbiString":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v41

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move-object/from16 v43, v4

    .end local v4    # "refCt":Ljava/lang/Integer;
    .local v43, "refCt":Ljava/lang/Integer;
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 4112
    .end local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v43    # "refCt":Ljava/lang/Integer;
    .restart local v4    # "refCt":Ljava/lang/Integer;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    :cond_28
    move-object/from16 v43, v4

    move-object/from16 v37, v8

    const/16 v42, 0x1

    .end local v4    # "refCt":Ljava/lang/Integer;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v43    # "refCt":Ljava/lang/Integer;
    iget-object v4, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4114
    :goto_1b
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 4115
    .end local v0    # "alias":Ljava/lang/String;
    .end local v6    # "id":J
    .end local v43    # "refCt":Ljava/lang/Integer;
    const/4 v4, 0x5

    goto :goto_1c

    .end local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    :cond_29
    move-object/from16 v37, v8

    const/16 v42, 0x1

    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    const-string v0, "install-initiator-sigs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4116
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 4117
    .local v0, "signatures":Lcom/android/server/pm/PackageSignatures;
    iget-object v4, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 4118
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 4119
    invoke-virtual {v4, v0}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 4120
    .end local v0    # "signatures":Lcom/android/server/pm/PackageSignatures;
    const/4 v4, 0x5

    goto :goto_1c

    :cond_2a
    const-string v0, "domain-verification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4121
    invoke-direct {v2, v1, v10}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    const/4 v4, 0x5

    goto :goto_1c

    .line 4122
    :cond_2b
    const-string/jumbo v0, "mime-group"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4123
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {v2, v1, v0}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    const/4 v4, 0x5

    goto :goto_1c

    .line 4125
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <package>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4126
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4125
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4127
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4129
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1c
    move/from16 v0, v22

    move-object/from16 v3, v31

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    goto/16 :goto_17

    .line 4075
    .end local v22    # "outerDepth":I
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "updateAvailable":Ljava/lang/String;
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "updateAvailable":Ljava/lang/String;
    .local v6, "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v7    # "uidError":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    :cond_2d
    move/from16 v22, v0

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    const/4 v4, 0x5

    const/16 v42, 0x1

    .end local v0    # "outerDepth":I
    .end local v4    # "idStr":Ljava/lang/String;
    .end local v5    # "updateAvailable":Ljava/lang/String;
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v7    # "uidError":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "updateAvailable":Ljava/lang/String;
    .restart local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    move-object/from16 v3, v31

    move-object/from16 v4, v33

    goto/16 :goto_17

    .line 4073
    .end local v14    # "type":I
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "updateAvailable":Ljava/lang/String;
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v4    # "idStr":Ljava/lang/String;
    .restart local v5    # "updateAvailable":Ljava/lang/String;
    .restart local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v7    # "uidError":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v22, "type":I
    :cond_2e
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move/from16 v14, v22

    move/from16 v22, v0

    .line 4130
    .end local v0    # "outerDepth":I
    .end local v4    # "idStr":Ljava/lang/String;
    .end local v5    # "updateAvailable":Ljava/lang/String;
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v7    # "uidError":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v31    # "enabledStr":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "updateAvailable":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    :goto_1d
    goto :goto_1e

    .line 4131
    .end local v23    # "isOrphaned":Ljava/lang/String;
    .end local v24    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v26    # "installerPackageName":Ljava/lang/String;
    .end local v27    # "installedForceQueryable":Ljava/lang/String;
    .end local v28    # "volumeUuid":Ljava/lang/String;
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "updateAvailable":Ljava/lang/String;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v1    # "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .local v3, "installedForceQueryable":Ljava/lang/String;
    .local v4, "volumeUuid":Ljava/lang/String;
    .restart local v5    # "updateAvailable":Ljava/lang/String;
    .local v6, "isOrphaned":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v14, "uidError":Ljava/lang/String;
    .local v21, "idStr":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    :cond_2f
    move-object/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v23, v6

    move-object/from16 v37, v8

    move-object/from16 v36, v14

    move-object/from16 v33, v21

    move-object/from16 v21, v22

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    .end local v1    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v3    # "installedForceQueryable":Ljava/lang/String;
    .end local v4    # "volumeUuid":Ljava/lang/String;
    .end local v5    # "updateAvailable":Ljava/lang/String;
    .end local v6    # "isOrphaned":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v14    # "uidError":Ljava/lang/String;
    .end local v22    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    .restart local v23    # "isOrphaned":Ljava/lang/String;
    .restart local v24    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v26    # "installerPackageName":Ljava/lang/String;
    .restart local v27    # "installedForceQueryable":Ljava/lang/String;
    .restart local v28    # "volumeUuid":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "updateAvailable":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v37    # "secondaryCpuAbiString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4133
    :goto_1e
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1473
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1475
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1476
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1477
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1478
    goto :goto_0

    .line 1480
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1481
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1482
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1483
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1484
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_1

    .line 1485
    :cond_3
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1485
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1488
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1490
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1491
    :cond_4
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1526
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1528
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1529
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1530
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1531
    goto :goto_0

    .line 1533
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1535
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1540
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_1

    .line 1542
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageSettings"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1545
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1546
    :cond_4
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4265
    const-string v0, " at "

    const-string v1, " has bad userId "

    const/4 v2, 0x0

    .line 4266
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4267
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4268
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 4269
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 4271
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v7, 0x5

    :try_start_0
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4272
    const-string/jumbo v8, "userId"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 4273
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 4274
    .local v8, "userId":I
    :goto_0
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "system"

    invoke-interface {p1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4275
    or-int/lit8 v4, v4, 0x1

    .line 4277
    :cond_1
    if-nez v2, :cond_2

    .line 4278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4280
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4278
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4281
    :cond_2
    if-nez v8, :cond_3

    .line 4282
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: shared-user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4282
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4287
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    move-object v6, v9

    if-nez v9, :cond_4

    .line 4289
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4290
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4298
    .end local v8    # "userId":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 4294
    :catch_0
    move-exception v8

    .line 4295
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4295
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4300
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v6, :cond_b

    .line 4301
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4303
    .local v0, "outerDepth":I
    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v8, v1

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_a

    const/4 v1, 0x3

    if-ne v8, v1, :cond_6

    .line 4304
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v0, :cond_a

    .line 4305
    :cond_6
    if-eq v8, v1, :cond_5

    const/4 v1, 0x4

    if-ne v8, v1, :cond_7

    .line 4306
    goto :goto_3

    .line 4309
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4310
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4311
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 4312
    :cond_8
    const-string/jumbo v9, "perms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4313
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_4

    .line 4315
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4315
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4317
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4319
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 4320
    .end local v0    # "outerDepth":I
    .end local v8    # "type":I
    :cond_a
    goto :goto_5

    .line 4321
    :cond_b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4323
    :goto_5
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1139
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_0

    .line 1140
    return v0

    .line 1143
    :cond_0
    const-string v1, " name="

    const/4 v2, 0x6

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 1144
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1145
    .local v3, "size":I
    add-int/lit16 v4, p1, -0x2710

    .line 1147
    .local v4, "index":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1148
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding duplicate app id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1155
    return v0

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .end local v3    # "size":I
    .end local v4    # "index":I
    goto :goto_1

    .line 1159
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1163
    return v0

    .line 1165
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1167
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    return-void

    .line 1131
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)V

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1135
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 1194
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1196
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1197
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1201
    :goto_0
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 4443
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 4444
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4446
    :cond_0
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;)V
    .locals 19
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p6, "primaryCpuAbi"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p8, "pkgFlags"    # I
    .param p9, "pkgPrivateFlags"    # I
    .param p10, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p11, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p12, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 796
    .local p13, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 797
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v8, " to "

    if-eq v7, v1, :cond_2

    .line 798
    const/4 v7, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v11, "<nothing>"

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v10, v11

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    if-eqz v1, :cond_1

    iget-object v11, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 798
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 802
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    const/4 v8, -0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating application package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 806
    :cond_2
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v7, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "; Retain data and using new"

    const-string v10, " package "

    const-string v11, " system"

    const-string v12, ""

    const-string v13, "Update"

    const-string v14, "PackageManager"

    if-nez v7, :cond_8

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    .line 808
    .local v7, "isSystem":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    if-eqz v7, :cond_3

    move-object v1, v11

    goto :goto_1

    :cond_3
    move-object v1, v12

    :goto_1
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code path from "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-nez v7, :cond_7

    .line 818
    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    .line 819
    invoke-static/range {p10 .. p10}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 820
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_5

    .line 821
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v17, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, v16

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 822
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v16, v7

    .end local v7    # "isSystem":Z
    .local v16, "isSystem":Z
    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 823
    const/4 v7, 0x0

    iget v11, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 824
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v11, v18

    goto :goto_2

    .line 821
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_4
    move-object/from16 v17, v1

    move/from16 v16, v7

    move-object/from16 v18, v11

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    .restart local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 820
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_5
    move-object/from16 v17, v1

    move/from16 v16, v7

    move-object/from16 v18, v11

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    .restart local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 818
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_6
    move/from16 v16, v7

    move-object/from16 v18, v11

    .line 831
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    :goto_3
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_4

    .line 814
    .end local v16    # "isSystem":Z
    .restart local v7    # "isSystem":Z
    :cond_7
    move-object/from16 v1, p5

    move/from16 v16, v7

    move-object/from16 v18, v11

    .line 833
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    :goto_4
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 834
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_5

    .line 806
    .end local v16    # "isSystem":Z
    :cond_8
    move-object/from16 v1, p5

    move-object/from16 v18, v11

    .line 836
    :goto_5
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v7, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    .line 838
    .restart local v7    # "isSystem":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    if-eqz v7, :cond_9

    move-object/from16 v12, v18

    :cond_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " resource path from "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 838
    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 845
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 850
    .end local v7    # "isSystem":Z
    :cond_a
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 851
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v8, -0x402e0009

    and-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 857
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, p8, 0x1

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 858
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v8, p9, 0x8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 860
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x20000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 862
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 864
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x80000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 866
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x200000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 868
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 870
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 871
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 873
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    array-length v9, v4

    array-length v10, v5

    if-ne v9, v10, :cond_b

    .line 875
    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 876
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_6

    .line 878
    :cond_b
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 879
    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 881
    :goto_6
    move-object/from16 v9, p13

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 882
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2759
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2760
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2759
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2763
    goto :goto_0

    .line 2761
    :catch_0
    move-exception v0

    .line 2762
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2669
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2671
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2674
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2675
    return-void
.end method

.method private writeMimeGroupLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4190
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez p2, :cond_0

    .line 4191
    return-void

    .line 4194
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4195
    .local v1, "mimeGroup":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "mime-group"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4196
    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4198
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4199
    .local v5, "mimeType":Ljava/lang/String;
    const-string/jumbo v6, "mime-type"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4200
    const-string/jumbo v7, "value"

    invoke-interface {p1, v2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4201
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4202
    .end local v5    # "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 4204
    :cond_1
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4205
    .end local v1    # "mimeGroup":Ljava/lang/String;
    goto :goto_0

    .line 4206
    :cond_2
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .locals 18
    .param p1, "creatingUserId"    # I

    .line 2790
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "PackageSettings"

    const-string v0, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2791
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2792
    .local v5, "userIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 2793
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v5, v6

    .line 2792
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2795
    .end local v6    # "i":I
    :cond_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 2796
    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2800
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2801
    .local v6, "tempFile":Ljava/io/File;
    new-instance v7, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2803
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    .line 2805
    .local v8, "writeTarget":Ljava/io/File;
    const/4 v9, 0x0

    .line 2807
    .local v9, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2808
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v9, v11

    .line 2809
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2811
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2812
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2814
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v15, 0x0

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 2816
    :cond_2
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2815
    invoke-static {v14, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v14

    .line 2816
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    :goto_2
    nop

    .line 2818
    .local v14, "dataPath":Ljava/lang/String;
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v15, :cond_9

    if-nez v14, :cond_3

    move-object/from16 v16, v4

    move-object v4, v0

    goto/16 :goto_7

    .line 2825
    :cond_3
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v15

    .line 2826
    .local v15, "isDebug":Z
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v1

    .line 2829
    .local v1, "gids":[I
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 2830
    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_1

    .line 2849
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2850
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2853
    if-eqz v15, :cond_5

    :try_start_1
    const-string v2, " 1 "
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2878
    .end local v1    # "gids":[I
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 2853
    .restart local v1    # "gids":[I
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    .restart local v15    # "isDebug":Z
    :cond_5
    :try_start_2
    const-string v2, " 0 "

    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 2859
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2860
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    move-object/from16 v16, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_3
    array-length v4, v1

    if-ge v2, v4, :cond_6

    .line 2861
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    aget v4, v1, v2

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2860
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    goto :goto_4

    .end local v2    # "i":I
    :cond_6
    goto :goto_5

    .line 2858
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    move-object/from16 v16, v4

    .line 2865
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const-string/jumbo v2, "none"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    :goto_5
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    goto :goto_6

    :cond_8
    const-string v2, "0"

    :goto_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2870
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v0

    move-object/from16 v17, v1

    .end local v1    # "gids":[I
    .local v17, "gids":[I
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2871
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2873
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    .end local v17    # "gids":[I
    goto/16 :goto_1

    .line 2818
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v4

    move-object v4, v0

    .line 2819
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_7
    const-string v0, "android"

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " due to missing metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 2819
    :cond_a
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 2874
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    move-object/from16 v16, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 2875
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2876
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 2877
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2882
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 2878
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    .line 2879
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_8
    const-string v1, "Failed to write packages.list"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2880
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2881
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2883
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method


# virtual methods
.method addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .locals 2
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 4136
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4137
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4139
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4140
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4142
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4143
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4145
    :cond_2
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p15, "usesStaticLibraryNames"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 596
    .local p16, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 597
    .local v12, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v18, 0x0

    if-eqz v12, :cond_1

    .line 598
    iget v1, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v13, :cond_0

    .line 599
    return-object v12

    .line 601
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 603
    return-object v18

    .line 605
    :cond_1
    new-instance v19, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, v19

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move-object/from16 v20, v12

    .end local v12    # "p":Lcom/android/server/pm/PackageSetting;
    .local v20, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 610
    .end local v20    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v2, p9

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 611
    move-object/from16 v3, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 612
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-object v1

    .line 615
    :cond_2
    return-object v18
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 620
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 621
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_0

    .line 622
    return-object v0

    .line 624
    :cond_0
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 626
    return-object v1

    .line 628
    :cond_1
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 629
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 630
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-object v0

    .line 634
    :cond_2
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .locals 21
    .param p1, "userId"    # I

    .line 3371
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3372
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 3373
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3374
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3375
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3376
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3377
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    .line 3378
    .local v6, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 3379
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3380
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/content/IntentFilter;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3378
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3384
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    .end local v7    # "i":I
    :cond_0
    goto :goto_0

    .line 3387
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 3388
    .local v5, "size":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_2
    if-ge v7, v5, :cond_d

    .line 3389
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 3390
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/pm/PackageManagerService$ScanPartition;

    .line 3392
    .local v8, "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/preferred-apps"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 3393
    .local v9, "preferredDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3394
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_b

    .line 3397
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v10, " cannot be read"

    const-string v11, "PackageSettings"

    if-nez v0, :cond_3

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Directory "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_b

    .line 3403
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 3404
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3405
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_b

    .line 3408
    :cond_4
    array-length v13, v12

    const/4 v0, 0x0

    move v14, v0

    :goto_3
    if-ge v14, v13, :cond_b

    aget-object v15, v12, v14

    .line 3409
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, ".xml"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-xml file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " directory, ignoring"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    goto/16 :goto_a

    .line 3414
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v6, "Preferred apps file "

    if-nez v0, :cond_6

    .line 3415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    goto/16 :goto_a

    .line 3422
    :cond_6
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v17, v4

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v17, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    .line 3423
    .local v4, "str":Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3424
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move/from16 v18, v5

    .end local v5    # "size":I
    .local v18, "size":I
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3427
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v19, v5

    move-object/from16 v20, v8

    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v19, "type":I
    .local v20, "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    const/4 v8, 0x2

    if-eq v5, v8, :cond_7

    move/from16 v5, v19

    const/4 v8, 0x1

    .end local v19    # "type":I
    .local v5, "type":I
    if-eq v5, v8, :cond_8

    move-object/from16 v8, v20

    goto :goto_4

    .end local v5    # "type":I
    .restart local v19    # "type":I
    :cond_7
    move/from16 v5, v19

    const/4 v8, 0x1

    .line 3432
    .end local v19    # "type":I
    .restart local v5    # "type":I
    :cond_8
    const/4 v8, 0x2

    if-eq v5, v8, :cond_9

    .line 3433
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not have start tag"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3442
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3434
    goto/16 :goto_a

    .line 3436
    :cond_9
    :try_start_6
    const-string/jumbo v8, "preferred-activities"

    move/from16 v16, v5

    .end local v5    # "type":I
    .local v16, "type":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 3437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not start with \'preferred-activities\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3442
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3439
    goto/16 :goto_a

    .line 3441
    :cond_a
    :try_start_8
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3442
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    .line 3422
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move-object v5, v0

    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_5

    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v5, "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catchall_2
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    move-object v5, v0

    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "index":I
    .end local v9    # "preferredDir":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    .end local v15    # "f":Ljava/io/File;
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local p0    # "this":Lcom/android/server/pm/Settings;
    .end local p1    # "userId":I
    :goto_6
    throw v5
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 3444
    .end local v4    # "str":Ljava/io/InputStream;
    .restart local v7    # "index":I
    .restart local v9    # "preferredDir":Ljava/io/File;
    .restart local v12    # "files":[Ljava/io/File;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local p0    # "this":Lcom/android/server/pm/Settings;
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_7

    .line 3442
    :catch_1
    move-exception v0

    goto :goto_8

    .line 3444
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_2
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_7

    .line 3442
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_3
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_8

    .line 3444
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3445
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 3442
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_5
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3443
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3446
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_9
    nop

    .line 3408
    .end local v15    # "f":Ljava/io/File;
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v8, v20

    const/4 v6, 0x1

    goto/16 :goto_3

    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :cond_b
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_b

    .line 3393
    .end local v12    # "files":[Ljava/io/File;
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :cond_c
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3388
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local v9    # "preferredDir":Ljava/io/File;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3449
    .end local v7    # "index":I
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :cond_d
    return-void
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method clearBlockUninstallLPw(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1882
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1883
    return-void
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .line 1250
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1251
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1255
    const/4 v1, 0x0

    return-object v1

    .line 1257
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    .line 1258
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v1, :cond_1

    .line 1259
    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v1, v2

    .line 1260
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_0

    .line 1266
    :cond_1
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1273
    :goto_0
    return-object v1
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4328
    .local p4, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v12, v0

    .line 4330
    .local v12, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNewUser-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4337
    if-nez v11, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v13, v3

    .line 4338
    .local v13, "skipPackageWhitelist":Z
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4339
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 4340
    .local v4, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    move v14, v5

    .line 4341
    .local v14, "packagesCount":I
    new-array v5, v14, [Ljava/lang/String;

    move-object v15, v5

    .line 4342
    .local v15, "volumeUuids":[Ljava/lang/String;
    new-array v5, v14, [Ljava/lang/String;

    move-object/from16 v16, v5

    .line 4343
    .local v16, "names":[Ljava/lang/String;
    new-array v5, v14, [I

    move-object/from16 v17, v5

    .line 4344
    .local v17, "appIds":[I
    new-array v5, v14, [Ljava/lang/String;

    move-object/from16 v18, v5

    .line 4345
    .local v18, "seinfos":[Ljava/lang/String;
    new-array v5, v14, [I

    move-object/from16 v19, v5

    .line 4346
    .local v19, "targetSdkVersions":[I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4347
    .local v5, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v14, :cond_8

    .line 4348
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 4349
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v8, :cond_1

    .line 4350
    move-object/from16 v9, p5

    goto :goto_5

    .line 4352
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4353
    move-object/from16 v9, p5

    :try_start_2
    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4354
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    .line 4352
    :cond_2
    move-object/from16 v9, p5

    .line 4354
    :cond_3
    const/4 v8, 0x0

    .line 4355
    .local v8, "shouldMaybeInstall":Z
    :goto_2
    if-eqz v8, :cond_5

    if-nez v13, :cond_4

    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4356
    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 4358
    .local v0, "shouldReallyInstall":Z
    :goto_3
    invoke-virtual {v7, v0, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4362
    if-eqz v8, :cond_6

    if-nez v0, :cond_6

    .line 4363
    const/16 v21, 0x1

    goto :goto_4

    :cond_6
    const/16 v21, 0x0

    :goto_4
    move/from16 v22, v21

    .line 4364
    .local v22, "uninstallReason":I
    move/from16 v2, v22

    .end local v22    # "uninstallReason":I
    .local v2, "uninstallReason":I
    invoke-virtual {v7, v2, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 4365
    if-nez v0, :cond_7

    .line 4366
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4370
    :cond_7
    move/from16 v22, v0

    .end local v0    # "shouldReallyInstall":Z
    .local v22, "shouldReallyInstall":Z
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v0, v15, v6

    .line 4371
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v0, v16, v6

    .line 4372
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v0, v17, v6

    .line 4373
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v18, v6

    .line 4374
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    aput v0, v19, v6

    .line 4347
    .end local v2    # "uninstallReason":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "shouldMaybeInstall":Z
    .end local v22    # "shouldReallyInstall":Z
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4376
    .end local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v5    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "i":I
    .end local v14    # "packagesCount":I
    .end local v15    # "volumeUuids":[Ljava/lang/String;
    .end local v16    # "names":[Ljava/lang/String;
    .end local v17    # "appIds":[I
    .end local v18    # "seinfos":[Ljava/lang/String;
    .end local v19    # "targetSdkVersions":[I
    :catchall_0
    move-exception v0

    move-object/from16 v9, p5

    goto :goto_7

    .line 4347
    .restart local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v5    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v6    # "i":I
    .restart local v14    # "packagesCount":I
    .restart local v15    # "volumeUuids":[Ljava/lang/String;
    .restart local v16    # "names":[Ljava/lang/String;
    .restart local v17    # "appIds":[I
    .restart local v18    # "seinfos":[Ljava/lang/String;
    .restart local v19    # "targetSdkVersions":[I
    :cond_8
    move-object/from16 v9, p5

    .line 4376
    .end local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v5    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "i":I
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4377
    const-string v0, "createAppData"

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4378
    const/16 v20, 0x3

    .line 4380
    .local v20, "flags":I
    const/4 v6, 0x3

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    :try_start_3
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppDataBatched([Ljava/lang/String;[Ljava/lang/String;II[I[Ljava/lang/String;[I)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4384
    goto :goto_6

    .line 4382
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4383
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4385
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4386
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4387
    :try_start_4
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4388
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4389
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4390
    return-void

    .line 4388
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 4376
    .end local v14    # "packagesCount":I
    .end local v15    # "volumeUuids":[Ljava/lang/String;
    .end local v16    # "names":[Ljava/lang/String;
    .end local v17    # "appIds":[I
    .end local v18    # "seinfos":[Ljava/lang/String;
    .end local v19    # "targetSdkVersions":[I
    .end local v20    # "flags":I
    :catchall_2
    move-exception v0

    :goto_7
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 537
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 538
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an installed package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return v1

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 544
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 546
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 548
    if-eqz p2, :cond_1

    .line 553
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .local v1, "disabled":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 555
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object v1, v0

    .line 557
    .restart local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return v3

    .line 561
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v1
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 5418
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5419
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5420
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5421
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5422
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    const-string v1, "instrumentations:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5423
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            ">;)V"
        }
    .end annotation

    .line 5427
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedComponent;>;"
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 5428
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 5429
    return-void

    .line 5431
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5433
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedComponent;

    .line 5434
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedComponent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5435
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedComponent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5437
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5350
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5352
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5353
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5355
    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    .line 5400
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5401
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5404
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_0

    .line 5405
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5406
    goto :goto_0

    .line 5408
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5409
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5410
    nop

    .line 5411
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5410
    const-string v4, ", flags="

    invoke-static {v4, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5412
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5414
    :cond_1
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .param p10, "dumpAllComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4749
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4750
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v9, :cond_d

    .line 4751
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4752
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4753
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4755
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4756
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4758
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4759
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4760
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4762
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4763
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_1

    .line 4764
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 4763
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4765
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4766
    const-string v1, "-"

    if-eqz v13, :cond_2

    .line 4767
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "splt,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4768
    const-string v4, "base,"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4770
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4771
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v4

    .line 4772
    .local v4, "splitRevisionCodes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ge v5, v14, :cond_2

    .line 4773
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4774
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    aget v14, v4, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 4772
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4779
    .end local v4    # "splitRevisionCodes":[I
    .end local v5    # "i":I
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4780
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4782
    const-string/jumbo v5, "usr"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4784
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4785
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4786
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "I"

    goto :goto_4

    :cond_3
    const-string v5, "i"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "B"

    goto :goto_5

    :cond_4
    const-string v5, "b"

    :goto_5
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4788
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SU"

    goto :goto_6

    :cond_5
    const-string/jumbo v5, "su"

    :goto_6
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4789
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "S"

    goto :goto_7

    :cond_6
    const-string/jumbo v5, "s"

    :goto_7
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4790
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "l"

    goto :goto_8

    :cond_7
    const-string v5, "L"

    :goto_8
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "IA"

    goto :goto_9

    :cond_8
    const-string v5, "ia"

    :goto_9
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4792
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "VPI"

    goto :goto_a

    :cond_9
    const-string/jumbo v5, "vpi"

    :goto_a
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4793
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 4794
    .local v5, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v14, "HA"

    goto :goto_b

    :cond_a
    const-string v14, "ha"

    :goto_b
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4796
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4797
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v14

    .line 4798
    .local v14, "lastDisabledAppCaller":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4799
    if-eqz v14, :cond_b

    move-object v15, v14

    goto :goto_c

    :cond_b
    move-object v15, v2

    :goto_c
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4802
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "harmfulAppWarning":Ljava/lang/String;
    .end local v14    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_3

    .line 4803
    :cond_c
    return-void

    .line 4806
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4807
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_d

    :cond_e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4808
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4809
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4810
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 4813
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4814
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4819
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_10

    .line 4820
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4822
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4823
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    if-nez v10, :cond_11

    .line 4825
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4826
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4827
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4829
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4832
    if-eqz v13, :cond_12

    .line 4833
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4834
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4836
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4837
    const-string v14, "    "

    if-eqz v13, :cond_30

    .line 4838
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v13}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4840
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4841
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4843
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4844
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4846
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4847
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    .line 4848
    .local v1, "privateFlags":I
    if-eqz v1, :cond_13

    .line 4849
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  privateFlags="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4850
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4852
    :cond_13
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4853
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4854
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4856
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  forceQueryable="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4857
    iget-boolean v2, v11, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v2, :cond_15

    .line 4858
    const-string v2, " (override=true)"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4860
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4861
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4862
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  queriesPackages="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4864
    :cond_16
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4865
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  queriesIntents="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4867
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v13, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v2

    .line 4868
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  dataDir="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  supportsScreens=["

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    const/4 v3, 0x1

    .line 4871
    .local v3, "first":Z
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsSmallScreens()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_19

    .line 4872
    if-nez v3, :cond_18

    .line 4873
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    :cond_18
    const/4 v3, 0x0

    .line 4875
    const-string/jumbo v4, "small"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4877
    :cond_19
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsNormalScreens()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4878
    if-nez v3, :cond_1a

    .line 4879
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4880
    :cond_1a
    const/4 v3, 0x0

    .line 4881
    const-string/jumbo v4, "medium"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4883
    :cond_1b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsLargeScreens()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 4884
    if-nez v3, :cond_1c

    .line 4885
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4886
    :cond_1c
    const/4 v3, 0x0

    .line 4887
    const-string/jumbo v4, "large"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    :cond_1d
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsExtraLargeScreens()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4890
    if-nez v3, :cond_1e

    .line 4891
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    :cond_1e
    const/4 v3, 0x0

    .line 4893
    const-string/jumbo v4, "xlarge"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4895
    :cond_1f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4896
    if-nez v3, :cond_20

    .line 4897
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4898
    :cond_20
    const/4 v3, 0x0

    .line 4899
    const-string/jumbo v4, "resizeable"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4901
    :cond_21
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4902
    if-nez v3, :cond_22

    .line 4903
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    :cond_22
    const/4 v3, 0x0

    .line 4905
    const-string v4, "anyDensity"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4907
    :cond_23
    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    .line 4909
    .local v4, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_24

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_24

    .line 4910
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dynamic libraries:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_24

    .line 4912
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 4916
    .end local v5    # "i":I
    :cond_24
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    const-string v15, " version:"

    if-eqz v5, :cond_25

    .line 4917
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  static library:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4919
    const-string/jumbo v5, "name:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4920
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v5, v0

    move/from16 v16, v1

    .end local v0    # "apkSigningVersion":I
    .end local v1    # "privateFlags":I
    .local v5, "apkSigningVersion":I
    .local v16, "privateFlags":I
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_f

    .line 4916
    .end local v5    # "apkSigningVersion":I
    .end local v16    # "privateFlags":I
    .restart local v0    # "apkSigningVersion":I
    .restart local v1    # "privateFlags":I
    :cond_25
    move v5, v0

    move/from16 v16, v1

    .line 4923
    .end local v0    # "apkSigningVersion":I
    .end local v1    # "privateFlags":I
    .restart local v5    # "apkSigningVersion":I
    .restart local v16    # "privateFlags":I
    :goto_f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 4924
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 4925
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    move-object/from16 v17, v2

    .end local v2    # "dataDir":Ljava/io/File;
    .local v17, "dataDir":Ljava/io/File;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 4927
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v17

    goto :goto_10

    .line 4924
    .end local v1    # "i":I
    .end local v17    # "dataDir":Ljava/io/File;
    .restart local v2    # "dataDir":Ljava/io/File;
    :cond_26
    move-object/from16 v17, v2

    .line 4931
    .end local v2    # "dataDir":Ljava/io/File;
    .restart local v17    # "dataDir":Ljava/io/File;
    :cond_27
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    .line 4932
    .local v1, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 4933
    .local v2, "usesStaticLibrariesVersions":[J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_29

    .line 4934
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v18, v0

    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "  usesStaticLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    move/from16 v19, v3

    .end local v3    # "first":Z
    .local v19, "first":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 4936
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4937
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4938
    move-object/from16 v20, v4

    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aget-wide v3, v2, v0

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 4935
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_11

    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    move-object/from16 v20, v4

    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_12

    .line 4933
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "first":Z
    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "first":Z
    .restart local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v18, v0

    move/from16 v19, v3

    move-object/from16 v20, v4

    .line 4942
    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "first":Z
    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "first":Z
    .restart local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 4943
    .local v0, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 4944
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  usesOptionalLibraries:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 4946
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4947
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4951
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v3

    .line 4952
    .local v3, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2b

    .line 4953
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_2b

    .line 4955
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4958
    .end local v4    # "i":I
    :cond_2b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v4

    .line 4959
    .local v4, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2f

    .line 4960
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "  processes:"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4961
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 4962
    .local v21, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v22, v0

    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4963
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 4964
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    .line 4965
    .local v0, "deniedPermission":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v23, v1

    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "      deny: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4966
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    .end local v0    # "deniedPermission":Ljava/lang/String;
    move-object/from16 v1, v23

    move-object/from16 v0, v24

    goto :goto_16

    .line 4964
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v23, v1

    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_17

    .line 4963
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    move-object/from16 v23, v1

    .line 4969
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_17
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto :goto_15

    .line 4961
    .end local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_18

    .line 4959
    .end local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .line 4972
    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "usesStaticLibrariesVersions":[J
    .end local v3    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .end local v5    # "apkSigningVersion":I
    .end local v16    # "privateFlags":I
    .end local v17    # "dataDir":Ljava/io/File;
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "first":Z
    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    :goto_18
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4973
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4974
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4976
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4977
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4978
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4979
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4980
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 4982
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4983
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    :cond_31
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 4986
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4987
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    :cond_32
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4990
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4991
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4992
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4993
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4994
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4996
    if-eqz v13, :cond_33

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 4997
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4998
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    :cond_33
    if-eqz v13, :cond_38

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 5002
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 5003
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5004
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 5005
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 5006
    .local v2, "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    if-eqz v10, :cond_34

    .line 5007
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 5008
    goto :goto_1a

    .line 5010
    :cond_34
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5011
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5012
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5013
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    .line 5014
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5016
    :cond_35
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_36

    .line 5017
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    :cond_36
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_37

    .line 5020
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    :cond_37
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5004
    .end local v2    # "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5026
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    .end local v1    # "i":I
    :cond_38
    if-nez v10, :cond_39

    if-eqz p9, :cond_3c

    :cond_39
    if-eqz v13, :cond_3c

    .line 5027
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 5028
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 5029
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 5030
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5031
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 5032
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5033
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_3a

    .line 5034
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 5035
    goto :goto_1c

    .line 5037
    :cond_3a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5038
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5039
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 5040
    const-string v4, ": restricted=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 5042
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5031
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 5047
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_3c
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v15, "  "

    if-eqz v0, :cond_3d

    if-nez v10, :cond_3d

    if-eqz p9, :cond_3e

    .line 5048
    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5049
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5052
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_3e
    if-eqz p10, :cond_3f

    .line 5053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 5056
    :cond_3f
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 5057
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5059
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 5060
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5061
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5062
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5063
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5064
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5066
    const-string v0, " distractionFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5067
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5068
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5069
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5070
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5071
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5072
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5073
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5074
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5075
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5076
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5077
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5079
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5080
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5081
    const-string v0, "  Suspend params:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5082
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 5083
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 5084
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    const-string v2, "    suspendingPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5087
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 5088
    .local v2, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v2, :cond_40

    .line 5089
    const-string v3, " dialogInfo="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5090
    iget-object v3, v2, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5092
    :cond_40
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5083
    .end local v2    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 5096
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    .end local v1    # "i":I
    :cond_41
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    .line 5097
    .local v4, "overlayPaths":[Ljava/lang/String;
    if-eqz v4, :cond_42

    array-length v1, v4

    if-lez v1, :cond_42

    .line 5098
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  overlay paths:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    array-length v1, v4

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_42

    aget-object v3, v4, v2

    .line 5100
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 5104
    :cond_42
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5105
    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getOverlayPathsForLibrary(I)Ljava/util/Map;

    move-result-object v17

    .line 5106
    .local v17, "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v17, :cond_45

    .line 5108
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5109
    .local v2, "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_43

    .line 5110
    goto :goto_20

    .line 5112
    :cond_43
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " overlay paths:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v0, v3

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_44

    move/from16 v20, v0

    aget-object v0, v3, v1

    .line 5115
    .local v0, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    .end local v0    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_21

    .line 5117
    .end local v2    # "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_44
    move-object/from16 v1, v19

    goto :goto_20

    .line 5120
    :cond_45
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 5121
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 5122
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5126
    :cond_46
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_47

    .line 5127
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 5128
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5130
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v19

    .line 5129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v20, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v2, v18

    move-object/from16 v18, v3

    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v18, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v3, p4

    move-object/from16 v21, v4

    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .local v21, "overlayPaths":[Ljava/lang/String;
    move-object/from16 v4, v19

    move-object v6, v5

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v6, "user":Landroid/content/pm/UserInfo;
    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_22

    .line 5126
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    .restart local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4    # "overlayPaths":[Ljava/lang/String;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object v6, v5

    .line 5133
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    .restart local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v21    # "overlayPaths":[Ljava/lang/String;
    :goto_22
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 5134
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 5135
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5136
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    :cond_48
    if-nez v10, :cond_4a

    .line 5140
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 5141
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "      "

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 5142
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    disabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5144
    .local v4, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_23

    .line 5147
    :cond_49
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 5148
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 5149
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    enabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5150
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5151
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5152
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_24

    .line 5155
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v17    # "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    :cond_4a
    move-object/from16 v6, p0

    goto/16 :goto_1d

    .line 5156
    :cond_4b
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5160
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5161
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 5162
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 5163
    .local v0, "printedSomething":Z
    nop

    .line 5164
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v19

    .line 5165
    .local v19, "dumpAllComponents":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v20

    .line 5166
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 5167
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 5168
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5169
    goto :goto_0

    .line 5171
    :cond_0
    if-eqz v12, :cond_1

    .line 5172
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5173
    goto :goto_0

    .line 5176
    :cond_1
    if-nez p5, :cond_2

    if-eqz v13, :cond_2

    .line 5177
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 5180
    :cond_2
    if-nez p5, :cond_4

    if-nez v0, :cond_4

    .line 5181
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5182
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5183
    :cond_3
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    .line 5186
    :cond_4
    move/from16 v17, v0

    .end local v0    # "printedSomething":Z
    .local v17, "printedSomething":Z
    :goto_1
    if-eqz p5, :cond_5

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    :cond_5
    if-eqz v13, :cond_6

    move v9, v2

    goto :goto_2

    :cond_6
    move v9, v3

    :goto_2
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v10

    move-object/from16 v8, v20

    move-object/from16 v18, v10

    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v18, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 5188
    .end local v18    # "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, v17

    goto :goto_0

    .line 5190
    .end local v17    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_7
    const/4 v0, 0x0

    .line 5191
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v12, :cond_d

    .line 5192
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5193
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 5194
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 5195
    goto :goto_3

    .line 5197
    :cond_8
    if-nez p5, :cond_b

    .line 5198
    if-nez v0, :cond_a

    .line 5199
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 5200
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5201
    :cond_9
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5202
    const/4 v0, 0x1

    .line 5204
    :cond_a
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 5206
    :cond_b
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5208
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5209
    if-eqz p5, :cond_c

    const-string v8, " -> "

    goto :goto_5

    :cond_c
    const-string v8, ","

    :goto_5
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5210
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 5214
    :cond_d
    const/4 v0, 0x0

    .line 5215
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    if-nez v12, :cond_13

    .line 5216
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 5217
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 5218
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 5219
    goto :goto_6

    .line 5221
    :cond_e
    if-nez p5, :cond_10

    if-nez v0, :cond_10

    .line 5222
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 5223
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5224
    :cond_f
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5225
    const/4 v0, 0x1

    .line 5227
    :cond_10
    if-eqz p5, :cond_11

    const-string v8, "dis"

    move-object/from16 v16, v8

    goto :goto_7

    :cond_11
    move-object/from16 v16, v4

    :goto_7
    if-eqz v13, :cond_12

    move/from16 v17, v2

    goto :goto_8

    :cond_12
    move/from16 v17, v3

    :goto_8
    const-string v10, "  "

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, v16

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v20

    move/from16 v18, v19

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 5229
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p4

    goto :goto_6

    .line 5231
    :cond_13
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5234
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 5236
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5237
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5238
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5239
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 5237
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5241
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 5245
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    .line 5247
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5320
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5321
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5322
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5359
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_2

    .line 5360
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5361
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5362
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    .line 5363
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5364
    goto :goto_0

    .line 5366
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5367
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5368
    nop

    .line 5369
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    .line 5368
    const-string v3, ", flags="

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5370
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5372
    :cond_2
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5251
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 5252
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5253
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_0

    .line 5254
    goto :goto_0

    .line 5256
    :cond_0
    if-eqz v8, :cond_1

    .line 5257
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5258
    goto :goto_0

    .line 5260
    :cond_1
    if-nez p5, :cond_b

    .line 5261
    if-nez v0, :cond_3

    .line 5262
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5263
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5264
    :cond_2
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5265
    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    .line 5261
    :cond_3
    move v11, v0

    .line 5268
    .end local v0    # "printedSomething":Z
    .local v11, "printedSomething":Z
    :goto_1
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5269
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5270
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5271
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5272
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5274
    const-string v12, "    "

    .line 5275
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5277
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5278
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 5279
    .local v13, "numPackages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const-string v14, "  "

    if-ge v0, v13, :cond_5

    .line 5280
    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5281
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4

    .line 5282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5284
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "NULL?!"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5279
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5288
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x4

    move-object/from16 v15, p4

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5289
    move v0, v11

    goto/16 :goto_0

    .line 5292
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 5293
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5295
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    array-length v3, v4

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_4
    if-ge v2, v3, :cond_a

    aget v1, v4, v2

    .line 5296
    .local v1, "userId":I
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v0

    .line 5297
    .local v0, "gids":[I
    nop

    .line 5298
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5299
    .local v17, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v18, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_7

    .line 5300
    :cond_8
    :goto_5
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v18, v2

    const-string v2, "User "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_9

    const/16 v19, 0x1

    goto :goto_6

    :cond_9
    move/from16 v19, v16

    :goto_6
    move-object/from16 v20, v0

    .end local v0    # "gids":[I
    .local v20, "gids":[I
    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "userId":I
    .local v21, "userId":I
    move-object/from16 v1, p1

    move/from16 v22, v3

    move-object/from16 v3, p3

    move-object/from16 v23, v4

    move-object/from16 v4, v17

    move-object/from16 v24, v5

    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v24, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 5295
    .end local v17    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v20    # "gids":[I
    .end local v21    # "userId":I
    :goto_7
    add-int/lit8 v2, v18, 0x1

    move/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_4

    .end local v24    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_a
    move-object/from16 v24, v5

    .line 5306
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "numPackages":I
    move v0, v11

    goto :goto_8

    .line 5307
    .end local v11    # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_b
    move-object/from16 v15, p4

    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5309
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_8
    goto/16 :goto_0

    .line 5310
    :cond_c
    move-object/from16 v15, p4

    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5313
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5314
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5315
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5317
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4724
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4726
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4727
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4728
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4729
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4730
    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4731
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4733
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4736
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4737
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "databaseVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4738
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4739
    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v4, "fingerprint"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4740
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4741
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4725
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4743
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4744
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1223
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    .line 1224
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1225
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1214
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1215
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1216
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1205
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1206
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1207
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1209
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;

    .line 565
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 566
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v2, 0x0

    return-object v2

    .line 570
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 571
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v15, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v13, v15, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v17, v2

    move-object v2, v15

    .end local v15    # "p":Lcom/android/server/pm/PackageSetting;
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    move-object v15, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .end local v2    # "p":Lcom/android/server/pm/PackageSetting;
    .local v17, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 576
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 579
    :cond_1
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1412
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1413
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    .line 1414
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1415
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4528
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4529
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4532
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4530
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1886
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1887
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1888
    const/4 v1, 0x0

    return v1

    .line 1890
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4537
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4538
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4539
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4542
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4543
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4540
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1400
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result v0

    return v0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "enabledPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 4494
    if-nez p1, :cond_0

    .line 4495
    const/4 v0, 0x0

    return-object v0

    .line 4497
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4484
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4485
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1425
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4599
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4602
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4600
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1238
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1242
    const/4 v1, 0x0

    return-object v1

    .line 1244
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1278
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1282
    const/4 v1, 0x0

    return v1

    .line 1284
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 1314
    if-nez p1, :cond_0

    .line 1315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1317
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1319
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1320
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1321
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1322
    goto :goto_0

    .line 1324
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_0

    .line 1326
    :cond_3
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 3
    .param p1, "appId"    # I

    .line 1172
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1174
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1175
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SettingBase;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1177
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingBase;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 518
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 519
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 520
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 521
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 529
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 4470
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4472
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4475
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4657
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4658
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4659
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4660
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4657
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4663
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 956
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 961
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 964
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 965
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 3
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4501
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4502
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4504
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4505
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method public isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "component"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 4511
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4512
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4514
    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4515
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/content/pm/PackageUserState;->isMatch(ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4519
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4520
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4523
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-boolean v1, v1, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    return v1

    .line 4521
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isPermissionUpgradeNeededLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1392
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result v0

    return v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1429
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    return-void
.end method

.method parseXML(Ljava/io/FileInputStream;)Z
    .locals 17
    .param p1, "str"    # Ljava/io/FileInputStream;

    .line 3054
    move-object/from16 v1, p0

    const-string v0, "No start tag found in package manager settings"

    const-string/jumbo v2, "persist.sys.pm.firstboot"

    const-string/jumbo v3, "true"

    const-string v4, "Error reading package manager settings"

    const-string v5, "Error reading settings: "

    const-string v7, "Error reading: "

    const/4 v8, 0x4

    const/4 v9, 0x1

    const-string/jumbo v10, "primary_physical"

    const-string v11, "PackageManager"

    const/4 v12, 0x0

    if-nez p1, :cond_3

    .line 3055
    :try_start_0
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 3056
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3057
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3058
    const-string v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    const-string v0, "first boot "

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3061
    :cond_0
    const-string/jumbo v0, "persist.sys.pm.file.error"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    const-string/jumbo v0, "packages.xml packages_backup packages_copy.xml all missing"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No settings file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    const-string v0, "No settings file; creating initial state"

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3070
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3071
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3072
    return v12

    .line 3074
    :cond_1
    const-string/jumbo v2, "use packages-copy.xml to parseXML"

    invoke-static {v8, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3076
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local p1    # "str":Ljava/io/FileInputStream;
    .local v2, "str":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3079
    .end local v2    # "str":Ljava/io/FileInputStream;
    .restart local p1    # "str":Ljava/io/FileInputStream;
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    .end local p1    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    iput-boolean v9, v1, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    goto :goto_2

    .line 3235
    .end local v2    # "str":Ljava/io/FileInputStream;
    .restart local p1    # "str":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_9

    .line 3203
    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_b

    .line 3054
    :cond_3
    move-object/from16 v2, p1

    .line 3083
    .end local p1    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    :goto_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3084
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3087
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v14, v13

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_4

    if-eq v14, v9, :cond_4

    goto :goto_3

    .line 3092
    :cond_4
    if-eq v14, v15, :cond_6

    .line 3093
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v13, "No start tag found in settings file\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    const/4 v8, 0x5

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3096
    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-boolean v0, v1, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    if-eqz v0, :cond_5

    .line 3099
    iput-boolean v12, v1, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    .line 3100
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3101
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->parseXML(Ljava/io/FileInputStream;)Z

    move-result v0

    return v0

    .line 3104
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3105
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3106
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3107
    return v12

    .line 3110
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v13, v0

    .line 3111
    .local v13, "outerDepth":I
    :goto_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v9, :cond_1e

    const/4 v0, 0x3

    if-ne v14, v0, :cond_7

    .line 3112
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v13, :cond_1e

    .line 3113
    :cond_7
    if-eq v14, v0, :cond_1d

    if-ne v14, v8, :cond_8

    .line 3114
    goto/16 :goto_8

    .line 3117
    :cond_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 3118
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3119
    invoke-direct {v1, v3}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3120
    :cond_9
    const-string/jumbo v0, "permissions"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3121
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3122
    :cond_a
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3123
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3124
    :cond_b
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3125
    invoke-direct {v1, v3}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3126
    :cond_c
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_7

    .line 3128
    :cond_d
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3131
    invoke-virtual {v1, v3, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_7

    .line 3132
    :cond_e
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3135
    invoke-direct {v1, v3, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_7

    .line 3136
    :cond_f
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3139
    invoke-direct {v1, v3, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_7

    .line 3140
    :cond_10
    const-string v0, "default-browser"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3141
    invoke-virtual {v1, v3, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_7

    .line 3142
    :cond_11
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3143
    invoke-direct {v1, v3}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3144
    :cond_12
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_14

    .line 3145
    const-string/jumbo v0, "new"

    invoke-interface {v3, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3146
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v9, "old"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3147
    .local v8, "oname":Ljava/lang/String;
    if-eqz v0, :cond_13

    if-eqz v8, :cond_13

    .line 3148
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    .end local v0    # "nname":Ljava/lang/String;
    .end local v8    # "oname":Ljava/lang/String;
    :cond_13
    goto/16 :goto_7

    :cond_14
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3151
    invoke-direct {v1, v3}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3152
    :cond_15
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v9, "fingerprint"

    const-string v6, "external"

    const-string v8, "internal"

    if-eqz v0, :cond_16

    .line 3154
    :try_start_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3156
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v16

    move-object/from16 p1, v16

    .line 3159
    .local p1, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v3, v8, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3160
    invoke-static {v3, v6, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v8, p1

    .end local p1    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .local v8, "external":Lcom/android/server/pm/Settings$VersionInfo;
    iput v6, v8, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3161
    nop

    .line 3162
    invoke-static {v3, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3164
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v8    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_7

    :cond_16
    const-string v0, "database-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3166
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3168
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v9

    .line 3171
    .local v9, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v3, v8, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3172
    invoke-static {v3, v6, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v9, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3174
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v9    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_7

    :cond_17
    const-string/jumbo v0, "verifier"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3175
    const-string v0, "device"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v0

    .line 3177
    .local v6, "deviceIdentity":Ljava/lang/String;
    :try_start_3
    invoke-static {v6}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3181
    goto :goto_5

    .line 3178
    :catch_2
    move-exception v0

    .line 3179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discard invalid verifier device id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3179
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "deviceIdentity":Ljava/lang/String;
    :goto_5
    goto/16 :goto_7

    :cond_18
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3183
    const-string v0, "enforcement"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3184
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3185
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_19
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    iput-object v6, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3186
    .end local v0    # "enforcement":Ljava/lang/String;
    goto :goto_7

    :cond_1a
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3187
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v6}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_7

    .line 3188
    :cond_1b
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3189
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3191
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 3192
    .local v6, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v8, "sdkVersion"

    invoke-static {v3, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3193
    const-string v8, "databaseVersion"

    invoke-static {v3, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3194
    invoke-static {v3, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3195
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_7

    .line 3196
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <packages>: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3196
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3200
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_7
    nop

    .line 3111
    :cond_1d
    :goto_8
    const/4 v8, 0x4

    const/4 v9, 0x1

    goto/16 :goto_4

    .line 3202
    :cond_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3239
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "outerDepth":I
    .end local v14    # "type":I
    goto :goto_a

    .line 3235
    :catch_3
    move-exception v0

    .line 3236
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3238
    invoke-static {v11, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3240
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    const/4 v3, 0x1

    return v3

    .line 3203
    :catch_4
    move-exception v0

    :goto_b
    move-object v3, v0

    .line 3204
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3206
    invoke-static {v11, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3208
    iget-boolean v0, v1, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    if-eqz v0, :cond_1f

    .line 3209
    iput-boolean v12, v1, Lcom/android/server/pm/Settings;->mUsingPackagesXML:Z

    .line 3210
    const-string/jumbo v0, "packages.xml parse error,try to use packages-copy.xml"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3212
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3213
    const/4 v4, 0x0

    .line 3214
    .local v4, "inputstream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3216
    .local v5, "parseresult":Z
    :try_start_5
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 3217
    const-string/jumbo v0, "start to parse packages-copy.xml"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->parseXML(Ljava/io/FileInputStream;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move v5, v0

    .line 3221
    goto :goto_c

    .line 3219
    :catch_5
    move-exception v0

    .line 3223
    :goto_c
    return v5

    .line 3226
    .end local v4    # "inputstream":Ljava/io/FileInputStream;
    .end local v5    # "parseresult":Z
    :cond_1f
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3227
    const-string v0, "Error reading packages-copy.xml, treat as no settings"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_20
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3233
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3234
    return v12
.end method

.method pruneSharedUsersLPw()V
    .locals 8

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 640
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 641
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_0

    .line 642
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    goto :goto_0

    .line 646
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 647
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 648
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 649
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 651
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    goto :goto_1

    .line 652
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 653
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_3
    goto :goto_0

    .line 656
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 657
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 659
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1999
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2001
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2003
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 2004
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 2005
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2006
    goto :goto_0

    .line 2009
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2010
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2011
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2012
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2013
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2014
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_3

    .line 2016
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_1

    .line 2022
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1
    goto :goto_2

    .line 2029
    :cond_4
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2029
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2032
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2034
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 2035
    :cond_5
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1574
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1576
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1577
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1578
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1579
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1580
    goto :goto_0

    .line 1582
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1583
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1584
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1585
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1586
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1587
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1589
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1590
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1592
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1593
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1594
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1596
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1598
    :goto_2
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1550
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1552
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1553
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1554
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1555
    goto :goto_0

    .line 1557
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1559
    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_3
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1564
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1566
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1567
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1569
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1570
    :cond_5
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2251
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2253
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 2255
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    goto/16 :goto_7

    .line 2256
    :cond_1
    :goto_1
    if-eq v4, v3, :cond_b

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 2258
    goto :goto_0

    .line 2260
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2261
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageManager"

    if-eqz v6, :cond_a

    .line 2262
    const/4 v6, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2264
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v10

    .line 2265
    .local v10, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v10, :cond_3

    .line 2266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2268
    goto :goto_0

    .line 2271
    :cond_3
    const-string v11, "granted"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2272
    .local v11, "grantedStr":Ljava/lang/String;
    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 2273
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    move v5, v12

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 2275
    .local v5, "granted":Z
    :goto_3
    const-string v13, "flags"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2276
    .local v6, "flagsStr":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 2277
    const/16 v12, 0x10

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_6
    nop

    .line 2279
    .local v12, "flags":I
    :goto_4
    const-string v13, "Permission already added: "

    const/4 v15, -0x1

    if-eqz v5, :cond_8

    .line 2280
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_7

    .line 2282
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2285
    :cond_7
    const v7, 0x3fbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_5

    .line 2289
    :cond_8
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_9

    .line 2291
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2294
    :cond_9
    const v7, 0x3fbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2298
    .end local v5    # "granted":Z
    .end local v6    # "flagsStr":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "grantedStr":Ljava/lang/String;
    .end local v12    # "flags":I
    :goto_5
    goto :goto_6

    .line 2299
    :cond_a
    move-object/from16 v9, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <permissions>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2299
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2303
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 2256
    :cond_b
    move-object/from16 v9, p0

    goto/16 :goto_0

    .line 2253
    :cond_c
    move-object/from16 v9, p0

    .line 2304
    :goto_7
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3245
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 3246
    .local v0, "str":Ljava/io/FileInputStream;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "PackageManager"

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 3251
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 3252
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from copy settings file\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3253
    const-string v1, "Need to read from copy backup settings file"

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package_copy.xml exist, Cleaning up packages-backup.xml "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3260
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 3261
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    const-string v1, "Need to read from backup settings file"

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3266
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up settings file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3276
    :cond_1
    goto :goto_1

    .line 3274
    :catch_0
    move-exception v1

    .line 3279
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3280
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3281
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3282
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 3286
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->parseXML(Ljava/io/FileInputStream;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 3287
    return v2

    .line 3301
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3303
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 3304
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3305
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v5

    .line 3306
    .local v5, "sharedUserId":I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    .line 3307
    .local v6, "idObj":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_4

    .line 3308
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 3309
    .local v7, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3310
    iget v8, v7, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v8, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3311
    invoke-direct {p0, v4, v7}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3312
    .end local v7    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_3

    :cond_4
    const/4 v7, 0x6

    const-string v8, " has shared uid "

    const-string v9, "Bad package setting: package "

    if-eqz v6, :cond_5

    .line 3313
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " that is not a shared uid\n"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3315
    .local v8, "msg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3316
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3317
    .end local v8    # "msg":Ljava/lang/String;
    goto :goto_3

    .line 3318
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " that is not defined\n"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3320
    .restart local v8    # "msg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3321
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3303
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "sharedUserId":I
    .end local v6    # "idObj":Ljava/lang/Object;
    .end local v8    # "msg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3324
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3326
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3327
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    .line 3335
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3336
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3337
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_4

    .line 3329
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3330
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3331
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3333
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3340
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3341
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3342
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_6

    .line 3348
    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3349
    .local v2, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3351
    .local v3, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 3352
    .local v4, "id":Ljava/lang/Object;
    if-eqz v4, :cond_b

    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_b

    .line 3353
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    iput-object v5, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3355
    .end local v3    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "id":Ljava/lang/Object;
    :cond_b
    goto :goto_7

    .line 3357
    :cond_c
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3358
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3362
    const/4 v3, 0x1

    return v3
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 60
    .param p1, "userId"    # I

    .line 1604
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v13, "suspending-package"

    const-string/jumbo v12, "pkg"

    const/4 v2, 0x0

    .line 1605
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v15

    .line 1606
    .local v15, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1607
    .local v14, "backupFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v11, "PackageManager"

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    .line 1609
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1610
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1613
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_0
    move-object/from16 v24, v2

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_0

    .line 1607
    :cond_1
    move-object/from16 v24, v2

    .line 1627
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v24, "str":Ljava/io/FileInputStream;
    :goto_0
    const-string v10, "Error reading package manager stopped packages"

    const/4 v9, 0x6

    const-string v8, "Error reading: "

    if-nez v24, :cond_4

    .line 1628
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_3

    .line 1629
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1637
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1638
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    move-object v13, v8

    move v8, v12

    move v9, v12

    move-object/from16 v25, v10

    move v10, v12

    move-object/from16 v26, v11

    move v11, v12

    const/16 v16, 0x0

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v28, v14

    .end local v14    # "backupFile":Ljava/io/File;
    .local v28, "backupFile":Ljava/io/File;
    move/from16 v14, v16

    move-object/from16 v29, v15

    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v29, "userPackagesStateFile":Ljava/io/File;
    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1656
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v3, p1

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v8, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    const/4 v9, 0x6

    goto :goto_1

    .line 1857
    :catch_1
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v6, v26

    move-object/from16 v31, v29

    goto/16 :goto_20

    .line 1850
    :catch_2
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v31, v29

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1657
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_2
    return-void

    .line 1857
    :catch_3
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1850
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v5, v8

    move v3, v9

    move-object v2, v10

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1659
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_3
    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v3, v29

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    :try_start_5
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v24, v0

    move-object/from16 v2, v24

    goto/16 :goto_2

    .line 1857
    :catch_5
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    goto/16 :goto_20

    .line 1850
    :catch_6
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1857
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v6, v26

    move-object/from16 v31, v29

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1850
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :catch_8
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v31, v29

    const/4 v3, 0x6

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1857
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1850
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v5, v8

    move v3, v9

    move-object v2, v10

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1627
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_4
    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v14

    move-object v3, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    move-object/from16 v2, v24

    .line 1662
    .end local v24    # "str":Ljava/io/FileInputStream;
    .local v2, "str":Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2a

    .line 1663
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_7
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1666
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2a

    move v5, v4

    .local v5, "type":I
    const/4 v15, 0x2

    const/4 v14, 0x1

    if-eq v4, v15, :cond_5

    if-eq v5, v14, :cond_5

    goto :goto_3

    .line 1671
    :cond_5
    const/4 v11, 0x5

    if-eq v5, v15, :cond_6

    .line 1672
    :try_start_8
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "No start tag found in package restrictions file\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1675
    return-void

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_b
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    goto/16 :goto_20

    .line 1850
    :catch_c
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1678
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_6
    const/4 v4, 0x0

    .line 1680
    .local v4, "maxAppLinkGeneration":I
    :try_start_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move v10, v7

    .line 1681
    .local v10, "outerDepth":I
    const/4 v7, 0x0

    move v9, v4

    .line 1682
    .end local v4    # "maxAppLinkGeneration":I
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    .local v9, "maxAppLinkGeneration":I
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2a

    move v8, v4

    .end local v5    # "type":I
    .local v8, "type":I
    if-eq v4, v14, :cond_27

    const/4 v4, 0x3

    if-ne v8, v4, :cond_8

    .line 1684
    :try_start_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    if-le v5, v10, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move v2, v9

    move/from16 v35, v10

    move-object/from16 v6, v26

    move/from16 v26, v8

    goto/16 :goto_19

    .line 1685
    :cond_8
    :goto_5
    if-eq v8, v4, :cond_26

    if-ne v8, v6, :cond_9

    .line 1687
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v6, v26

    move/from16 v26, v8

    goto/16 :goto_18

    .line 1690
    :cond_9
    :try_start_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1691
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2a

    if-eqz v16, :cond_20

    .line 1692
    :try_start_c
    const-string/jumbo v4, "name"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1693
    .local v4, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1f

    move-object/from16 v24, v6

    .line 1694
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v24, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v24, :cond_a

    .line 1695
    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package known for stopped package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 v7, v26

    :try_start_e
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1698
    move-object/from16 v26, v7

    move v5, v8

    move-object/from16 v7, v24

    const/4 v6, 0x4

    const/4 v14, 0x1

    goto :goto_4

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :catch_d
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object v6, v7

    goto/16 :goto_20

    .line 1850
    :catch_e
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object v6, v7

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1701
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v7, v26

    :try_start_f
    const-string v6, "ceDataInode"

    move-object/from16 v20, v12

    const-wide/16 v11, 0x0

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v30, v4

    move-object v6, v5

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    .local v6, "tagName":Ljava/lang/String;
    .local v30, "name":Ljava/lang/String;
    move-wide v4, v11

    .line 1703
    .local v4, "ceDataInode":J
    const-string v11, "inst"

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1d

    move-object/from16 v32, v7

    move v7, v11

    .line 1705
    .local v7, "installed":Z
    :try_start_10
    const-string/jumbo v11, "stopped"

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move/from16 v26, v8

    .end local v8    # "type":I
    .local v26, "type":I
    move v8, v11

    .line 1707
    .local v8, "stopped":Z
    const-string/jumbo v11, "nl"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move/from16 v33, v9

    .end local v9    # "maxAppLinkGeneration":I
    .local v33, "maxAppLinkGeneration":I
    move v9, v11

    .line 1712
    .local v9, "notLaunched":Z
    const-string v11, "blocked"

    invoke-interface {v0, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v11

    .line 1713
    .local v29, "blockedStr":Ljava/lang/String;
    if-nez v29, :cond_b

    .line 1714
    move v11, v12

    goto :goto_6

    :cond_b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1715
    .local v11, "hidden":Z
    :goto_6
    const-string v15, "hidden"

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v15

    .line 1716
    .local v34, "hiddenStr":Ljava/lang/String;
    if-nez v34, :cond_c

    .line 1717
    move v15, v11

    goto :goto_7

    :cond_c
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    :goto_7
    move/from16 v35, v10

    .end local v10    # "outerDepth":I
    .local v35, "outerDepth":I
    move v10, v15

    .line 1719
    .end local v11    # "hidden":Z
    .local v10, "hidden":Z
    const-string v11, "distraction_flags"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v15, 0x5

    .line 1721
    .local v11, "distractionFlags":I
    const-string/jumbo v15, "suspended"

    invoke-static {v0, v15, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v36, v15

    .line 1723
    .local v36, "suspended":Z
    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1725
    .local v15, "oldSuspendingPackage":Ljava/lang/String;
    const-string/jumbo v12, "suspend_dialog_message"

    invoke-interface {v0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    .line 1727
    .local v12, "dialogMessage":Ljava/lang/String;
    if-eqz v36, :cond_d

    if-nez v15, :cond_d

    .line 1728
    :try_start_11
    const-string v21, "android"
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    move-object/from16 v15, v21

    goto :goto_8

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "ceDataInode":J
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    :catch_f
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1850
    :catch_10
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1731
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "ceDataInode":J
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "type":I
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    :cond_d
    :goto_8
    :try_start_12
    const-string v14, "blockUninstall"
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b

    move-object/from16 v38, v2

    const/4 v2, 0x0

    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v38, "str":Ljava/io/FileInputStream;
    :try_start_13
    invoke-static {v0, v14, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    move/from16 v39, v14

    .line 1733
    .local v39, "blockUninstall":Z
    const-string v14, "instant-app"

    invoke-static {v0, v14, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 1735
    .local v14, "instantApp":Z
    const-string/jumbo v2, "virtual-preload"
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v17, "userPackagesStateFile":Ljava/io/File;
    :try_start_14
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v42, v15

    .end local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .local v42, "oldSuspendingPackage":Ljava/lang/String;
    move v15, v2

    .line 1737
    .local v15, "virtualPreload":Z
    const-string v2, "enabled"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v45, v6

    const/4 v3, 0x4

    .end local v6    # "tagName":Ljava/lang/String;
    .local v45, "tagName":Ljava/lang/String;
    move v6, v2

    .line 1739
    .local v6, "enabled":I
    const-string v2, "enabledCaller"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1741
    .local v16, "enabledCaller":Ljava/lang/String;
    const-string v2, "harmful-app-warning"

    .line 1742
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1743
    .local v23, "harmfulAppWarning":Ljava/lang/String;
    const-string v2, "domainVerificationStatus"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 1746
    .local v19, "verifState":I
    const-string v2, "app-link-generation"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .line 1748
    .local v3, "linkGeneration":I
    move/from16 v2, v33

    .end local v33    # "maxAppLinkGeneration":I
    .local v2, "maxAppLinkGeneration":I
    if-le v3, v2, :cond_e

    .line 1749
    move v2, v3

    move/from16 v33, v2

    goto :goto_9

    .line 1748
    :cond_e
    move/from16 v33, v2

    .line 1751
    .end local v2    # "maxAppLinkGeneration":I
    .restart local v33    # "maxAppLinkGeneration":I
    :goto_9
    const-string v2, "install-reason"

    move/from16 v46, v3

    const/4 v3, 0x0

    .end local v3    # "linkGeneration":I
    .local v46, "linkGeneration":I
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1753
    .local v21, "installReason":I
    const-string/jumbo v2, "uninstall-reason"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 1756
    .local v22, "uninstallReason":I
    const/4 v2, 0x0

    .line 1757
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v37, 0x0

    .line 1758
    .local v37, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v47, 0x0

    .line 1759
    .local v47, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v48, 0x0

    .line 1760
    .local v48, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    const/16 v49, 0x0

    .line 1762
    .local v49, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v50

    move/from16 v51, v50

    .line 1763
    .local v51, "packageDepth":I
    const/16 v50, 0x0

    move/from16 v57, v26

    move-object/from16 v26, v2

    move/from16 v2, v57

    move-wide/from16 v58, v4

    move-object/from16 v4, v47

    move-object/from16 v5, v48

    move-wide/from16 v47, v58

    .line 1764
    .end local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v2, "type":I
    .local v4, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v5, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v26, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v47, "ceDataInode":J
    .local v50, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    move v2, v3

    move/from16 v53, v6

    const/4 v6, 0x1

    .end local v6    # "enabled":I
    .local v53, "enabled":I
    if-eq v3, v6, :cond_1c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 1766
    :try_start_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v3, v51

    .end local v51    # "packageDepth":I
    .local v3, "packageDepth":I
    if-le v6, v3, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    goto/16 :goto_11

    .line 1764
    .end local v3    # "packageDepth":I
    .restart local v51    # "packageDepth":I
    :cond_10
    move/from16 v3, v51

    .line 1767
    .end local v51    # "packageDepth":I
    .restart local v3    # "packageDepth":I
    :goto_b
    const/4 v6, 0x3

    if-eq v2, v6, :cond_1b

    const/4 v6, 0x4

    if-ne v2, v6, :cond_11

    .line 1769
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    goto/16 :goto_10

    .line 1771
    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v51, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v54

    sparse-switch v54, :sswitch_data_0

    move/from16 v54, v2

    .end local v2    # "type":I
    .local v54, "type":I
    goto :goto_c

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_0
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-dialog-info"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x4

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_1
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspend-params"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x5

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_2
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-launcher-extras"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x3

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_3
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-app-extras"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x2

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_4
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string v2, "enabled-components"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x0

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_5
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string v2, "disabled-components"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    if-eqz v2, :cond_12

    const/4 v6, 0x1

    goto :goto_d

    :cond_12
    :goto_c
    move/from16 v6, v51

    :goto_d
    if-eqz v6, :cond_1a

    const/4 v2, 0x1

    if-eq v6, v2, :cond_19

    const/4 v2, 0x2

    if-eq v6, v2, :cond_18

    const/4 v2, 0x3

    if-eq v6, v2, :cond_17

    move/from16 v31, v3

    const/4 v3, 0x4

    .end local v3    # "packageDepth":I
    .local v31, "packageDepth":I
    if-eq v6, v3, :cond_16

    const-string v2, "PackageSettings"

    move/from16 v51, v7

    const/4 v7, 0x5

    .end local v7    # "installed":Z
    .local v51, "installed":Z
    if-eq v6, v7, :cond_13

    .line 1802
    :try_start_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " under tag "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1788
    :cond_13
    move-object/from16 v3, v20

    const/4 v6, 0x0

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v40, v20

    .line 1790
    .local v40, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v6, v40

    .end local v40    # "suspendingPackage":Ljava/lang/String;
    .local v6, "suspendingPackage":Ljava/lang/String;
    if-nez v6, :cond_14

    .line 1791
    const-string v7, "No suspendingPackage found inside tag suspend-params"

    invoke-static {v2, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    goto/16 :goto_10

    .line 1795
    :cond_14
    if-nez v50, :cond_15

    .line 1796
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v50, v2

    goto :goto_e

    .line 1795
    :cond_15
    move-object/from16 v2, v50

    .line 1798
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v2, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :goto_e
    nop

    .line 1799
    invoke-static {v0}, Landroid/content/pm/PackageUserState$SuspendParams;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v7

    .line 1798
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    move-object/from16 v50, v2

    goto :goto_f

    .line 1785
    .end local v2    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v6    # "suspendingPackage":Ljava/lang/String;
    .end local v51    # "installed":Z
    .restart local v7    # "installed":Z
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :cond_16
    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v7    # "installed":Z
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    .line 1786
    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move-object/from16 v49, v2

    goto :goto_f

    .line 1782
    .end local v2    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    .restart local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :cond_17
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1783
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v2, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    move-object v5, v2

    goto :goto_f

    .line 1779
    .end local v2    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v7    # "installed":Z
    :cond_18
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1780
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v2, "suspendedAppExtras":Landroid/os/PersistableBundle;
    move-object v4, v2

    goto :goto_f

    .line 1776
    .end local v2    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v7    # "installed":Z
    :cond_19
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1777
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v37, v2

    goto :goto_f

    .line 1773
    .end local v2    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1a
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1774
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v26, v2

    .line 1802
    .end local v2    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_f
    move-object/from16 v20, v3

    move/from16 v7, v51

    move/from16 v6, v53

    move/from16 v2, v54

    const/4 v3, 0x0

    move/from16 v51, v31

    goto/16 :goto_a

    .line 1767
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .end local v54    # "type":I
    .local v2, "type":I
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    :cond_1b
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .line 1764
    .end local v2    # "type":I
    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    .restart local v54    # "type":I
    :goto_10
    move-object/from16 v20, v3

    move/from16 v7, v51

    move/from16 v6, v53

    move/from16 v2, v54

    const/4 v3, 0x0

    move/from16 v51, v31

    goto/16 :goto_a

    .end local v31    # "packageDepth":I
    .end local v54    # "type":I
    .restart local v2    # "type":I
    .restart local v7    # "installed":Z
    .local v51, "packageDepth":I
    :cond_1c
    move/from16 v54, v2

    move-object/from16 v3, v20

    move/from16 v31, v51

    move/from16 v51, v7

    .line 1806
    .end local v2    # "type":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .local v51, "installed":Z
    .restart local v54    # "type":I
    :goto_11
    if-nez v49, :cond_1d

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1807
    new-instance v2, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1808
    invoke-virtual {v2, v12}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 1809
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    move-object/from16 v49, v2

    move-object/from16 v6, v49

    goto :goto_13

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .end local v31    # "packageDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "linkGeneration":I
    .end local v47    # "ceDataInode":J
    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .end local v54    # "type":I
    :catch_11
    move-exception v0

    move/from16 v4, p1

    :goto_12
    move-object/from16 v31, v17

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    goto/16 :goto_20

    .line 1850
    :catch_12
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v17

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1811
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v14    # "instantApp":Z
    .restart local v15    # "virtualPreload":Z
    .restart local v16    # "enabledCaller":Ljava/lang/String;
    .restart local v19    # "verifState":I
    .restart local v21    # "installReason":I
    .restart local v22    # "uninstallReason":I
    .restart local v23    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v31    # "packageDepth":I
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "blockUninstall":Z
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "linkGeneration":I
    .restart local v47    # "ceDataInode":J
    .restart local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .restart local v51    # "installed":Z
    .restart local v53    # "enabled":I
    .restart local v54    # "type":I
    :cond_1d
    move-object/from16 v6, v49

    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v6, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :goto_13
    if-eqz v36, :cond_1e

    if-nez v50, :cond_1e

    .line 1812
    nop

    .line 1813
    invoke-static {v6, v4, v5}, Landroid/content/pm/PackageUserState$SuspendParams;->getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v2

    .line 1817
    .local v2, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1818
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v7, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    move-object/from16 v49, v0

    move-object/from16 v0, v42

    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .local v0, "oldSuspendingPackage":Ljava/lang/String;
    .local v49, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v7, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    move-object/from16 v50, v7

    goto :goto_14

    .line 1811
    .end local v2    # "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    .end local v7    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :cond_1e
    move-object/from16 v49, v0

    move-object/from16 v0, v42

    .line 1821
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .local v0, "oldSuspendingPackage":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_14
    if-eqz v39, :cond_1f

    .line 1822
    move/from16 v7, p1

    move-object/from16 v42, v0

    move-object/from16 v2, v30

    const/4 v0, 0x1

    .end local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    :try_start_17
    invoke-virtual {v1, v7, v2, v0}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_14
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_15

    .line 1857
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v6    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "packageDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "linkGeneration":I
    .end local v47    # "ceDataInode":J
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .end local v54    # "type":I
    :catch_13
    move-exception v0

    move v4, v7

    goto :goto_12

    .line 1850
    :catch_14
    move-exception v0

    move v4, v7

    move-object/from16 v31, v17

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1821
    .restart local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v6    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v14    # "instantApp":Z
    .restart local v15    # "virtualPreload":Z
    .restart local v16    # "enabledCaller":Ljava/lang/String;
    .restart local v19    # "verifState":I
    .restart local v21    # "installReason":I
    .restart local v22    # "uninstallReason":I
    .restart local v23    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v31    # "packageDepth":I
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "blockUninstall":Z
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "linkGeneration":I
    .restart local v47    # "ceDataInode":J
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .restart local v51    # "installed":Z
    .restart local v53    # "enabled":I
    .restart local v54    # "type":I
    :cond_1f
    move/from16 v7, p1

    move-object/from16 v42, v0

    move-object/from16 v2, v30

    const/4 v0, 0x1

    .line 1824
    .end local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    :goto_15
    move-object/from16 v30, v38

    move/from16 v41, v54

    const/16 v44, 0x2

    move-object/from16 v38, v2

    .end local v2    # "name":Ljava/lang/String;
    .end local v54    # "type":I
    .local v30, "str":Ljava/io/FileInputStream;
    .local v38, "name":Ljava/lang/String;
    .local v41, "type":I
    move-object/from16 v2, v24

    move/from16 v43, v46

    const/16 v52, 0x4

    move/from16 v46, v31

    move-object/from16 v31, v17

    move-object/from16 v17, v3

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    .local v43, "linkGeneration":I
    .local v46, "packageDepth":I
    move/from16 v3, p1

    move-object/from16 v54, v12

    move-object/from16 v55, v17

    .end local v12    # "dialogMessage":Ljava/lang/String;
    .local v54, "dialogMessage":Ljava/lang/String;
    move/from16 v12, v36

    move-object/from16 v56, v13

    move-object/from16 v13, v50

    move-object/from16 v17, v26

    move-object/from16 v18, v37

    move/from16 v20, v43

    move v1, v7

    move/from16 v7, v51

    const/16 v40, 0x5

    move/from16 v51, v0

    move-object v0, v6

    move/from16 v6, v53

    move-wide/from16 v57, v47

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-wide/from16 v4, v57

    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .local v0, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v4, "ceDataInode":J
    .local v6, "enabled":I
    .local v7, "installed":Z
    .local v47, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :try_start_18
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    .line 1829
    .end local v0    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v4    # "ceDataInode":J
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "name":Ljava/lang/String;
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v43    # "linkGeneration":I
    .end local v46    # "packageDepth":I
    .end local v47    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v54    # "dialogMessage":Ljava/lang/String;
    move v4, v1

    move-object/from16 v7, v24

    move-object/from16 v6, v32

    move/from16 v9, v33

    move/from16 v5, v41

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    goto/16 :goto_17

    .line 1857
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v35    # "outerDepth":I
    .end local v41    # "type":I
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_15
    move-exception v0

    move v4, v1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    goto/16 :goto_20

    .line 1850
    :catch_16
    move-exception v0

    move v4, v1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    move-object/from16 v1, p0

    goto/16 :goto_21

    .line 1857
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v17    # "userPackagesStateFile":Ljava/io/File;
    .local v38, "str":Ljava/io/FileInputStream;
    :catch_17
    move-exception v0

    move-object/from16 v31, v17

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1850
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v17    # "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    move-object/from16 v31, v17

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1857
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_19
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1850
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1857
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_1b
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1850
    :catch_1c
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_1d

    .line 1857
    :catch_1d
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v6, v7

    goto/16 :goto_1f

    .line 1850
    :catch_1e
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v6, v7

    goto/16 :goto_1b

    .line 1857
    :catch_1f
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    goto/16 :goto_1e

    .line 1850
    :catch_20
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    goto/16 :goto_1c

    .line 1829
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "tagName":Ljava/lang/String;
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    .local v8, "type":I
    .local v9, "maxAppLinkGeneration":I
    .local v10, "outerDepth":I
    :cond_20
    move/from16 v1, p1

    move-object/from16 v49, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v45, v5

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v32, v26

    move/from16 v26, v8

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .local v26, "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_19
    const-string/jumbo v0, "preferred-activities"

    move-object/from16 v3, v45

    .end local v45    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_25

    if-eqz v0, :cond_21

    .line 1830
    move v4, v1

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1a
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_21

    move-object/from16 v6, v32

    goto/16 :goto_16

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v35    # "outerDepth":I
    :catch_21
    move-exception v0

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1850
    :catch_22
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1831
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "type":I
    .restart local v35    # "outerDepth":I
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_21
    move v4, v1

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1b
    const-string/jumbo v5, "persistent-preferred-activities"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_23

    if-eqz v5, :cond_22

    .line 1832
    :try_start_1c
    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1833
    :cond_22
    :try_start_1d
    const-string v5, "crossProfile-intent-filters"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_23

    if-eqz v5, :cond_23

    .line 1834
    :try_start_1e
    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1835
    :cond_23
    :try_start_1f
    const-string v5, "default-apps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_23

    if-eqz v5, :cond_24

    .line 1836
    :try_start_20
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_22
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1837
    :cond_24
    :try_start_21
    const-string v5, "block-uninstall-packages"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_23

    if-eqz v5, :cond_25

    .line 1838
    :try_start_22
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1840
    :cond_25
    :try_start_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_23

    .line 1840
    move-object/from16 v6, v32

    :try_start_24
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1844
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_16
    move v9, v2

    move/from16 v5, v26

    .end local v2    # "maxAppLinkGeneration":I
    .end local v26    # "type":I
    .local v5, "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    :goto_17
    move-object/from16 v26, v6

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v10, v35

    move/from16 v11, v40

    move/from16 v15, v44

    move/from16 v14, v51

    move/from16 v6, v52

    move-object/from16 v12, v55

    move-object/from16 v13, v56

    goto/16 :goto_4

    .line 1857
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v35    # "outerDepth":I
    :catch_23
    move-exception v0

    move-object/from16 v6, v32

    goto/16 :goto_1a

    .line 1850
    :catch_24
    move-exception v0

    move-object/from16 v6, v32

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1857
    :catch_25
    move-exception v0

    move v4, v1

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    goto/16 :goto_1a

    .line 1850
    :catch_26
    move-exception v0

    move v4, v1

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1685
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "str":Ljava/io/FileInputStream;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    :cond_26
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v6, v26

    move/from16 v26, v8

    .line 1682
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .restart local v26    # "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    :goto_18
    move v9, v2

    move/from16 v5, v26

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v10, v35

    move/from16 v11, v40

    move/from16 v15, v44

    move/from16 v14, v51

    move-object/from16 v12, v55

    move-object/from16 v13, v56

    move-object/from16 v26, v6

    move/from16 v6, v52

    goto/16 :goto_4

    .end local v26    # "type":I
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .end local v35    # "outerDepth":I
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    :cond_27
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move v2, v9

    move/from16 v35, v10

    move-object/from16 v6, v26

    move/from16 v26, v8

    .line 1846
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .restart local v26    # "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    :goto_19
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V

    .line 1848
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_27

    .line 1862
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v35    # "outerDepth":I
    move-object/from16 v2, v30

    goto/16 :goto_22

    .line 1857
    :catch_27
    move-exception v0

    :goto_1a
    move-object/from16 v24, v30

    goto :goto_20

    .line 1850
    :catch_28
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_29
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    :goto_1b
    move-object/from16 v2, v25

    :goto_1c
    move-object/from16 v5, v27

    move-object/from16 v24, v30

    :goto_1d
    const/4 v3, 0x6

    goto :goto_21

    .line 1857
    :catch_2a
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    :goto_1e
    move-object/from16 v6, v26

    :goto_1f
    move-object/from16 v24, v30

    .line 1858
    .end local v2    # "str":Ljava/io/FileInputStream;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .local v24, "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :goto_20
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1860
    move-object/from16 v2, v25

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, v24

    goto :goto_22

    .line 1850
    .end local v0    # "e":Ljava/io/IOException;
    .end local v24    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_2b
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    move-object/from16 v24, v30

    .line 1851
    .end local v2    # "str":Ljava/io/FileInputStream;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v24    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :goto_21
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading stopped packages: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1854
    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1862
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v2, v24

    .line 1863
    .end local v24    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    :goto_22
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78da70f9 -> :sswitch_5
        -0x75017ede -> :sswitch_4
        -0x5ee8613f -> :sswitch_3
        -0x54ce12c2 -> :sswitch_2
        -0x3326b7c9 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch
.end method

.method readPermissionStateForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3366
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3367
    return-void
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1442
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1443
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 1444
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1445
    goto :goto_0

    .line 1448
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_6

    .line 1450
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1451
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1452
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    .line 1453
    .local v4, "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1454
    .local v5, "pal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v6, v6, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v6, :cond_4

    .line 1455
    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1457
    .end local v4    # "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v5    # "pal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_4
    goto :goto_1

    .line 1458
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1460
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1458
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1463
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 1464
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1464
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1466
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1468
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1469
    :cond_7
    return-void
.end method

.method readStoppedLPw()V
    .locals 16

    .line 2375
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2376
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const-string v4, "PackageManager"

    if-eqz v0, :cond_1

    .line 2378
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2379
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2382
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    :cond_0
    goto :goto_0

    .line 2390
    :catch_0
    move-exception v0

    .line 2396
    :cond_1
    :goto_0
    const-string v5, "Error reading package manager stopped packages"

    const-string v7, "Error reading: "

    const/4 v0, 0x0

    if-nez v2, :cond_4

    .line 2397
    :try_start_1
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2398
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v9, "No stopped packages file found\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    const-string v8, "No stopped packages file file; assuming all started"

    invoke-static {v3, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2404
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2405
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2406
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2407
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2408
    :cond_2
    return-void

    .line 2410
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    .line 2412
    :cond_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2413
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2416
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v12, :cond_5

    if-eq v11, v13, :cond_5

    goto :goto_2

    .line 2421
    :cond_5
    if-eq v11, v12, :cond_6

    .line 2422
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2425
    return-void

    .line 2428
    :cond_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2429
    .local v10, "outerDepth":I
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v11, v12

    if-eq v12, v13, :cond_d

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 2431
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_d

    .line 2432
    :cond_7
    if-eq v11, v12, :cond_c

    if-ne v11, v3, :cond_8

    .line 2434
    goto :goto_6

    .line 2437
    :cond_8
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2438
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2439
    const-string/jumbo v14, "name"

    invoke-interface {v8, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2440
    .local v14, "name":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 2441
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_9

    .line 2442
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2443
    const-string v3, "1"

    const-string/jumbo v6, "nl"

    invoke-interface {v8, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2444
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_4

    .line 2447
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_a
    :goto_4
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2451
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_5

    .line 2452
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2452
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2456
    .end local v12    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 2429
    :cond_c
    :goto_6
    const/4 v3, 0x4

    goto :goto_3

    .line 2458
    :cond_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "outerDepth":I
    .end local v11    # "type":I
    goto :goto_7

    .line 2467
    :catch_1
    move-exception v0

    .line 2468
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2470
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2460
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2461
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2464
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2473
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 2474
    :goto_8
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outPs"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2327
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2329
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 2330
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2331
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2332
    goto :goto_0

    .line 2334
    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2335
    .local v3, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2337
    .local v1, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2339
    .local v4, "libVersion":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 2342
    goto :goto_1

    .line 2340
    :catch_0
    move-exception v6

    .line 2344
    :goto_1
    if-eqz v3, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 2345
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2347
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2351
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2352
    .end local v1    # "libVersionStr":Ljava/lang/String;
    .end local v3    # "libName":Ljava/lang/String;
    .end local v4    # "libVersion":J
    goto :goto_0

    .line 2353
    :cond_4
    return-void
.end method

.method registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .locals 6
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 893
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 897
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->overlayUIDs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 899
    add-int/lit16 v1, v0, 0x2710

    iput v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 900
    goto :goto_1

    .line 896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_2

    .line 906
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 909
    :cond_2
    const/4 v0, 0x1

    .local v0, "createdNew":Z
    goto :goto_2

    .line 912
    .end local v0    # "createdNew":Z
    :cond_3
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 914
    .restart local v0    # "createdNew":Z
    :goto_2
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_4

    .line 920
    return v0

    .line 915
    :cond_4
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be assigned a valid UID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 917
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method removeAppIdLPw(I)V
    .locals 4
    .param p1, "appId"    # I

    .line 1183
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1185
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1186
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1187
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1190
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1191
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 4414
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4417
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4418
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4421
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4422
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4423
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4424
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4425
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4426
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4427
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4428
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4429
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 4430
    const/4 v5, 0x1

    .line 4431
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 4433
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_1
    goto :goto_1

    .line 4434
    :cond_2
    if-eqz v5, :cond_3

    .line 4435
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4422
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4438
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 4439
    return-void

    .line 4438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1354
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "alsoResetStatus"    # Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1332
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1336
    const/4 v1, 0x0

    return v1

    .line 1338
    :cond_0
    if-eqz p3, :cond_1

    .line 1339
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1341
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1342
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 1348
    .local v3, "userId":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1347
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1350
    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1104
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1105
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1107
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1109
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1112
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1115
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1116
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1119
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeRenamedPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method removeUserLPw(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 4393
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4394
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4395
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4396
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 4397
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4398
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4399
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4400
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4401
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4402
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4404
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4406
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4410
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4411
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1866
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1867
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 1868
    if-nez v0, :cond_0

    .line 1869
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1870
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1872
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1873
    :cond_1
    if-eqz v0, :cond_2

    .line 1874
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1875
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1876
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1879
    :cond_2
    :goto_0
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 1404
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1405
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4590
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4591
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 4594
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4595
    return-void

    .line 4592
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 4556
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4557
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4558
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_5

    .line 4561
    if-nez p4, :cond_1

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4562
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4574
    :cond_1
    :goto_0
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_4

    .line 4575
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4577
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4578
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4579
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4582
    :cond_2
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4584
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 4586
    :cond_4
    return v3

    .line 4559
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setPermissionControllerVersion(J)V
    .locals 1
    .param p1, "version"    # J

    .line 1408
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    .line 1409
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 1289
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1290
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1294
    const/4 v1, 0x0

    return v1

    .line 1298
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 1300
    .local v1, "alwaysGeneration":I
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1302
    .end local v1    # "alwaysGeneration":I
    :cond_1
    const/4 v1, 0x0

    .line 1305
    .restart local v1    # "alwaysGeneration":I
    :goto_0
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1306
    return v2
.end method

.method updateRuntimePermissionsFingerprintLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1396
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprintLPr(I)V

    .line 1397
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 13
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 1024
    const/16 v0, -0x2710

    if-eqz p1, :cond_d

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1031
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_1

    .line 1032
    return v0

    .line 1035
    :cond_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1037
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    const/16 v2, -0x2710

    .line 1039
    .local v2, "affectedUserId":I
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1040
    .local v4, "eachPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 1041
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_2

    .line 1042
    goto :goto_0

    .line 1046
    :cond_2
    const/4 v6, 0x0

    .line 1047
    .local v6, "used":Z
    iget-object v7, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1048
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1049
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1050
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1051
    const/4 v6, 0x1

    .line 1052
    goto :goto_2

    .line 1054
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_3
    goto :goto_1

    .line 1055
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 1056
    goto :goto_0

    .line 1059
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1060
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 1064
    .local v8, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_8

    .line 1065
    const/4 v9, 0x0

    .line 1066
    .local v9, "reqByDisabledSysPkg":Z
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1067
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1068
    const/4 v9, 0x1

    .line 1069
    goto :goto_4

    .line 1071
    .end local v11    # "permission":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 1072
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 1073
    goto/16 :goto_0

    .line 1079
    .end local v9    # "reqByDisabledSysPkg":Z
    :cond_8
    const v9, 0x3fbff

    const/4 v10, 0x0

    invoke-virtual {v7, v5, p2, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1082
    invoke-virtual {v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1084
    const/4 v2, -0x1

    .line 1088
    :cond_9
    invoke-virtual {v7, v5, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    .line 1090
    if-ne v2, v0, :cond_a

    .line 1091
    move v2, p2

    goto :goto_5

    .line 1092
    :cond_a
    if-eq v2, p2, :cond_b

    .line 1094
    const/4 v2, -0x1

    .line 1097
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "used":Z
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 1099
    :cond_c
    return v2

    .line 1025
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "affectedUserId":I
    :cond_d
    :goto_6
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4547
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4548
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4551
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4549
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1984
    const/4 v0, 0x0

    const-string v1, "all-intent-filter-verifications"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1985
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1986
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1987
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1988
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v5

    .line 1989
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v5, :cond_0

    .line 1990
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1986
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1993
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1994
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    .line 1386
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1387
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1386
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .line 1377
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1378
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_0

    return-void

    .line 1380
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1381
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1382
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1383
    :cond_1
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2052
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 2053
    const/4 v1, 0x0

    const-string v2, "block-uninstall-packages"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2054
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2055
    const-string v4, "block-uninstall"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2056
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2057
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2054
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2059
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2061
    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1955
    const/4 v0, 0x0

    const-string v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1956
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1957
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    .line 1958
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1959
    .local v4, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1960
    invoke-virtual {v4, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1961
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1962
    .end local v4    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_0

    .line 1964
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1965
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2039
    const/4 v0, 0x0

    const-string v1, "default-apps"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2040
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2041
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2042
    const-string v3, "default-browser"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2043
    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2046
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2047
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2887
    const/4 v0, 0x0

    const-string/jumbo v1, "updated-package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2890
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2892
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2893
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2894
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2895
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2896
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2897
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2898
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2900
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2901
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2903
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2904
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2906
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2907
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2909
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2910
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2913
    :cond_5
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2914
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2916
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2919
    :goto_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2922
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_7

    .line 2923
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2924
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2923
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2927
    :cond_7
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2928
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1970
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1971
    const/4 v0, 0x0

    const-string v1, "domain-verification"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1972
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1977
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1979
    :cond_0
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 6

    .line 2678
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2680
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2681
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2682
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2683
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2682
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2686
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2688
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2689
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2690
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2693
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2694
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2697
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2693
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2700
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2703
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2705
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2706
    return-void

    .line 2703
    :cond_1
    :goto_0
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "excludedUserIds"    # [I

    .line 2709
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2710
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2711
    .local v3, "firstTime":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2712
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    .line 2715
    .local v1, "userIdsChanged":Z
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2717
    .local v2, "dir":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 2718
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2720
    new-instance v4, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v4

    .line 2721
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    :cond_3
    iget v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq v4, p2, :cond_4

    .line 2726
    new-instance v4, Ljava/io/File;

    const-string v5, "appid"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2727
    .local v4, "appIdFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2731
    .end local v4    # "appIdFile":Ljava/io/File;
    :cond_4
    if-eqz v1, :cond_a

    .line 2733
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_7

    .line 2734
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, p3, v4

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2736
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v6, "excluded_userids"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v6, p3, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2733
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2742
    .end local v4    # "i":I
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v4, :cond_9

    .line 2743
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 2744
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v5, v5, v4

    invoke-static {p3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2745
    new-instance v5, Ljava/io/File;

    const-string v6, "clear_userid"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2743
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2753
    .end local v4    # "i":I
    :cond_9
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2755
    :cond_a
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3039
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3040
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    const-string v3, "defined-keyset"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3041
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alias"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3042
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "identifier"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3043
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3044
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 3045
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 22

    .line 2479
    move-object/from16 v1, p0

    const-string/jumbo v2, "renamed-package"

    const-string/jumbo v3, "restored-ivi"

    const-string/jumbo v4, "shared-user"

    const-string/jumbo v5, "permissions"

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "read-external-storage"

    const-string/jumbo v8, "permission-trees"

    const-string/jumbo v9, "verifier"

    const-string/jumbo v10, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2485
    .local v11, "startTime":J
    invoke-static {}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2489
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v13, "PackageManager"

    if-eqz v0, :cond_3

    .line 2494
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2496
    const-string v0, "copy packages.xml to packages-copy.xml"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2501
    :cond_0
    const/4 v14, 0x0

    .line 2502
    .local v14, "fis":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 2505
    .local v15, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v14

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mCopySettingsFilename:Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 2506
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v0

    .line 2507
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v14, v15}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2514
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2515
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2516
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2517
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2520
    :goto_0
    goto :goto_3

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2521
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 2510
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2508
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2513
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v16

    goto :goto_4

    .line 2510
    :catch_3
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_1

    .line 2508
    :catch_4
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_2

    .line 2513
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v14

    move-object v2, v0

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 2510
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object/from16 v16, v14

    .line 2511
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2514
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2515
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2516
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2517
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2508
    :catch_6
    move-exception v0

    move-object/from16 v16, v14

    .line 2509
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2514
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2515
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2516
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2517
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 2524
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v14

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2525
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    return-void

    .line 2530
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    :cond_1
    goto :goto_6

    .line 2513
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 2514
    :goto_4
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 2515
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2516
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2517
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2520
    goto :goto_5

    .line 2518
    :catch_7
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2521
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    throw v2

    .line 2531
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2532
    const-string v0, "Preserving older settings backup"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_3
    :goto_6
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2539
    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2540
    .local v0, "fstr":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2543
    .local v14, "str":Ljava/io/BufferedOutputStream;
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2544
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    move-object/from16 v17, v13

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 2545
    const/4 v13, 0x1

    move-wide/from16 v18, v11

    .end local v11    # "startTime":J
    .local v18, "startTime":J
    :try_start_b
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v15, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2546
    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2548
    invoke-interface {v15, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2550
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v11, v13, :cond_4

    .line 2551
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2552
    .local v13, "volumeUuid":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2554
    .local v12, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    .local v20, "fstr":Ljava/io/FileOutputStream;
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2555
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v15, v0, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2556
    const-string/jumbo v0, "sdkVersion"

    move-object/from16 v21, v13

    .end local v13    # "volumeUuid":Ljava/lang/String;
    .local v21, "volumeUuid":Ljava/lang/String;
    iget v13, v12, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v15, v0, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2557
    const-string v0, "databaseVersion"

    iget v13, v12, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v15, v0, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2558
    const-string v0, "fingerprint"

    iget-object v13, v12, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v15, v0, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2559
    const/4 v0, 0x0

    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2550
    nop

    .end local v12    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v21    # "volumeUuid":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v20

    const/4 v12, 0x0

    goto :goto_7

    .end local v20    # "fstr":Ljava/io/FileOutputStream;
    .restart local v0    # "fstr":Ljava/io/FileOutputStream;
    :cond_4
    move-object/from16 v20, v0

    .line 2562
    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .restart local v20    # "fstr":Ljava/io/FileOutputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v0, :cond_5

    .line 2563
    const/4 v0, 0x0

    invoke-interface {v15, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2564
    const-string v0, "device"

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v6}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-interface {v15, v11, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2565
    invoke-interface {v15, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2568
    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 2569
    const/4 v0, 0x0

    invoke-interface {v15, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2570
    const-string v0, "enforcement"

    .line 2571
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "1"

    goto :goto_8

    :cond_6
    const-string v6, "0"

    .line 2570
    :goto_8
    const/4 v9, 0x0

    invoke-interface {v15, v9, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2572
    invoke-interface {v15, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2575
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v15, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2576
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2577
    invoke-interface {v15, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    invoke-interface {v15, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2581
    invoke-interface {v15, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2583
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2584
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2585
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_9

    .line 2587
    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2588
    .restart local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2589
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_a

    .line 2591
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 2592
    .local v5, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x0

    invoke-interface {v15, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2593
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v15, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2594
    const-string/jumbo v6, "userId"

    iget v7, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2595
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2594
    const/4 v8, 0x0

    invoke-interface {v15, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2596
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2597
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2598
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 2597
    invoke-virtual {v1, v15, v6}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2599
    const/4 v6, 0x0

    invoke-interface {v15, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2600
    nop

    .end local v5    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_b

    .line 2602
    :cond_a
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 2603
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2604
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v15, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2605
    const-string/jumbo v5, "new"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2606
    const-string/jumbo v5, "old"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2607
    invoke-interface {v15, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2608
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_c

    .line 2611
    :cond_b
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2612
    .local v0, "numIVIs":I
    if-lez v0, :cond_d

    .line 2616
    const/4 v2, 0x0

    invoke-interface {v15, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2617
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_c

    .line 2618
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2619
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v15, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2617
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2621
    .end local v2    # "i":I
    :cond_c
    const/4 v2, 0x0

    invoke-interface {v15, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2628
    :cond_d
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2630
    const/4 v2, 0x0

    invoke-interface {v15, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2632
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2634
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2635
    invoke-static/range {v20 .. v20}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2636
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2640
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2641
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2646
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2649
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2650
    const-string/jumbo v2, "package"

    .line 2651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 2650
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 2652
    return-void

    .line 2654
    .end local v0    # "numIVIs":I
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "fstr":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    goto :goto_e

    .end local v18    # "startTime":J
    .local v11, "startTime":J
    :catch_9
    move-exception v0

    move-wide/from16 v18, v11

    goto :goto_e

    :catch_a
    move-exception v0

    move-wide/from16 v18, v11

    move-object/from16 v17, v13

    .line 2655
    .end local v11    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    :goto_e
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v17

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2659
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2660
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_e
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2933
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2934
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2935
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2937
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2938
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2939
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2942
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2943
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2945
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2946
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2948
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2949
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2951
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2952
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2955
    :cond_5
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2956
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2957
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2958
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2959
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2960
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2962
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2964
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_7

    .line 2967
    const-string/jumbo v2, "uidError"

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2969
    :cond_7
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2970
    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2971
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v5, "installer"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2973
    :cond_8
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-eqz v4, :cond_9

    .line 2974
    const-string/jumbo v4, "isOrphaned"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    :cond_9
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2977
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v5, "installInitiator"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2979
    :cond_a
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_b

    .line 2980
    const-string v4, "installInitiatorUninstalled"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2982
    :cond_b
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2983
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    const-string v5, "installOriginator"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2985
    :cond_c
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2986
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v5, "volumeUuid"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2988
    :cond_d
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 2989
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "categoryHint"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2991
    :cond_e
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v4, :cond_f

    .line 2992
    const-string/jumbo v4, "updateAvailable"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2994
    :cond_f
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v4, :cond_10

    .line 2995
    const-string v4, "forceQueryable"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2998
    :cond_10
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 3000
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v5, "sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3002
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v3, :cond_11

    .line 3003
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string v5, "install-initiator-sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3007
    :cond_11
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 3009
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3010
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3011
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3012
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 3013
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 3015
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3016
    return-void
.end method

.method writePackageListLPr()V
    .locals 1

    .line 2767
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2768
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 5
    .param p1, "creatingUserId"    # I

    .line 2771
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2772
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2773
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, "PackageSettings"

    if-nez v1, :cond_0

    .line 2774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get SELinux context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2775
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2774
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_0
    invoke-static {v1}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2779
    const-string v3, "Failed to set packages.list SELinux context"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2784
    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2785
    nop

    .line 2786
    return-void

    .line 2784
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2785
    throw v3
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 25
    .param p1, "userId"    # I

    .line 2064
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string/jumbo v0, "suspend-params"

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string/jumbo v5, "pkg"

    const-string/jumbo v6, "package-restrictions"

    const-string/jumbo v7, "name"

    invoke-static {}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2073
    .local v8, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v10

    .line 2074
    .local v10, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v11

    .line 2075
    .local v11, "backupFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 2076
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_1

    .line 2081
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2082
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2083
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return-void

    .line 2089
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2090
    const-string v12, "Preserving older stopped packages backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_1
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2096
    .local v12, "fstr":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2098
    .local v14, "str":Ljava/io/BufferedOutputStream;
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2099
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v17, v13

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2100
    const/4 v13, 0x1

    move-wide/from16 v18, v8

    .end local v8    # "startTime":J
    .local v18, "startTime":J
    :try_start_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v15, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2101
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2103
    invoke-interface {v15, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2106
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v20, v16

    .line 2107
    .local v20, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v13, v20

    .end local v20    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v20

    move-object/from16 v21, v20

    .line 2113
    .local v21, "ustate":Landroid/content/pm/PackageUserState;
    invoke-interface {v15, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2114
    iget-object v9, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-interface {v15, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2115
    move-object/from16 v8, v21

    move-object/from16 v21, v10

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .local v8, "ustate":Landroid/content/pm/PackageUserState;
    .local v21, "userPackagesStateFile":Ljava/io/File;
    :try_start_3
    iget-wide v9, v8, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v23, 0x0

    cmp-long v9, v9, v23

    if-eqz v9, :cond_2

    .line 2116
    const-string v9, "ceDataInode"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v23, v11

    .end local v11    # "backupFile":Ljava/io/File;
    .local v23, "backupFile":Ljava/io/File;
    :try_start_4
    iget-wide v10, v8, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v15, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    goto :goto_1

    .line 2115
    .end local v23    # "backupFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :cond_2
    move-object/from16 v23, v11

    .line 2118
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_1
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v9, :cond_3

    .line 2119
    const-string v9, "inst"

    const-string v10, "false"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2121
    :cond_3
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const-string/jumbo v10, "true"

    if-eqz v9, :cond_4

    .line 2122
    :try_start_5
    const-string/jumbo v9, "stopped"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2124
    :cond_4
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v9, :cond_5

    .line 2125
    const-string/jumbo v9, "nl"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2127
    :cond_5
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v9, :cond_6

    .line 2128
    const-string v9, "hidden"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2130
    :cond_6
    iget v9, v8, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v9, :cond_7

    .line 2131
    const-string v9, "distraction_flags"

    iget v11, v8, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 2132
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2131
    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v24, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v15, v13, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2130
    .end local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_7
    move-object/from16 v24, v13

    .line 2134
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    :goto_2
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v9, :cond_8

    .line 2135
    const-string/jumbo v9, "suspended"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2137
    :cond_8
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v9, :cond_9

    .line 2138
    const-string v9, "instant-app"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2140
    :cond_9
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v9, :cond_a

    .line 2141
    const-string/jumbo v9, "virtual-preload"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2143
    :cond_a
    iget v9, v8, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v9, :cond_b

    .line 2144
    const-string v9, "enabled"

    iget v10, v8, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2145
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2144
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2146
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 2147
    const-string v9, "enabledCaller"

    iget-object v10, v8, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2151
    :cond_b
    iget v9, v8, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v9, :cond_c

    .line 2153
    const-string v9, "domainVerificationStatus"

    iget v10, v8, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v15, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2156
    :cond_c
    iget v9, v8, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v9, :cond_d

    .line 2157
    const-string v9, "app-link-generation"

    iget v10, v8, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v15, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2160
    :cond_d
    iget v9, v8, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v9, :cond_e

    .line 2161
    const-string v9, "install-reason"

    iget v10, v8, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2162
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2161
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2164
    :cond_e
    iget v9, v8, Landroid/content/pm/PackageUserState;->uninstallReason:I

    if-eqz v9, :cond_f

    .line 2165
    const-string/jumbo v9, "uninstall-reason"

    iget v10, v8, Landroid/content/pm/PackageUserState;->uninstallReason:I

    .line 2166
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2165
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2168
    :cond_f
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v9, :cond_10

    .line 2169
    const-string v9, "harmful-app-warning"

    iget-object v10, v8, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2172
    :cond_10
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v9, :cond_12

    .line 2173
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget-object v10, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    .line 2174
    iget-object v10, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2175
    .local v10, "suspendingPackage":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {v15, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2176
    const-string/jumbo v13, "suspending-package"

    invoke-interface {v15, v11, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2177
    iget-object v11, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 2178
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 2179
    .local v11, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v11, :cond_11

    .line 2180
    invoke-virtual {v11, v15}, Landroid/content/pm/PackageUserState$SuspendParams;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2182
    :cond_11
    const/4 v13, 0x0

    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2173
    nop

    .end local v10    # "suspendingPackage":Ljava/lang/String;
    .end local v11    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2185
    .end local v9    # "i":I
    :cond_12
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const-string/jumbo v10, "item"

    if-nez v9, :cond_14

    .line 2186
    const/4 v9, 0x0

    :try_start_6
    invoke-interface {v15, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2187
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2188
    .local v11, "name":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2189
    invoke-interface {v15, v13, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2190
    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    nop

    .end local v11    # "name":Ljava/lang/String;
    goto :goto_4

    .line 2192
    :cond_13
    const/4 v9, 0x0

    invoke-interface {v15, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2194
    :cond_14
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 2195
    const/4 v9, 0x0

    invoke-interface {v15, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2196
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2197
    .restart local v11    # "name":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    invoke-interface {v15, v13, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    nop

    .end local v11    # "name":Ljava/lang/String;
    goto :goto_5

    .line 2201
    :cond_15
    const/4 v9, 0x0

    invoke-interface {v15, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    :cond_16
    const/4 v9, 0x0

    invoke-interface {v15, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    move-object/from16 v10, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    const/4 v9, 0x0

    const/4 v13, 0x1

    .end local v8    # "ustate":Landroid/content/pm/PackageUserState;
    .end local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_0

    .line 2234
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v11, "backupFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v23, v11

    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    goto :goto_6

    .line 2207
    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v10, "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    .restart local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_17
    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    const/4 v0, 0x1

    invoke-virtual {v1, v15, v2, v0}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2208
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2209
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2210
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2211
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2213
    const/4 v0, 0x0

    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2217
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2218
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2219
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2223
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2224
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 2229
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2233
    return-void

    .line 2234
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    goto :goto_6

    .end local v18    # "startTime":J
    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v8, "startTime":J
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :catch_3
    move-exception v0

    move-wide/from16 v18, v8

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    goto :goto_6

    :catch_4
    move-exception v0

    move-wide/from16 v18, v8

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v17, v13

    .line 2235
    .end local v8    # "startTime":J
    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_6
    const-string v3, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v4, v17

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2241
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2242
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up mangled file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_18
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 0
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3048
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3049
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2308
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2309
    return-void

    .line 2312
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "perms"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2314
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2315
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2316
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2317
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2318
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2319
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2320
    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 2322
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1941
    const/4 v0, 0x0

    const-string/jumbo v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1942
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1943
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1944
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1945
    .local v4, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1947
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1948
    .end local v4    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_0

    .line 1950
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1951
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1927
    const/4 v0, 0x0

    const-string/jumbo v1, "preferred-activities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1929
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1930
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 1931
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1932
    invoke-virtual {v4, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1933
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1934
    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_0

    .line 1936
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5440
    if-eqz p2, :cond_0

    .line 5441
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_0

    .line 5443
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5445
    :goto_0
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3020
    const/4 v0, 0x0

    const-string/jumbo v1, "proper-signing-keyset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3021
    nop

    .line 3022
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 3021
    const-string v3, "identifier"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3023
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3024
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3028
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 3030
    .local v3, "id":J
    const/4 v5, 0x0

    const-string/jumbo v6, "upgrade-keyset"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3031
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "identifier"

    invoke-interface {p1, v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3032
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3029
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3035
    :cond_0
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 929
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 930
    return-void

    .line 933
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 934
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_1

    .line 935
    return-void

    .line 937
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 938
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_2

    .line 939
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_1

    .line 940
    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_1
    nop

    .line 941
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 942
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 944
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_3
    goto :goto_0

    .line 945
    :cond_4
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2357
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2361
    :cond_0
    array-length v0, p2

    .line 2362
    .local v0, "libCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2363
    aget-object v2, p2, v1

    .line 2364
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2365
    .local v3, "libVersion":J
    const/4 v5, 0x0

    const-string/jumbo v6, "uses-static-lib"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2366
    const-string/jumbo v7, "name"

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-interface {p1, v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2370
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 2359
    .end local v0    # "libCount":I
    :cond_2
    :goto_1
    return-void
.end method
