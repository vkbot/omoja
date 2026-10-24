.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$WatchedUserStates;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CONVERTED_FROM_PRE_CREATED:Ljava/lang/String; = "convertedFromPreCreated"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PRE_CREATED:Ljava/lang/String; = "preCreated"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e2

.field static final MIN_USER_ID:I = 0xa

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_local_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_IGNORE_PREPARE_STORAGE_ERRORS:Ljava/lang/String; = "ignorePrepareStorageErrors"

.field private static final TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL:Ljava/lang/String; = "lastRequestQuietModeEnabledCall"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x9

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mContext:Landroid/content/Context;

.field private mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

.field private mDeviceOwnerUserId:I

.field private final mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I

.field private mUserIdsIncludingPreCreated:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

.field private final mUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 268
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 616
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 617
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .line 626
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 627
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;

    .line 630
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 258
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 356
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 371
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 380
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 389
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 395
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 418
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 424
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 444
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 453
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 456
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v1, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 631
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 632
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 633
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 634
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 635
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 636
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypes()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 637
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 639
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 641
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 642
    .local v2, "userZeroDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 643
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 646
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 647
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 648
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 650
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get userIds after readUserListLP():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 653
    .end local v2    # "userZeroDir":Ljava/io/File;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 655
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 656
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 657
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 658
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 659
    return-void

    .line 653
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/IntentSender;
    .param p4, "x4"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Lcom/android/server/pm/RestrictionsSet;
    .param p4, "x4"    # Z

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/RestrictionsSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/UserManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 156
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Landroid/os/IBinder;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .line 990
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 991
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 992
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 994
    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    :goto_0
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 998
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 999
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToCrossProfileManifestReceiversAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 1001
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1003
    return-void
.end method

.method private canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 3
    .param p1, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    .line 2261
    .local v0, "max":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2262
    return v1

    .line 2264
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .locals 3
    .param p0, "creationFlags"    # I

    .line 2424
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_1

    .line 2425
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2426
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2433
    :goto_0
    return-void

    .line 2430
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 2411
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    return-void

    .line 2412
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1528
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1529
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1530
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1533
    :cond_0
    nop

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1533
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1538
    return-void

    .line 1535
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1531
    :cond_2
    :goto_0
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2364
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 2369
    :cond_0
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2370
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2372
    return-void

    .line 2375
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2366
    :cond_2
    :goto_0
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 2395
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    return-void

    .line 2396
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2476
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2477
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2479
    :cond_1
    :goto_0
    return-void
.end method

.method static checkUserTypeConsistency(I)Z
    .locals 2
    .param p0, "flags"    # I

    .line 3674
    const/16 v0, 0x120c

    .line 3676
    .local v0, "userTypeFlagMask":I
    and-int/lit16 v1, p0, 0x120c

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit16 v1, p0, 0x1400

    .line 3677
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit16 v1, p0, 0x1800

    .line 3678
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3676
    :goto_0
    return v1
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3271
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3272
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3273
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3274
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3275
    const/4 v2, 0x1

    return v2

    .line 3277
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "userId"    # I

    .line 1925
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 1926
    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1927
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v1

    .line 1928
    .local v1, "global":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    .line 1930
    .local v2, "local":Lcom/android/server/pm/RestrictionsSet;
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1932
    return-object v0

    .line 1934
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1935
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1936
    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1938
    return-object v3
.end method

.method private convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 3635
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3636
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3637
    .local v1, "preCreatedUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3638
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 3639
    return-object v0

    .line 3641
    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3642
    .local v2, "preCreatedUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p2

    .line 3643
    .local v3, "newFlags":I
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot reuse pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because flags are inconsistent. Flags ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "); preCreatedUserFlags ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 3647
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3644
    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    return-object v0

    .line 3650
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing pre-created user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and bestowing on it flags "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3651
    invoke-static {p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3650
    const-string v4, "UserManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    iput-object p3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3653
    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 3654
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 3655
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 3656
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 3658
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3659
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3660
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3661
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3662
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3663
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3665
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 3667
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;)V

    .line 3668
    return-object v2

    .line 3661
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3637
    .end local v1    # "preCreatedUserData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v2    # "preCreatedUser":Landroid/content/pm/UserInfo;
    .end local v3    # "newFlags":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3351
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3352
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_0

    .line 3353
    :cond_0
    const-string/jumbo v0, "no_add_user"

    :goto_0
    nop

    .line 3354
    .local v0, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot add user"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 3356
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "preCreate"    # Z
    .param p6, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3364
    move-object/from16 v9, p0

    move/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v11

    .line 3365
    .local v11, "nextProbableUserId":I
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    move-object v12, v0

    .line 3366
    .local v12, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3367
    move-object/from16 v13, p2

    invoke-direct {v9, v11, v13, v10}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyBegin(ILjava/lang/String;I)J

    move-result-wide v14

    .line 3368
    .local v14, "sessionId":J
    const/16 v16, 0x0

    .line 3370
    .local v16, "newUser":Landroid/content/pm/UserInfo;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v12

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3372
    .end local v16    # "newUser":Landroid/content/pm/UserInfo;
    .local v0, "newUser":Landroid/content/pm/UserInfo;
    nop

    .line 3374
    if-eqz v0, :cond_0

    move/from16 v1, v17

    goto :goto_0

    :cond_0
    move/from16 v1, v18

    :goto_0
    invoke-direct {v9, v14, v15, v11, v1}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 3375
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3372
    return-object v0

    .line 3374
    .end local v0    # "newUser":Landroid/content/pm/UserInfo;
    .restart local v16    # "newUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v16, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    :goto_1
    invoke-direct {v9, v14, v15, v11, v0}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 3375
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3376
    throw v1
.end method

.method private createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;)Landroid/content/pm/UserInfo;
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "preCreate"    # Z
    .param p6, "disallowedPackages"    # [Ljava/lang/String;
    .param p7, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3404
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserTypeDetails;

    .line 3405
    .local v5, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 3406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create user of invalid user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UserManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    return-object v6

    .line 3409
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 3410
    .end local p2    # "userType":Ljava/lang/String;
    .local v7, "userType":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int v8, p3, v0

    .line 3411
    .end local p3    # "flags":I
    .local v8, "flags":I
    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot add user. Flags ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") and userTypeDetails ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") are inconsistent."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "UserManagerService"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    return-object v6

    .line 3416
    :cond_1
    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_2

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot add user. Flags ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "UserManagerService"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    return-object v6

    .line 3421
    :cond_2
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3422
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v0, :cond_3

    .line 3423
    or-int/lit16 v8, v8, 0x100

    .line 3425
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 3428
    if-nez v3, :cond_4

    if-gez v2, :cond_4

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3429
    move-object/from16 v15, p1

    invoke-direct {v1, v7, v8, v15}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3430
    .local v0, "preCreatedUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_5

    .line 3431
    return-object v0

    .line 3428
    .end local v0    # "preCreatedUser":Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v15, p1

    .line 3435
    :cond_5
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 3436
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 3437
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v6}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3438
    const/4 v0, 0x5

    const-string v9, "Cannot add user. Not enough space on disk."

    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3442
    :cond_6
    invoke-virtual {v5}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v16

    .line 3443
    .local v16, "isProfile":Z
    invoke-static {v7}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v17

    .line 3444
    .local v17, "isGuest":Z
    invoke-static {v7}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v18

    .line 3445
    .local v18, "isRestricted":Z
    invoke-static {v7}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v19

    .line 3447
    .local v19, "isDemo":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3452
    .local v20, "ident":J
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 3453
    const/4 v9, 0x0

    .line 3454
    .local v9, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v0, -0x2710

    const/4 v13, 0x1

    if-eq v2, v0, :cond_8

    .line 3455
    :try_start_2
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3456
    :try_start_3
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v11

    move-object v9, v11

    .line 3457
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3458
    if-nez v9, :cond_7

    .line 3459
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find user data for parent user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3464
    :cond_7
    move-object v12, v9

    goto :goto_0

    .line 3457
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_6
    throw v0

    .line 3551
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 p3, v6

    move-object/from16 v23, v14

    goto/16 :goto_7

    .line 3454
    .restart local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_8
    move-object v12, v9

    .line 3464
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v12, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_0
    const/4 v9, 0x6

    if-nez v3, :cond_9

    invoke-direct {v1, v5}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 3465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add more users of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Maximum number of that type already exists."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3470
    :cond_9
    const/4 v11, 0x0

    if-eqz v16, :cond_a

    invoke-virtual {v1, v7, v2, v11}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v10

    if-nez v10, :cond_a

    .line 3471
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add more profiles of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3476
    :cond_a
    if-nez v17, :cond_b

    if-nez v16, :cond_b

    if-nez v19, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3479
    const-string v10, "Cannot add user. Maximum user limit is reached."

    invoke-direct {v1, v10, v9}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3484
    :cond_b
    if-eqz v18, :cond_c

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v2, :cond_c

    .line 3486
    const-string v9, "Cannot add restricted profile - parent user must be owner"

    invoke-direct {v1, v9, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3490
    :cond_c
    if-eqz v18, :cond_e

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 3491
    if-nez v12, :cond_d

    .line 3492
    const-string v9, "Cannot add restricted profile - parent user must be specified"

    invoke-direct {v1, v9, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3496
    :cond_d
    iget-object v9, v12, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v9

    if-nez v9, :cond_e

    .line 3497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3505
    :cond_e
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v9

    move v11, v9

    .line 3506
    .local v11, "userId":I
    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 3508
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 3510
    if-eqz v12, :cond_f

    :try_start_8
    iget-object v9, v12, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_f

    .line 3511
    or-int/lit16 v8, v8, 0x100

    goto :goto_1

    .line 3533
    :catchall_2
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 p3, v6

    move-object/from16 v24, v10

    move v6, v11

    move-object v15, v12

    move-object/from16 v23, v14

    goto/16 :goto_6

    .line 3517
    :cond_f
    :goto_1
    if-eqz v3, :cond_10

    .line 3518
    and-int/lit16 v8, v8, -0x101

    .line 3521
    :cond_10
    :try_start_9
    new-instance v22, Landroid/content/pm/UserInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    const/16 v23, 0x0

    move-object/from16 v9, v22

    move-object/from16 v24, v10

    move v10, v11

    move-object/from16 p3, v6

    move v6, v11

    .end local v11    # "userId":I
    .local v6, "userId":I
    .local p3, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    move-object/from16 v11, p1

    move-object v15, v12

    .end local v12    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v15, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v12, v23

    move v0, v13

    move v13, v8

    move-object/from16 v23, v14

    move-object v14, v7

    :try_start_a
    invoke-direct/range {v9 .. v14}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v9, v22

    .line 3522
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v10, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v10, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/UserInfo;->creationTime:J

    .line 3524
    iput-boolean v0, v9, Landroid/content/pm/UserInfo;->partial:Z

    .line 3525
    iput-boolean v3, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 3526
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3527
    invoke-virtual {v5}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, -0x2710

    if-eq v2, v0, :cond_11

    .line 3528
    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v0

    iput v0, v9, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 3530
    :cond_11
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object v10, v0

    .line 3531
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v9, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3532
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3533
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 3534
    :try_start_b
    invoke-direct {v1, v10}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3535
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3536
    if-eqz v15, :cond_15

    .line 3537
    if-eqz v16, :cond_13

    .line 3538
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v11, -0x2710

    if-ne v0, v11, :cond_12

    .line 3539
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v11, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    iput v11, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 3540
    invoke-direct {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3542
    :cond_12
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_2

    .line 3543
    :cond_13
    if-eqz v18, :cond_15

    .line 3544
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v11, -0x2710

    if-ne v0, v11, :cond_14

    .line 3545
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v11, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    iput v11, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3546
    invoke-direct {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3548
    :cond_14
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3551
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    :goto_2
    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 3553
    :try_start_c
    const-string v0, "createUserKey"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3554
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v11, v0

    .line 3555
    .local v11, "storage":Landroid/os/storage/StorageManager;
    iget v0, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v12

    invoke-virtual {v11, v6, v0, v12}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 3556
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3558
    const-string/jumbo v0, "prepareUserData"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3559
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v12, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v13, 0x3

    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3561
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3563
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 3564
    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v12, v0

    .line 3565
    .local v12, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "PM.createNewUser"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3566
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v13, p6

    :try_start_d
    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    .line 3567
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3569
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/content/pm/UserInfo;->partial:Z

    .line 3570
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 3571
    :try_start_e
    invoke-direct {v1, v10}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3572
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 3573
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v14, v0

    .line 3576
    .local v14, "restrictions":Landroid/os/Bundle;
    if-eqz v17, :cond_16

    .line 3578
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 3579
    :try_start_10
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3580
    monitor-exit v15

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_11
    throw v0

    .line 3582
    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_16
    invoke-virtual {v5, v14}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 3584
    :goto_3
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 3585
    :try_start_12
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v6, v14}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3586
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 3588
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PM.onNewUserCreated-"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3589
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 3590
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3591
    if-eqz v3, :cond_17

    .line 3597
    const-string v0, "UserManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting pre-created user "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move-object v2, v0

    .line 3600
    .local v2, "am":Landroid/app/IActivityManager;
    :try_start_14
    invoke-interface {v2, v6}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 3603
    goto :goto_4

    .line 3601
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 3602
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v15, "UserManagerService"

    move-object/from16 p2, v2

    .end local v2    # "am":Landroid/app/IActivityManager;
    .local p2, "am":Landroid/app/IActivityManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3604
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p2    # "am":Landroid/app/IActivityManager;
    :goto_4
    goto :goto_5

    .line 3605
    :cond_17
    invoke-direct {v1, v9}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 3609
    .end local v11    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "restrictions":Landroid/os/Bundle;
    :goto_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    nop

    .line 3624
    return-object v9

    .line 3586
    .restart local v11    # "storage":Landroid/os/storage/StorageManager;
    .restart local v12    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "restrictions":Landroid/os/Bundle;
    :catchall_4
    move-exception v0

    :try_start_16
    monitor-exit v15
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 3572
    .end local v14    # "restrictions":Landroid/os/Bundle;
    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_5
    move-exception v0

    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 3609
    .end local v6    # "userId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v11    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_6
    move-exception v0

    move-object/from16 v13, p6

    goto :goto_8

    .line 3551
    :catchall_7
    move-exception v0

    move-object/from16 v13, p6

    goto :goto_7

    .line 3533
    .restart local v6    # "userId":I
    .restart local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_8
    move-exception v0

    move-object/from16 v13, p6

    goto :goto_6

    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v11, "userId":I
    .local v12, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_9
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 p3, v6

    move-object/from16 v24, v10

    move v6, v11

    move-object v15, v12

    move-object/from16 v23, v14

    .end local v11    # "userId":I
    .end local v12    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v6, "userId":I
    .restart local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :goto_6
    :try_start_1a
    monitor-exit v24
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_1b
    throw v0

    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a
    move-exception v0

    goto :goto_6

    .line 3551
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_b
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 p3, v6

    move-object/from16 v23, v14

    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :goto_7
    monitor-exit v23
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .end local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 3609
    .restart local v5    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "flags":I
    .restart local v16    # "isProfile":Z
    .restart local v17    # "isGuest":Z
    .restart local v18    # "isRestricted":Z
    .restart local v19    # "isDemo":Z
    .restart local v20    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_c
    move-exception v0

    goto :goto_8

    .line 3551
    :catchall_d
    move-exception v0

    goto :goto_7

    .line 3609
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_e
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 p3, v6

    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :goto_8
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    throw v0

    .line 3425
    .end local v16    # "isProfile":Z
    .end local v17    # "isGuest":Z
    .end local v18    # "isRestricted":Z
    .end local v19    # "isDemo":Z
    .end local v20    # "ident":J
    .end local p3    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_f
    move-exception v0

    move-object/from16 v13, p6

    :goto_9
    :try_start_1d
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    throw v0

    :catchall_10
    move-exception v0

    goto :goto_9
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 5421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    return-void
.end method

.method private dispatchUserAdded(Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 3700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3701
    .local v0, "addedIntent":Landroid/content/Intent;
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3704
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3705
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3707
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "users_guest_created"

    goto :goto_0

    .line 3708
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "users_demo_created"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "users_user_created"

    :goto_0
    nop

    .line 3707
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3710
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3712
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3714
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3718
    :cond_2
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nowTime"    # J
    .param p4, "time"    # J

    .line 4965
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 4966
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4968
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4969
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4970
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4973
    :goto_0
    return-void
.end method

.method private enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 5355
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is enabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5358
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5359
    new-instance v1, Landroid/os/UserManager$CheckedUserOperationException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 5362
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "targetUserId"    # I
    .param p4, "startIntent"    # Z
    .param p5, "dontAskCredential"    # Z

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 1086
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    return-void

    .line 1089
    :cond_0
    if-nez p4, :cond_5

    .line 1093
    if-nez p5, :cond_4

    .line 1097
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 1103
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_1

    .line 1104
    return-void

    .line 1107
    :cond_1
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1108
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1109
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_2

    .line 1110
    nop

    .line 1111
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 1112
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_2

    .line 1113
    return-void

    .line 1116
    .end local v2    # "isForegroundLauncher":Z
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1098
    .end local v0    # "hasModifyQuietModePermission":Z
    .end local v1    # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .locals 11

    .line 2803
    const/16 v0, 0x813

    .line 2806
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2807
    const-string v1, "android.os.usertype.system.HEADLESS"

    goto :goto_0

    :cond_0
    const-string v1, "android.os.usertype.full.SYSTEM"

    .line 2808
    .local v1, "systemUserType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v2

    or-int/2addr v0, v2

    .line 2809
    new-instance v8, Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2810
    .local v2, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2811
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2812
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2814
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2816
    .local v4, "restrictions":Landroid/os/Bundle;
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 2818
    .local v6, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 2819
    .local v9, "userRestriction":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2820
    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    .end local v9    # "userRestriction":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2825
    .end local v6    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 2823
    :catch_0
    move-exception v6

    .line 2824
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "UserManagerService"

    const-string v8, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2827
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2828
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2829
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v7, v5, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2831
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2834
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2835
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2837
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2838
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2839
    return-void
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    .line 2340
    const/4 v0, 0x0

    .line 2341
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2343
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2344
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2345
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_0

    .line 2346
    add-int/lit8 v0, v0, 0x1

    .line 2343
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2349
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private getCreationTime()J
    .locals 4

    .line 3695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3696
    .local v0, "now":J
    const-wide v2, 0xdc46c32800L

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method private getCrossProfileAppsInternal()Landroid/content/pm/CrossProfileAppsInternal;
    .locals 1

    .line 5520
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    if-nez v0, :cond_0

    .line 5521
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileAppsInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 5523
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    return-object v0
.end method

.method private getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;
    .locals 2
    .param p1, "targetUserId"    # I

    .line 1915
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/RestrictionsSet;

    .line 1916
    .local v0, "result":Lcom/android/server/pm/RestrictionsSet;
    if-nez v0, :cond_0

    .line 1917
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    move-object v0, v1

    .line 1918
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    :cond_0
    return-object v0
.end method

.method private getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 5528
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    .line 5529
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5530
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5532
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .line 1950
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1951
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1952
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1953
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 1954
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 1956
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1957
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 548
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 549
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I
    .locals 2
    .param p0, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 5441
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v0

    .line 5442
    .local v0, "defaultMax":I
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    .line 5443
    return v0

    .line 5445
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5446
    const-string/jumbo v1, "persist.sys.max_profiles"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 5449
    :cond_1
    return v0
.end method

.method private getNumberOfUsersOfType(Ljava/lang/String;)I
    .locals 7
    .param p1, "userType"    # Ljava/lang/String;

    .line 2272
    const/4 v0, 0x0

    .line 2273
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2274
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2275
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2276
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2277
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2279
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_0

    .line 2281
    add-int/lit8 v0, v0, 0x1

    .line 2275
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2284
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 2285
    return v0

    .line 2284
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    .line 2842
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040586

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 5512
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 5513
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5515
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 5
    .param p1, "userType"    # Ljava/lang/String;

    .line 3730
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3731
    .local v0, "userSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3732
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3734
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3735
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3737
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3736
    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    goto :goto_1

    .line 3740
    :cond_0
    return-object v2

    .line 3731
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3743
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z

    .line 888
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 889
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 890
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_0

    .line 892
    return-object v1

    .line 894
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 895
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 896
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 897
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 898
    goto :goto_1

    .line 900
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 901
    goto :goto_1

    .line 903
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 904
    goto :goto_1

    .line 906
    :cond_3
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_4

    .line 907
    goto :goto_1

    .line 909
    :cond_4
    if-eqz p2, :cond_5

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 910
    goto :goto_1

    .line 912
    :cond_5
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 895
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 914
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .line 970
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 971
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 972
    return-object v1

    .line 974
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 975
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 978
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 976
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z
    .param p4, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 862
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object v0

    .line 863
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 864
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 865
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 866
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 868
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p4, :cond_0

    .line 869
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 870
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 871
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_1

    .line 873
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 875
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v3    # "profileId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4199
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4199
    return v2

    .line 4204
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4205
    throw v2

    .line 4201
    :catch_0
    move-exception v2

    .line 4202
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 4204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4202
    return v3
.end method

.method private getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;
    .locals 5
    .param p1, "originatingUserId"    # I
    .param p2, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v0, "targetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/pm/RestrictionsSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1871
    invoke-virtual {p2, v1}, Lcom/android/server/pm/RestrictionsSet;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1875
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1876
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1877
    .local v2, "targetUserId":I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RestrictionsSet;

    .line 1878
    .local v3, "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1879
    invoke-virtual {v3, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1880
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    .end local v2    # "targetUserId":I
    .end local v3    # "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1883
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I

    .line 1618
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1620
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1621
    const/4 v1, 0x0

    return-object v1

    .line 1623
    :cond_0
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I

    .line 1642
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .line 1607
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1609
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-object v1

    .line 1613
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_1
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 1631
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1633
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 1634
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1322
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1323
    .local v1, "typeStr":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    :cond_1
    return-object v0
.end method

.method private getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .locals 2
    .param p1, "userId"    # I

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "typeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getUserTypeNoChecks(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 1303
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1305
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 1306
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUsersInternal(ZZZ)Ljava/util/List;
    .locals 7
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 797
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 798
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 799
    .local v4, "ui":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 800
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_2

    .line 802
    goto :goto_1

    .line 804
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 806
    .end local v3    # "i":I
    :cond_4
    monitor-exit v0

    return-object v1

    .line 807
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .locals 1

    .line 2464
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "alternativePermission"    # Ljava/lang/String;

    .line 2451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2452
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2454
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2455
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2452
    :goto_1
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .locals 2

    .line 2440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2441
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2443
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2441
    :goto_1
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 2380
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private initDefaultGuestRestrictions()V
    .locals 4

    .line 1762
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1764
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    .line 1765
    .local v1, "guestType":Lcom/android/server/pm/UserTypeDetails;
    if-nez v1, :cond_0

    .line 1766
    const-string v2, "UserManagerService"

    const-string v3, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    monitor-exit v0

    return-void

    .line 1769
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 1771
    .end local v1    # "guestType":Lcom/android/server/pm/UserTypeDetails;
    :cond_1
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1946
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 1947
    return-void
.end method

.method private static isAtMostOneFlag(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 3683
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 983
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 942
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 945
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 946
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_3

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1

    goto :goto_0

    .line 950
    :cond_1
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 948
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 943
    .end local v3    # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    .line 951
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUserLimitReached()Z
    .locals 2

    .line 2246
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2247
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 2248
    .local v1, "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2248
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 3
    .param p0, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 3751
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3752
    return v0

    .line 3754
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3755
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3754
    :goto_0
    return v0
.end method

.method static synthetic lambda$addUserRestrictionsListener$0(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "listener"    # Landroid/os/IUserRestrictionsListener;
    .param p1, "userId"    # I
    .param p2, "newRestrict"    # Landroid/os/Bundle;
    .param p3, "prevRestrict"    # Landroid/os/Bundle;

    .line 2006
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IUserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    goto :goto_0

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    const-string v2, "IUserRestrictionsListener"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private logQuietModeEnabled(IZLjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1167
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    if-nez v1, :cond_0

    .line 1169
    return-void

    .line 1171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1172
    .local v2, "now":J
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    goto :goto_0

    .line 1174
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v4, v2, v4

    :goto_0
    nop

    .line 1175
    .local v4, "period":J
    const/16 v0, 0x37

    .line 1176
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    .line 1177
    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1178
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1181
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 1182
    return-void

    .line 1167
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v2    # "now":J
    .end local v4    # "period":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logUserCreateJourneyBegin(ILjava/lang/String;I)J
    .locals 13
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 3381
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    .line 3383
    .local v0, "sessionId":J
    nop

    .line 3385
    invoke-static {p2}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v11

    .line 3383
    const/16 v5, 0x108

    const/4 v8, 0x4

    const/4 v9, -0x1

    move-wide v6, v0

    move v10, p1

    move/from16 v12, p3

    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    .line 3387
    const/16 v5, 0x109

    const/4 v9, 0x3

    const/4 v10, 0x1

    move v8, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 3390
    return-wide v0
.end method

.method private logUserCreateJourneyFinish(JIZ)V
    .locals 7
    .param p1, "sessionId"    # J
    .param p3, "userId"    # I
    .param p4, "finish"    # Z

    .line 3394
    nop

    .line 3396
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    move v6, v0

    goto :goto_0

    .line 3397
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    .line 3394
    :goto_0
    const/16 v1, 0x109

    const/4 v5, 0x3

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 3398
    return-void
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 4597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 2169
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    return-void

    .line 2173
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2174
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2176
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2197
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 7
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    .line 4220
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4221
    .local v1, "restrictions":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4222
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4223
    return-object v1

    .line 4226
    :cond_0
    const/4 v3, 0x0

    .line 4228
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 4229
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 4230
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4231
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4232
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 4233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4233
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4235
    nop

    .line 4243
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4235
    return-object v1

    .line 4237
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 4238
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4243
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    nop

    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4244
    goto :goto_2

    .line 4243
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 4240
    :catch_0
    move-exception v4

    .line 4241
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4243
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4245
    :goto_2
    return-object v1

    .line 4243
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4244
    throw v0
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 4211
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 4212
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 4213
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4214
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4294
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4295
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4296
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4297
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4299
    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4250
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 4251
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4252
    const/4 v2, 0x0

    const-string/jumbo v3, "key"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4253
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4254
    .local v4, "valType":Ljava/lang/String;
    const-string/jumbo v5, "m"

    invoke-interface {p2, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4255
    .local v2, "multiple":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 4256
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4257
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4258
    .local v5, "count":I
    :cond_0
    :goto_0
    if-lez v5, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 4259
    if-ne v0, v1, :cond_0

    .line 4260
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4261
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4262
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4265
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 4266
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4267
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4268
    .end local v1    # "valueStrings":[Ljava/lang/String;
    .end local v5    # "count":I
    goto :goto_2

    :cond_2
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4269
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 4270
    :cond_3
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4271
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4272
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4273
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4274
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 4275
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4276
    .end local v6    # "childBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 4277
    :cond_4
    nop

    .line 4278
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 4277
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4279
    .end local v1    # "outerDepth":I
    .end local v5    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_2

    .line 4280
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4281
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4282
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 4283
    :cond_6
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4284
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 4286
    :cond_7
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "multiple":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "valType":Ljava/lang/String;
    :cond_8
    :goto_2
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 3246
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3247
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    return p3

    .line 3249
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3250
    :catch_0
    move-exception v1

    .line 3251
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 3256
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3257
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    return-wide p3

    .line 3259
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 3260
    :catch_0
    move-exception v1

    .line 3261
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 8
    .param p1, "id"    # I

    .line 3052
    const-string v0, "Error reading user list"

    const-string v1, "UserManagerService"

    const/4 v2, 0x0

    .line 3054
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3055
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3056
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v2, v4

    .line 3057
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3063
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3057
    return-object v0

    .line 3063
    .end local v3    # "userFile":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3060
    :catch_0
    move-exception v3

    .line 3061
    .local v3, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    nop

    .end local v3    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 3058
    :catch_1
    move-exception v3

    .line 3059
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3063
    nop

    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3064
    nop

    .line 3065
    const/4 v0, 0x0

    return-object v0

    .line 3063
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3064
    throw v0
.end method

.method private readUserListLP()V
    .locals 14

    .line 2541
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2542
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 2543
    return-void

    .line 2545
    :cond_0
    const/4 v0, 0x0

    .line 2546
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2548
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 2549
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2550
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2552
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 2557
    :cond_1
    if-eq v4, v6, :cond_2

    .line 2558
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2629
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2560
    return-void

    .line 2563
    :cond_2
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2564
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 2565
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2566
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2567
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2569
    :cond_3
    const-string/jumbo v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2570
    .local v8, "versionNumber":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2571
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2577
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v8    # "versionNumber":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 2579
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_5
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_10

    .line 2580
    if-ne v4, v6, :cond_5

    .line 2581
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2582
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2583
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2585
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2587
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v10, :cond_8

    .line 2588
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2589
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2590
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_6

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_7

    .line 2592
    :cond_6
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2594
    :cond_7
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_3
    throw v5

    .line 2596
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_8
    :goto_2
    goto :goto_4

    :cond_9
    const-string v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2597
    :cond_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_f

    const/4 v9, 0x3

    if-eq v4, v9, :cond_f

    .line 2599
    if-ne v4, v6, :cond_a

    .line 2600
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2601
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2602
    :try_start_4
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2603
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2604
    monitor-exit v9

    goto :goto_4

    :catchall_1
    move-exception v5

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_5
    throw v5

    .line 2609
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_b
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "globalRestrictionOwnerUserId"

    .line 2611
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_3

    .line 2616
    :cond_c
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2618
    nop

    .line 2619
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    goto :goto_4

    .line 2612
    :cond_d
    :goto_3
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2613
    .local v9, "ownerUserId":Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 2614
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2616
    .end local v9    # "ownerUserId":Ljava/lang/String;
    :cond_e
    nop

    .line 2621
    .end local v8    # "name":Ljava/lang/String;
    :cond_f
    :goto_4
    goto/16 :goto_1

    .line 2624
    :cond_10
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2625
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4    # "type":I
    goto :goto_5

    .line 2629
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 2626
    :catch_0
    move-exception v2

    .line 2627
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2629
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2630
    nop

    .line 2631
    return-void

    .line 2629
    :goto_6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2630
    throw v2
.end method

.method private removeNonSystemUsers()V
    .locals 6

    .line 5379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5380
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5382
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5383
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5384
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_0

    .line 5385
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5382
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5388
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5389
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5390
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 5391
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 5392
    :cond_2
    return-void

    .line 5388
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private removeUserState(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 4032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4036
    goto :goto_0

    .line 4033
    :catch_0
    move-exception v0

    .line 4035
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying key for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed, continuing anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4040
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 4041
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_0

    .line 4042
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4046
    .end local v0    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    goto :goto_1

    .line 4044
    :catch_1
    move-exception v0

    .line 4045
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 4052
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 4056
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4057
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4058
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4059
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 4060
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 4061
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 4062
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4063
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4064
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4065
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4066
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4068
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4070
    const/4 v1, 0x0

    .line 4071
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4072
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4073
    .local v3, "targetUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    .line 4074
    invoke-virtual {v4, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 4071
    .end local v3    # "targetUserId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4076
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 4077
    if-eqz v1, :cond_2

    .line 4078
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 4080
    .end local v1    # "changed":Z
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4082
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4083
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 4084
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4086
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4087
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 4088
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4094
    return-void

    .line 4084
    .end local v0    # "userFile":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 4080
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 4062
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 4059
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .locals 11
    .param p1, "userId"    # I

    .line 3900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3903
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 3904
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    .line 3905
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3906
    nop

    .line 3973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3906
    return v3

    .line 3908
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3909
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3910
    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3911
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez p1, :cond_1

    .line 3912
    const-string v7, "UserManagerService"

    const-string v8, "System user cannot be removed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3913
    return v3

    .line 3916
    :cond_1
    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 3917
    :try_start_5
    const-string v8, "UserManagerService"

    const-string v9, "Cannot remove user %d, invalid user id provided."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3918
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3917
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3919
    return v3

    .line 3922
    :cond_2
    :try_start_7
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3923
    const-string v8, "UserManagerService"

    const-string v9, "User %d is already scheduled for removal."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3923
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3925
    return v3

    .line 3928
    :cond_3
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 3929
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3934
    :try_start_a
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 3937
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 3938
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3939
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3941
    :try_start_b
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3944
    goto :goto_0

    .line 3942
    :catch_0
    move-exception v4

    .line 3943
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v5, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user."

    invoke-static {v5, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3947
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_4

    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3948
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3951
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3957
    :cond_4
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v4, p1, v7, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3970
    .local v4, "res":I
    nop

    .line 3971
    if-nez v4, :cond_5

    move v3, v7

    .line 3973
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3971
    return v3

    .line 3967
    .end local v4    # "res":I
    :catch_1
    move-exception v4

    .line 3968
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v5, "UserManagerService"

    const-string v7, "Failed to stop user during removal."

    invoke-static {v5, v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3969
    nop

    .line 3973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3969
    return v3

    .line 3929
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .end local v0    # "ident":J
    .end local v2    # "currentUser":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_10
    throw v3

    .line 3939
    .restart local v0    # "ident":J
    .restart local v2    # "currentUser":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 3973
    .end local v2    # "currentUser":I
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    throw v2
.end method

.method private runList(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4714
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 4715
    .local v1, "all":Z
    const/4 v2, 0x0

    .line 4717
    .local v2, "verbose":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserManagerService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 4718
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v7, 0x5e9

    const/4 v8, -0x1

    if-eq v3, v7, :cond_2

    const v5, 0x2901001

    if-eq v3, v5, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "--all"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v5, v6

    goto :goto_2

    :cond_2
    const-string v3, "-v"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :goto_1
    move v5, v8

    :goto_2
    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_3

    .line 4726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4727
    return v8

    .line 4723
    :cond_3
    const/4 v1, 0x1

    .line 4724
    goto :goto_3

    .line 4720
    :cond_4
    const/4 v2, 0x1

    .line 4721
    nop

    .line 4727
    :goto_3
    goto :goto_0

    .line 4730
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4731
    .local v3, "am":Landroid/app/IActivityManager;
    xor-int/lit8 v7, v1, 0x1

    xor-int/lit8 v8, v1, 0x1

    move-object/from16 v9, p0

    invoke-virtual {v9, v7, v5, v8}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v7

    .line 4733
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v7, :cond_6

    .line 4734
    const-string v5, "Error: couldn\'t get users"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    return v6

    .line 4737
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 4738
    .local v8, "size":I
    const/16 v10, -0x2710

    .line 4739
    .local v10, "currentUser":I
    if-eqz v2, :cond_7

    .line 4740
    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "%d users:\n\n"

    invoke-virtual {v0, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4741
    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v10, v11, Landroid/content/pm/UserInfo;->id:I

    goto :goto_4

    .line 4746
    :cond_7
    const-string v11, "Users:"

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4748
    :goto_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v8, :cond_10

    .line 4749
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 4750
    .local v12, "user":Landroid/content/pm/UserInfo;
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v13, v5}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v13

    .line 4751
    .local v13, "running":Z
    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v14, v10, :cond_8

    move v14, v6

    goto :goto_6

    :cond_8
    move v14, v5

    .line 4752
    .local v14, "current":Z
    :goto_6
    const-string v16, ""

    if-eqz v2, :cond_e

    .line 4753
    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v5

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v6

    iget-object v5, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v5, v15, v17

    const/4 v5, 0x3

    iget v6, v12, Landroid/content/pm/UserInfo;->flags:I

    .line 4754
    invoke-static {v6}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    const/4 v5, 0x4

    .line 4755
    if-eqz v13, :cond_9

    const-string v6, " (running)"

    goto :goto_7

    :cond_9
    move-object/from16 v6, v16

    :goto_7
    aput-object v6, v15, v5

    const/4 v5, 0x5

    .line 4756
    iget-boolean v6, v12, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_a

    const-string v6, " (partial)"

    goto :goto_8

    :cond_a
    move-object/from16 v6, v16

    :goto_8
    aput-object v6, v15, v5

    const/4 v5, 0x6

    .line 4757
    iget-boolean v6, v12, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_b

    const-string v6, " (pre-created)"

    goto :goto_9

    :cond_b
    move-object/from16 v6, v16

    :goto_9
    aput-object v6, v15, v5

    const/4 v5, 0x7

    .line 4758
    iget-boolean v6, v12, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v6, :cond_c

    const-string v6, " (converted)"

    goto :goto_a

    :cond_c
    move-object/from16 v6, v16

    :goto_a
    aput-object v6, v15, v5

    const/16 v5, 0x8

    .line 4759
    if-eqz v14, :cond_d

    const-string v16, " (current)"

    :cond_d
    aput-object v16, v15, v5

    .line 4753
    const-string v5, "%d: id=%d, name=%s, flags=%s%s%s%s%s\n"

    invoke-virtual {v0, v5, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v6, 0x1

    goto :goto_b

    .line 4764
    :cond_e
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    if-eqz v13, :cond_f

    const-string v16, " running"

    :cond_f
    const/4 v6, 0x1

    aput-object v16, v5, v6

    const-string v15, "\t%s%s\n"

    invoke-virtual {v0, v15, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4748
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    .end local v13    # "running":Z
    .end local v14    # "current":Z
    :goto_b
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_5

    .line 4767
    .end local v11    # "i":I
    :cond_10
    const/4 v5, 0x0

    return v5
.end method

.method private runReportPackageWhitelistProblems(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;

    .line 4772
    const/4 v0, 0x0

    .line 4773
    .local v0, "verbose":Z
    const/4 v1, 0x0

    .line 4774
    .local v1, "criticalOnly":Z
    const/16 v2, -0x3e8

    .line 4776
    .local v2, "mode":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_8

    .line 4777
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v6, -0x513a2c86

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eq v3, v6, :cond_4

    const/16 v6, 0x5e9

    if-eq v3, v6, :cond_3

    const v5, 0x4f776f43    # 4.151264E9f

    if-eq v3, v5, :cond_2

    const v5, 0x6789dfe2

    if-eq v3, v5, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "--verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v5, v9

    goto :goto_2

    :cond_2
    const-string v3, "--mode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v5, v7

    goto :goto_2

    :cond_3
    const-string v3, "-v"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_4
    const-string v3, "--critical-only"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v5, v8

    goto :goto_2

    :goto_1
    move v5, v10

    :goto_2
    if-eqz v5, :cond_7

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_6

    if-eq v5, v7, :cond_5

    .line 4789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4790
    return v10

    .line 4786
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4787
    goto :goto_3

    .line 4783
    :cond_6
    const/4 v1, 0x1

    .line 4784
    goto :goto_3

    .line 4780
    :cond_7
    const/4 v0, 0x1

    .line 4781
    nop

    .line 4790
    :goto_3
    goto :goto_0

    .line 4794
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runReportPackageWhitelistProblems(): verbose="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", criticalOnly="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    invoke-static {v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4794
    const-string v6, "UserManagerService"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v3, p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4799
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v6, v3, v2, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Lcom/android/internal/util/IndentingPrintWriter;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4800
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 4801
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    return v5

    .line 4798
    .restart local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v5

    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v5
.end method

.method private scanNextAvailableIdLocked()I
    .locals 2

    .line 4588
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1

    .line 4589
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4590
    return v0

    .line 4588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4593
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 4
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2851
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2852
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2853
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2855
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .line 4097
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4098
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4099
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4100
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4101
    .local v1, "parentHandle":Landroid/os/UserHandle;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToCrossProfileManifestReceiversAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 4103
    const/high16 v2, 0x50000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4105
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4107
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1695
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1696
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1697
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .locals 6
    .param p1, "originatingUserId"    # I
    .param p2, "global"    # Landroid/os/Bundle;
    .param p3, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .param p4, "isDeviceOwner"    # Z

    .line 1802
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 1805
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v1

    .line 1806
    .local v1, "globalChanged":Z
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;

    move-result-object v2

    .line 1808
    .local v2, "updatedLocalTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/pm/UserManagerService;->updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z

    move-result v3

    .line 1811
    .local v3, "localChanged":Z
    if-eqz p4, :cond_0

    .line 1814
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_0

    .line 1816
    :cond_0
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v4, p1, :cond_1

    .line 1821
    const/16 v4, -0x2710

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1824
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1833
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1834
    if-nez v1, :cond_2

    if-eqz v3, :cond_5

    .line 1835
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 1836
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1837
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_2

    .line 1839
    :cond_3
    if-eqz v1, :cond_4

    .line 1840
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1842
    :cond_4
    if-eqz v3, :cond_5

    .line 1843
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1844
    .local v5, "targetUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeAllTargetUsersLP(I)V

    .line 1845
    .end local v5    # "targetUserId":I
    goto :goto_1

    .line 1849
    :cond_5
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1851
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    if-eqz v1, :cond_6

    .line 1853
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_4

    .line 1859
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 1854
    :cond_6
    if-eqz v3, :cond_7

    .line 1855
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1856
    .restart local v5    # "targetUserId":I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1857
    .end local v5    # "targetUserId":I
    goto :goto_3

    .line 1859
    :cond_7
    :goto_4
    monitor-exit v0

    .line 1860
    return-void

    .line 1859
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1849
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1824
    .end local v1    # "globalChanged":Z
    .end local v2    # "updatedLocalTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "localChanged":Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "target"    # Landroid/content/IntentSender;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1126
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1128
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1131
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1132
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    monitor-exit v0

    return-void

    .line 1135
    :cond_0
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 1136
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1137
    .local v3, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1138
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1139
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1140
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1143
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 1144
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1145
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_1

    .line 1154
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1147
    :cond_1
    if-eqz p3, :cond_2

    .line 1148
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_0

    .line 1149
    :cond_2
    nop

    :goto_0
    nop

    .line 1150
    .local v0, "callback":Landroid/os/IProgressListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 1153
    .end local v0    # "callback":Landroid/os/IProgressListener;
    :goto_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1157
    goto :goto_3

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1158
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 1160
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1129
    .end local v3    # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enableQuietMode":Z
    .end local p3    # "target":Landroid/content/IntentSender;
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 1137
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enableQuietMode":Z
    .restart local p3    # "target":Landroid/content/IntentSender;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1209
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 1210
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1211
    return-void

    .line 1213
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v2, "callBackIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    if-eqz p2, :cond_1

    .line 1216
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1218
    :cond_1
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1221
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x54000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1230
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1231
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1232
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1233
    return-void
.end method

.method private throwCheckedUserOperationException(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userOperationResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 5373
    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5374
    new-instance v0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {v0, p1, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z
    .locals 5
    .param p1, "originatingUserId"    # I
    .param p2, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1893
    .local p3, "updatedTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1894
    .local v0, "changed":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1895
    .local v2, "targetUserId":I
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 1896
    .local v3, "restrictions":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 1897
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1899
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    .line 1900
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1901
    const/4 v0, 0x1

    .line 1903
    .end local v2    # "targetUserId":I
    .end local v3    # "restrictions":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 1904
    :cond_2
    return v0
.end method

.method private updateUserIds()V
    .locals 12

    .line 4438
    const/4 v0, 0x0

    .line 4439
    .local v0, "num":I
    const/4 v1, 0x0

    .line 4440
    .local v1, "numIncludingPreCreated":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4441
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4442
    .local v3, "userSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 4443
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4444
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_0

    .line 4445
    add-int/lit8 v1, v1, 0x1

    .line 4446
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_0

    .line 4447
    add-int/lit8 v0, v0, 0x1

    .line 4442
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4455
    .end local v4    # "i":I
    :cond_1
    new-array v4, v0, [I

    .line 4456
    .local v4, "newUsers":[I
    new-array v5, v1, [I

    .line 4458
    .local v5, "newUsersIncludingPreCreated":[I
    const/4 v6, 0x0

    .line 4459
    .local v6, "n":I
    const/4 v7, 0x0

    .line 4460
    .local v7, "nIncludingPreCreated":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_4

    .line 4461
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4462
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_3

    .line 4463
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 4464
    .local v10, "userId":I
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "nIncludingPreCreated":I
    .local v11, "nIncludingPreCreated":I
    aput v10, v5, v7

    .line 4465
    iget-boolean v7, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v7, :cond_2

    .line 4466
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .local v7, "n":I
    aput v10, v4, v6

    move v6, v7

    move v7, v11

    goto :goto_2

    .line 4465
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :cond_2
    move v7, v11

    .line 4460
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    .end local v11    # "nIncludingPreCreated":I
    .local v7, "nIncludingPreCreated":I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4470
    .end local v8    # "i":I
    :cond_4
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 4471
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    .line 4476
    .end local v3    # "userSize":I
    .end local v4    # "newUsers":[I
    .end local v5    # "newUsersIncludingPreCreated":[I
    .end local v6    # "n":I
    .end local v7    # "nIncludingPreCreated":I
    monitor-exit v2

    .line 4477
    return-void

    .line 4476
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "newBaseRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 2118
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2119
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2118
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2122
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 2124
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2126
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2127
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2130
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2131
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2135
    .end local v1    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2137
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2145
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_3

    .line 2146
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2158
    :cond_3
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2160
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2161
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;

    .line 2639
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;I)V

    .line 2640
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 1339
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1341
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1342
    return-object v0

    .line 1344
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_0
    return-object p1
.end method

.method static validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 4174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4175
    .local v0, "n":I
    const/4 v1, 0x1

    .line 4176
    .local v1, "front":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 4177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4178
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    .line 4179
    :cond_1
    const/4 v1, 0x0

    .line 4180
    goto :goto_1

    .line 4182
    :cond_2
    if-nez v1, :cond_6

    .line 4183
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_4

    .line 4184
    goto :goto_1

    .line 4186
    :cond_4
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_6

    .line 4187
    const/4 v1, 0x1

    .line 4188
    nop

    .line 4176
    .end local v3    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4191
    .restart local v3    # "c":C
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4193
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 5502
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 5503
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_0

    .line 5507
    return-void

    .line 5504
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeAllTargetUsersLP(I)V
    .locals 4
    .param p1, "originatingUserId"    # I

    .line 2858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2859
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2860
    .local v1, "targetUserId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/RestrictionsSet;

    .line 2861
    .local v2, "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2862
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2858
    .end local v1    # "targetUserId":I
    .end local v2    # "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2865
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 7
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .line 4314
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 4316
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 4317
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4319
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4320
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4321
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4322
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4324
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4325
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4326
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4328
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4329
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4333
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 4330
    :catch_0
    move-exception v0

    .line 4331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4332
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4334
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 4305
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 4306
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 4307
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4308
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 4309
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 2483
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2484
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2485
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2486
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2487
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2488
    nop

    .line 2489
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2488
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2494
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2495
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2496
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2499
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2502
    goto :goto_0

    .line 2500
    :catch_0
    move-exception v3

    .line 2503
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2506
    nop

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tmp":Ljava/io/File;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 2504
    :catch_1
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2507
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4338
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4339
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4340
    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    const-string v4, "entry"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4341
    const-string/jumbo v5, "key"

    invoke-interface {p1, v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4343
    instance-of v5, v2, Ljava/lang/Boolean;

    const-string/jumbo v6, "type"

    if-eqz v5, :cond_0

    .line 4344
    const-string v5, "b"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4345
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 4346
    :cond_0
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 4347
    const-string v5, "i"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4348
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 4349
    :cond_1
    const-string v5, ""

    if-eqz v2, :cond_8

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_2

    goto/16 :goto_4

    .line 4352
    :cond_2
    instance-of v7, v2, Landroid/os/Bundle;

    const-string v8, "B"

    if-eqz v7, :cond_3

    .line 4353
    invoke-interface {p1, v3, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4354
    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_5

    .line 4355
    :cond_3
    instance-of v7, v2, [Landroid/os/Parcelable;

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    .line 4356
    const-string v5, "BA"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4357
    move-object v5, v2

    check-cast v5, [Landroid/os/Parcelable;

    .line 4358
    .local v5, "array":[Landroid/os/Parcelable;
    array-length v7, v5

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v10, v5, v9

    .line 4359
    .local v10, "parcelable":Landroid/os/Parcelable;
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_4

    .line 4362
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4363
    invoke-interface {p1, v3, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4364
    move-object v11, v10

    check-cast v11, Landroid/os/Bundle;

    invoke-static {v11, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4365
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4358
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4360
    .restart local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "bundle-array can only hold Bundles"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4367
    .end local v5    # "array":[Landroid/os/Parcelable;
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_5
    goto :goto_5

    .line 4368
    :cond_6
    const-string/jumbo v7, "sa"

    invoke-interface {p1, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4369
    move-object v6, v2

    check-cast v6, [Ljava/lang/String;

    .line 4370
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "m"

    invoke-interface {p1, v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4371
    array-length v7, v6

    :goto_2
    if-ge v9, v7, :cond_a

    aget-object v8, v6, v9

    .line 4372
    .local v8, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4373
    if-eqz v8, :cond_7

    move-object v11, v8

    goto :goto_3

    :cond_7
    move-object v11, v5

    :goto_3
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4374
    invoke-interface {p1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4371
    .end local v8    # "choice":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4350
    .end local v6    # "values":[Ljava/lang/String;
    :cond_8
    :goto_4
    const-string/jumbo v7, "s"

    invoke-interface {p1, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4351
    if-eqz v2, :cond_9

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    :cond_9
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4377
    :cond_a
    :goto_5
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4378
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4379
    :cond_b
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 6
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2871
    const/4 v0, 0x0

    .line 2872
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2874
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2875
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2876
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2877
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 2878
    :catch_0
    move-exception v2

    .line 2879
    .local v2, "ioe":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2880
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2882
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private writeUserListLP()V
    .locals 11

    .line 3002
    const/4 v0, 0x0

    .line 3003
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3005
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 3006
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3009
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3010
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3011
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3012
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3014
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3015
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3016
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3018
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3019
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3020
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v7, "restrictions"

    .line 3021
    invoke-static {v3, v5, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3022
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3023
    :try_start_2
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3024
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3025
    const-string v4, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3026
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3028
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3029
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 3030
    .local v5, "userIdsToWrite":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_0

    .line 3031
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3032
    .local v8, "user":Landroid/content/pm/UserInfo;
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    aput v9, v5, v7

    .line 3030
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3034
    .end local v7    # "i":I
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3035
    :try_start_4
    array-length v4, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    aget v8, v5, v7

    .line 3036
    .local v8, "id":I
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3037
    const-string v9, "id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3038
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3035
    nop

    .end local v8    # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3041
    :cond_1
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3043
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3044
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3048
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userIdsToWrite":[I
    goto :goto_2

    .line 3034
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 3022
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 3045
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v2

    .line 3046
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3047
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3983
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3984
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3986
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 3987
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3989
    :cond_0
    return-void
.end method

.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/IUserRestrictionsListener;

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$UserManagerService$s1AxethOTPU7NQ5LXxyP4etLk7E;

    invoke-direct {v1, p1}, Lcom/android/server/pm/-$$Lambda$UserManagerService$s1AxethOTPU7NQ5LXxyP4etLk7E;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 2012
    return-void

    .line 1997
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .locals 2

    .line 2212
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 2216
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2238
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2239
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2202
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 2203
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 2290
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "allowedToRemoveOne"    # Z

    .line 2298
    const-string v0, "check if more profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2299
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 2300
    .local v0, "type":Lcom/android/server/pm/UserTypeDetails;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2301
    return v1

    .line 2304
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v2

    .line 2305
    .local v2, "isManagedProfile":Z
    if-eqz v2, :cond_1

    .line 2306
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.managed_users"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2308
    return v1

    .line 2311
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2313
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2314
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 2319
    :cond_2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v5

    .line 2320
    .local v5, "maxUsersOfType":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_7

    .line 2321
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object v6

    array-length v6, v6

    .line 2322
    .local v6, "userTypeCount":I
    if-lez v6, :cond_3

    if-eqz p3, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v1

    .line 2323
    .local v8, "profilesRemovedCount":I
    :goto_0
    sub-int v9, v6, v8

    if-lt v9, v5, :cond_4

    .line 2324
    monitor-exit v3

    return v1

    .line 2327
    :cond_4
    if-eqz v2, :cond_7

    .line 2328
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v9

    sub-int/2addr v9, v8

    .line 2330
    .local v9, "usersCountAfterRemoving":I
    if-eq v9, v7, :cond_5

    .line 2331
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v10

    if-ge v9, v10, :cond_6

    :cond_5
    move v1, v7

    :cond_6
    monitor-exit v3

    .line 2330
    return v1

    .line 2334
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "maxUsersOfType":I
    .end local v6    # "userTypeCount":I
    .end local v8    # "profilesRemovedCount":I
    .end local v9    # "usersCountAfterRemoving":I
    :cond_7
    monitor-exit v3

    .line 2335
    return v7

    .line 2315
    .restart local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    :goto_1
    monitor-exit v3

    return v1

    .line 2334
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1571
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1574
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1578
    monitor-exit v0

    return v2

    .line 1581
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 1575
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 1582
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cleanupPartialUsers()V
    .locals 6

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 687
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 688
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 689
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 691
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 693
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 687
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 698
    .local v1, "partialsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 699
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 700
    .local v3, "ui":Landroid/content/pm/UserInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing partially created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 698
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 704
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 696
    .end local v1    # "partialsSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method cleanupPreCreatedUsers()V
    .locals 6

    .line 712
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 714
    .local v1, "userSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v2, "preCreatedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 716
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 717
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_0

    .line 718
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 720
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 721
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 715
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "userSize":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 726
    .local v0, "preCreatedSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 727
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 728
    .local v3, "ui":Landroid/content/pm/UserInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 726
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 731
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 724
    .end local v0    # "preCreatedSize":I
    .end local v2    # "preCreatedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearSeedAccountData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4652
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4653
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4656
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 4657
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 4658
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 4659
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4660
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4661
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4662
    return-void

    .line 4659
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_6
    throw v2

    .line 4661
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3305
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 3307
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3309
    :catch_0
    move-exception v0

    .line 3310
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3289
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 3291
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3292
    :catch_0
    move-exception v0

    .line 3293
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .line 3780
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3781
    const-string v3, "android.os.usertype.full.RESTRICTED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3783
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 3784
    const/4 v1, 0x0

    return-object v1

    .line 3786
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3788
    .local v1, "identity":J
    :try_start_0
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3791
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3794
    const-string/jumbo v3, "no_share_location"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3796
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3797
    nop

    .line 3798
    return-object v0

    .line 3796
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3797
    throw v3
.end method

.method public createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3318
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 3320
    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3322
    :catch_0
    move-exception v0

    .line 3323
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4806
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4808
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4809
    .local v11, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 4811
    .local v13, "nowRealtime":J
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 4812
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/ActivityManagerInternal;

    .line 4813
    .local v15, "amInternal":Landroid/app/ActivityManagerInternal;
    const-string v0, "Current user: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4814
    if-eqz v15, :cond_1

    .line 4815
    invoke-virtual {v15}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 4817
    :cond_1
    const-string v0, "N/A"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4820
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4821
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4822
    :try_start_0
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 4823
    :try_start_1
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 4825
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v7, v0

    .line 4826
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v7, :cond_2

    .line 4827
    move/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    goto/16 :goto_3

    .line 4829
    :cond_2
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v4, v0

    .line 4830
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    move v5, v0

    .line 4831
    .local v5, "userId":I
    const-string v0, "  "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4832
    const-string v0, " serialNo="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4833
    const-string v0, " isPrimary="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4834
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v0, :cond_3

    .line 4835
    :try_start_2
    const-string v0, " <removing> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4911
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "i":I
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    goto/16 :goto_6

    .line 4837
    .restart local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    .restart local v6    # "i":I
    .restart local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_2
    :try_start_3
    iget-boolean v0, v4, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_4

    .line 4838
    :try_start_4
    const-string v0, " <partial>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4840
    :cond_4
    :try_start_5
    iget-boolean v0, v4, Landroid/content/pm/UserInfo;->preCreated:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-eqz v0, :cond_5

    .line 4841
    :try_start_6
    const-string v0, " <pre-created>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4843
    :cond_5
    :try_start_7
    iget-boolean v0, v4, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v0, :cond_6

    .line 4844
    :try_start_8
    const-string v0, " <converted>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4846
    :cond_6
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4847
    const-string v0, "    Type: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    const-string v0, "    Flags: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    iget v0, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4850
    const-string v0, "    State: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4852
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 4853
    :try_start_a
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    const/4 v6, -0x1

    :try_start_b
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v0

    move/from16 v17, v0

    .line 4854
    .local v17, "state":I
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4855
    :try_start_c
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4856
    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4857
    move-object/from16 v18, v7

    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v18, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-wide v6, v4, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-object/from16 v2, p2

    move/from16 v20, v5

    move-object/from16 v19, v15

    move-object v15, v4

    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    .local v19, "amInternal":Landroid/app/ActivityManagerInternal;
    .local v20, "userId":I
    move-wide v4, v11

    move-object/from16 v1, v18

    .end local v18    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_d
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4859
    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4860
    iget-wide v6, v15, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide/from16 v21, v6

    move-wide v6, v11

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v21

    :try_start_e
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4862
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4863
    iget-object v0, v15, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4865
    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4866
    iget-wide v8, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide v6, v13

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4868
    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    iget-wide v8, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide v6, v13

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4871
    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4872
    move-object v4, v1

    move-object/from16 v1, p0

    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_f
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v5, v20

    .end local v20    # "userId":I
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4873
    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 4875
    :try_start_10
    const-string v0, "      "

    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v7, v15, Landroid/content/pm/UserInfo;->id:I

    .line 4876
    invoke-virtual {v6, v7}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 4875
    invoke-static {v10, v0, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4877
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    const-string v0, "      "

    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v7, v15, Landroid/content/pm/UserInfo;->id:I

    .line 4880
    invoke-virtual {v6, v7}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 4878
    invoke-static {v10, v0, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4881
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4882
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v0

    const-string v6, "      "

    .line 4883
    invoke-virtual {v0, v10, v6}, Lcom/android/server/pm/RestrictionsSet;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4884
    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4885
    const-string v0, "      "

    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v7, v15, Landroid/content/pm/UserInfo;->id:I

    .line 4887
    invoke-virtual {v6, v7}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 4885
    invoke-static {v10, v0, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4888
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 4890
    :try_start_11
    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4895
    :cond_7
    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4897
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4898
    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4900
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4902
    :cond_8
    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_9

    .line 4903
    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4908
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Ignore errors preparing storage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4909
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4908
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 4824
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v5    # "userId":I
    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "state":I
    :goto_3
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v8, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v23

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 4888
    .end local v6    # "i":I
    .restart local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v5    # "userId":I
    .restart local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "i":I
    .restart local v17    # "state":I
    :catchall_1
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 4911
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v5    # "userId":I
    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "i":I
    .end local v17    # "state":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    goto/16 :goto_6

    .line 4854
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    .restart local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v15, "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v16    # "i":I
    :catchall_4
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    move-object v15, v4

    move-object v4, v7

    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    goto :goto_4

    .end local v16    # "i":I
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v6    # "i":I
    .restart local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v15, "amInternal":Landroid/app/ActivityManagerInternal;
    :catchall_5
    move-exception v0

    move/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    move-object v15, v4

    move-object v4, v7

    .end local v6    # "i":I
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "i":I
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    :goto_4
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_15
    throw v0

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_4

    .line 4824
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v5    # "userId":I
    .end local v16    # "i":I
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v6    # "i":I
    .local v15, "amInternal":Landroid/app/ActivityManagerInternal;
    :cond_a
    move/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    .line 4911
    .end local v6    # "i":I
    .end local v15    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    monitor-exit v23
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 4912
    :try_start_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4915
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4916
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 4917
    :try_start_17
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4918
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 4919
    :try_start_18
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 4920
    :try_start_19
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 4923
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    :cond_b
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 4927
    :try_start_1a
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 4928
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Started users state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 4930
    :try_start_1c
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 4931
    :try_start_1d
    const-string v0, "  Cached user IDs: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4932
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    const-string v0, "  Cached user IDs (including pre-created): "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 4937
    :try_start_1e
    monitor-exit v18
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 4940
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (limit reached: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11100a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force ephemeral users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is split-system user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is headless-system mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User types ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " types):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 4955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/UserTypeDetails;->dump(Ljava/io/PrintWriter;)V

    .line 4954
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4960
    .end local v0    # "i":I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4961
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Ljava/io/PrintWriter;)V

    .line 4962
    return-void

    .line 4935
    :catchall_7
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 4929
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_8
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    .line 4926
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_9
    move-exception v0

    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_24
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 4918
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_a
    move-exception v0

    :try_start_25
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_26
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 4911
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v15    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v23, v9

    move-object/from16 v19, v15

    .end local v15    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    :goto_6
    :try_start_27
    monitor-exit v23
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v13    # "nowRealtime":J
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_28
    throw v0

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_c
    move-exception v0

    goto :goto_6

    .line 4937
    .end local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v15    # "amInternal":Landroid/app/ActivityManagerInternal;
    :catchall_d
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    .end local v15    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v19    # "amInternal":Landroid/app/ActivityManagerInternal;
    :goto_7
    monitor-exit v18
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_7
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1276
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1278
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1280
    .local v1, "identity":J
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    nop

    .line 1286
    return-void

    .line 1284
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1281
    :catch_0
    move-exception v3

    .line 1282
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    throw v3
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1649
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method public findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 6

    .line 3810
    const-string v0, "findCurrentGuestUser"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3811
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3812
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3813
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3814
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3815
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3816
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3817
    monitor-exit v0

    return-object v3

    .line 3813
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3820
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 3821
    const/4 v0, 0x0

    return-object v0

    .line 3820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method finishRemoveUser(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 3995
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3997
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3998
    .local v2, "removedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4001
    const-string v3, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4002
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4026
    .end local v2    # "removedIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4027
    nop

    .line 4028
    return-void

    .line 4026
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4027
    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4111
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4116
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 4120
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4122
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 919
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 923
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 924
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 926
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 929
    :cond_1
    :goto_0
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 1776
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1778
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1779
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getFreeProfileBadgeLU(ILjava/lang/String;)I
    .locals 6
    .param p1, "parentUserId"    # I
    .param p2, "userType"    # Ljava/lang/String;

    .line 5455
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5456
    .local v0, "usedBadges":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5457
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5458
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5460
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 5462
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5463
    iget v4, v3, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5457
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5466
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result v2

    .line 5467
    .local v2, "maxUsersOfType":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 5468
    const v2, 0x7fffffff

    .line 5470
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 5471
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5472
    return v3

    .line 5470
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5475
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method getInternalForInjectorOnly()Landroid/os/UserManagerInternal;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    return-object v0
.end method

.method getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;

    .line 5428
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 5429
    .local v0, "type":Lcom/android/server/pm/UserTypeDetails;
    if-nez v0, :cond_0

    .line 5430
    const/4 v1, 0x0

    return v1

    .line 5432
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v1

    return v1
.end method

.method getNextAvailableId()I
    .locals 7

    .line 4564
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4565
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 4566
    .local v1, "nextId":I
    if-ltz v1, :cond_0

    .line 4567
    monitor-exit v0

    return v1

    .line 4571
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4572
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4574
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4575
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4576
    .end local v3    # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_0

    .line 4577
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 4579
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4580
    if-ltz v1, :cond_3

    .line 4583
    return v1

    .line 4581
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4579
    .end local v1    # "nextId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    .line 767
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 770
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 771
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 772
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 773
    monitor-exit v0

    return-object v3

    .line 770
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileIds(ILjava/lang/String;Z)[I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z

    .line 845
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 848
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 850
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 851
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    return-object v3

    .line 852
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "enabledOnly":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 854
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "enabledOnly":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw v2
.end method

.method public getProfileIds(IZ)[I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 956
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 959
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileParentId(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 964
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 812
    const/4 v0, 0x1

    .line 813
    .local v0, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 818
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 820
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 821
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, p1, v4, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    return-object v4

    .line 822
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "returnFullInfo":Z
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enabledOnly":Z
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 824
    .restart local v0    # "returnFullInfo":Z
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enabledOnly":Z
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4625
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4626
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4627
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 4628
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 4629
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4643
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4644
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4645
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 4646
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    .line 4647
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4634
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4635
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4636
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 4637
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 4638
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 735
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserBadgeColorResId(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 1392
    const-string v0, "getUserBadgeColorResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1394
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1395
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1396
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result v2

    return v2

    .line 1397
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge dark color for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeDarkColorResId(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 1408
    const-string v0, "getUserBadgeDarkColorResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1411
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1412
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getDarkThemeBadgeColor(I)I

    move-result v2

    return v2

    .line 1413
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge color for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeLabelResId(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 1375
    const-string v0, "getUserBadgeLabelResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1377
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1378
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1379
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 1384
    .local v2, "badgeIndex":I
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getBadgeLabel(I)I

    move-result v3

    return v3

    .line 1380
    .end local v2    # "badgeIndex":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge label for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1443
    const-string v0, "getUserBadgeNoBackgroundResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1446
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1450
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getBadgeNoBackground()I

    move-result v1

    return v1

    .line 1447
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested badge (no background) for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v1, 0x0

    return v1
.end method

.method public getUserBadgeResId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1432
    const-string v0, "getUserBadgeResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1433
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1434
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1438
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getBadgePlain()I

    move-result v1

    return v1

    .line 1435
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested badge for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/4 v1, 0x0

    return v1
.end method

.method public getUserCreationTime(I)J
    .locals 5
    .param p1, "userId"    # I

    .line 4415
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4416
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 4417
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4418
    if-ne v0, p1, :cond_0

    .line 4419
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 4421
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 4422
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_1

    .line 4423
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 4426
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4427
    if-eqz v1, :cond_2

    .line 4431
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 4428
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userId can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4426
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUserHandle(I)I
    .locals 7
    .param p1, "userSerialNumber"    # I

    .line 4403
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 4405
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 4406
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_0

    monitor-exit v0

    return v4

    .line 4404
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4409
    :cond_1
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 4410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "targetUserId"    # I

    .line 1701
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1706
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1707
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1708
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1713
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1714
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1715
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1716
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1718
    .local v6, "sameGroup":Z
    :goto_0
    if-eq v3, p1, :cond_2

    if-nez v6, :cond_2

    .line 1719
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1722
    :cond_2
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1723
    monitor-exit v0

    return-object v2

    .line 1725
    :cond_3
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v1, v7

    .line 1726
    .end local v3    # "callingUserId":I
    .end local v4    # "callingGroupId":I
    .end local v5    # "targetGroupId":I
    .end local v6    # "sameGroup":Z
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1734
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1709
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    :goto_1
    :try_start_2
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    monitor-exit v0

    return-object v2

    .line 1726
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1702
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserIconBadgeResId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1421
    const-string v0, "getUserIconBadgeResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1423
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1427
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getIconBadge()I

    move-result v1

    return v1

    .line 1424
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested icon badge for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v1, 0x0

    return v1
.end method

.method public getUserIds()[I
    .locals 2

    .line 2517
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2518
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 2519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIdsIncludingPreCreated()[I
    .locals 2

    .line 2534
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2535
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object v1

    .line 2536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 1328
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .line 1492
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1497
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1499
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_0
    monitor-exit v1

    return-object v3

    .line 1500
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1493
    .end local v0    # "userId":I
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2029
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2031
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 2032
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2033
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 2032
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2035
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 2041
    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2045
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2048
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2052
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2056
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2058
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2062
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2064
    monitor-exit v1

    .line 2065
    return-object v0

    .line 2064
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    .line 2074
    const-string v0, "getUserRestrictions"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2075
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 4383
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4384
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4385
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0

    return v2

    .line 4386
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserStartRealtime()J
    .locals 5

    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1506
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1507
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1508
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    .line 1509
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1511
    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1512
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .locals 4

    .line 1517
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1519
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    .line 1520
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1522
    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1523
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 1
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .locals 1
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 788
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 789
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBadge(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1368
    const-string v0, "hasBadge"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1369
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1370
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2080
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2081
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2082
    return v1

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 2086
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 2087
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasManagedProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 5484
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5485
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 5486
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5487
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5488
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5489
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_0

    invoke-static {v1, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5490
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 5487
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5493
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 5494
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .locals 6

    .line 1587
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1588
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1589
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1590
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1591
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1592
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1593
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v5, v0, :cond_0

    .line 1595
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1591
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1598
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 1599
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1963
    const-string v0, "hasUserRestriction"

    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1964
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 7
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 1970
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1971
    return v1

    .line 1973
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1974
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1975
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1976
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1977
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1978
    return v0

    .line 1974
    .end local v4    # "userId":I
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1981
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .locals 1
    .param p1, "isFirstBoot"    # Z
    .param p2, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3690
    .local p3, "existingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method public isDemoUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1542
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1543
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1544
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1548
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1549
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1

    return v3

    .line 1550
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isManagedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1464
    const-string/jumbo v0, "isManagedProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1466
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1467
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1468
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPreCreated(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1555
    const-string/jumbo v0, "isPreCreated"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1558
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1559
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1455
    const-string/jumbo v0, "isProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1458
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1459
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isQuietModeEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1186
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1189
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1190
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1192
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 1190
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_4
    throw v2

    .line 1195
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public isRestricted()Z
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 934
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 935
    :cond_0
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 1987
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 1988
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isUserInitialized(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 4998
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4391
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4395
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4396
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4397
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 4398
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4392
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUserOfType(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;

    .line 1294
    const-string v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1295
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1486
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method isUserTypeSubtypeOfFull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1351
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;

    .line 1356
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1357
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1363
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1480
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1473
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1738
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1739
    const/4 v0, 0x0

    .line 1741
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1742
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1743
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1747
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_1

    .line 1748
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1749
    const/4 v0, 0x1

    .line 1751
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    if-eqz v0, :cond_2

    .line 1753
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1755
    :cond_2
    return-void

    .line 1744
    :cond_3
    :goto_0
    :try_start_1
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    monitor-exit v1

    return-void

    .line 1751
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 3832
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3833
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3835
    const-string v0, "UserManagerService"

    const-string v1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    return v2

    .line 3839
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3842
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3843
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3844
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3845
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 3848
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3849
    :try_start_3
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3850
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    return v2

    .line 3857
    :cond_2
    :try_start_4
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 3860
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 3861
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3862
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3864
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3865
    nop

    .line 3866
    return v4

    .line 3846
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3846
    return v2

    .line 3848
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_8
    throw v2

    .line 3862
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3864
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3865
    throw v2
.end method

.method public onBeforeStartUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 4484
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4485
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 4486
    return-void

    .line 4488
    :cond_0
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4489
    .local v1, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4490
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4492
    .local v2, "userSerial":I
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 4493
    .local v3, "migrateAppsData":Z
    const-string/jumbo v5, "prepareUserData"

    invoke-virtual {v1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4494
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 4495
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4496
    const-string/jumbo v5, "reconcileAppsData"

    invoke-virtual {v1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4497
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 4498
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4500
    if-eqz p1, :cond_1

    .line 4501
    const-string v4, "applyUserRestrictions"

    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4502
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4503
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 4504
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4505
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_0

    .line 4504
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 4507
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4508
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 4515
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4516
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 4517
    return-void

    .line 4519
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4521
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 4522
    .local v2, "migrateAppsData":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 4523
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 4524
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .locals 5
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 4693
    if-nez p2, :cond_0

    .line 4694
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4697
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4699
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x40afebbe

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "report-system-user-package-whitelist-problems"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    .line 4705
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 4703
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->runReportPackageWhitelistProblems(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I

    move-result v1

    return v1

    .line 4701
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4707
    :catch_0
    move-exception v2

    .line 4708
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4689
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4690
    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 4544
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 4545
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4550
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4551
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 4552
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 4554
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 4555
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4556
    return-void

    .line 4546
    .end local v1    # "now":J
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userForeground: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    return-void
.end method

.method public preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 9
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3329
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 3330
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    .line 3332
    .local v5, "flags":I
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 3334
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot pre-create user of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-creating user of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    const/4 v3, 0x0

    const/16 v6, -0x2710

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    :try_start_0
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3342
    :catch_0
    move-exception v1

    .line 3343
    .local v1, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v1}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v2

    throw v2
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 3760
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 3761
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3762
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3763
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3764
    monitor-exit v1

    .line 3765
    return-object v0

    .line 3764
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 50
    .param p1, "id"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3071
    move-object/from16 v1, p0

    move/from16 v8, p1

    const/4 v0, 0x0

    .line 3072
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 3073
    .local v2, "userType":Ljava/lang/String;
    move/from16 v3, p1

    .line 3074
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 3075
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3076
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3077
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 3078
    .local v9, "creationTime":J
    const-wide/16 v11, 0x0

    .line 3079
    .local v11, "lastLoggedInTime":J
    const-wide/16 v13, 0x0

    .line 3080
    .local v13, "lastRequestQuietModeEnabledTimestamp":J
    const/4 v7, 0x0

    .line 3081
    .local v7, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v15, -0x2710

    .line 3082
    .local v15, "profileGroupId":I
    const/16 v16, 0x0

    .line 3083
    .local v16, "profileBadge":I
    const/16 v17, -0x2710

    .line 3084
    .local v17, "restrictedProfileParentId":I
    const/16 v18, 0x0

    .line 3085
    .local v18, "partial":Z
    const/16 v19, 0x0

    .line 3086
    .local v19, "preCreated":Z
    const/16 v20, 0x0

    .line 3087
    .local v20, "converted":Z
    const/16 v21, 0x0

    .line 3088
    .local v21, "guestToRemove":Z
    const/16 v22, 0x0

    .line 3089
    .local v22, "persistSeedData":Z
    const/16 v23, 0x0

    .line 3090
    .local v23, "seedAccountName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3091
    .local v24, "seedAccountType":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3092
    .local v25, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v26, 0x0

    .line 3093
    .local v26, "baseRestrictions":Landroid/os/Bundle;
    const/16 v27, 0x0

    .line 3094
    .local v27, "legacyLocalRestrictions":Landroid/os/Bundle;
    const/16 v28, 0x0

    .line 3095
    .local v28, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    const/16 v29, 0x0

    .line 3096
    .local v29, "globalRestrictions":Landroid/os/Bundle;
    const/16 v30, 0x1

    .line 3098
    .local v30, "ignorePrepareStorageErrors":Z
    move-wide/from16 v31, v9

    .end local v9    # "creationTime":J
    .local v31, "creationTime":J
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 3099
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v33, v11

    move-object/from16 v11, p2

    .end local v11    # "lastLoggedInTime":J
    .local v33, "lastLoggedInTime":J
    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3101
    :goto_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v12, v10

    move/from16 v35, v0

    .end local v0    # "flags":I
    .local v12, "type":I
    .local v35, "flags":I
    const/4 v0, 0x2

    if-eq v10, v0, :cond_0

    const/4 v10, 0x1

    if-eq v12, v10, :cond_0

    move/from16 v0, v35

    goto :goto_0

    .line 3106
    :cond_0
    if-eq v12, v0, :cond_1

    .line 3107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read user "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "UserManagerService"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const/4 v0, 0x0

    return-object v0

    .line 3111
    :cond_1
    if-ne v12, v0, :cond_1b

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "user"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3112
    const/4 v0, -0x1

    const-string v10, "id"

    invoke-direct {v1, v9, v10, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 3113
    .local v0, "storedId":I
    if-eq v0, v8, :cond_2

    .line 3114
    const-string v10, "UserManagerService"

    move/from16 v37, v0

    .end local v0    # "storedId":I
    .local v37, "storedId":I
    const-string v0, "User id does not match the file name"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const/4 v0, 0x0

    return-object v0

    .line 3117
    .end local v37    # "storedId":I
    .restart local v0    # "storedId":I
    :cond_2
    move/from16 v37, v0

    const/4 v0, 0x0

    .end local v0    # "storedId":I
    .restart local v37    # "storedId":I
    const-string/jumbo v10, "serialNumber"

    invoke-direct {v1, v9, v10, v8}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 3118
    const-string v10, "flags"

    const/4 v0, 0x0

    invoke-direct {v1, v9, v10, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 3119
    .end local v35    # "flags":I
    .local v10, "flags":I
    const-string/jumbo v0, "type"

    move-object/from16 v38, v2

    const/4 v2, 0x0

    .end local v2    # "userType":Ljava/lang/String;
    .local v38, "userType":Ljava/lang/String;
    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3120
    .end local v38    # "userType":Ljava/lang/String;
    .local v0, "userType":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 3121
    .end local v0    # "userType":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    :goto_1
    const-string v0, "icon"

    move-object/from16 v35, v2

    const/4 v2, 0x0

    .end local v2    # "userType":Ljava/lang/String;
    .local v35, "userType":Ljava/lang/String;
    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3122
    const-string v0, "created"

    move/from16 v39, v3

    .end local v3    # "serialNumber":I
    .local v39, "serialNumber":I
    const-wide/16 v2, 0x0

    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v31

    .line 3123
    const-string/jumbo v0, "lastLoggedIn"

    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 3124
    .end local v33    # "lastLoggedInTime":J
    .local v2, "lastLoggedInTime":J
    const-string/jumbo v0, "lastLoggedInFingerprint"

    move-wide/from16 v33, v2

    const/4 v2, 0x0

    .end local v2    # "lastLoggedInTime":J
    .restart local v33    # "lastLoggedInTime":J
    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3126
    const-string/jumbo v0, "profileGroupId"

    const/16 v2, -0x2710

    invoke-direct {v1, v9, v0, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 3128
    const-string/jumbo v0, "profileBadge"

    const/4 v3, 0x0

    invoke-direct {v1, v9, v0, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 3129
    const-string/jumbo v0, "restrictedProfileParentId"

    invoke-direct {v1, v9, v0, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 3131
    const-string/jumbo v0, "partial"

    const/4 v2, 0x0

    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3132
    .local v0, "valueString":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3133
    const/4 v2, 0x1

    move/from16 v18, v2

    .line 3135
    :cond_4
    const-string/jumbo v2, "preCreated"

    const/4 v3, 0x0

    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3136
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3137
    const/4 v2, 0x1

    move/from16 v19, v2

    .line 3139
    :cond_5
    const-string v2, "convertedFromPreCreated"

    const/4 v3, 0x0

    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3140
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3141
    const/4 v2, 0x1

    move/from16 v20, v2

    .line 3143
    :cond_6
    const-string v2, "guestToRemove"

    const/4 v3, 0x0

    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3144
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3145
    const/4 v2, 0x1

    move/from16 v21, v2

    .line 3148
    :cond_7
    const-string/jumbo v2, "seedAccountName"

    const/4 v3, 0x0

    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3149
    const-string/jumbo v2, "seedAccountType"

    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3150
    if-nez v23, :cond_8

    if-eqz v24, :cond_9

    .line 3151
    :cond_8
    const/16 v22, 0x1

    .line 3154
    :cond_9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 3155
    .local v2, "outerDepth":I
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v12, v3

    move-object/from16 v36, v0

    const/4 v0, 0x1

    .end local v0    # "valueString":Ljava/lang/String;
    .local v36, "valueString":Ljava/lang/String;
    if-eq v3, v0, :cond_1a

    const/4 v3, 0x3

    if-ne v12, v3, :cond_a

    .line 3156
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_1a

    .line 3157
    :cond_a
    if-eq v12, v3, :cond_19

    const/4 v0, 0x4

    if-ne v12, v0, :cond_b

    .line 3158
    goto/16 :goto_4

    .line 3160
    :cond_b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3161
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v0, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3162
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 3163
    .end local v12    # "type":I
    .local v0, "type":I
    const/4 v12, 0x4

    if-ne v0, v12, :cond_c

    .line 3164
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move v12, v0

    goto/16 :goto_3

    .line 3163
    :cond_c
    move v12, v0

    goto/16 :goto_3

    .line 3166
    .end local v0    # "type":I
    .restart local v12    # "type":I
    :cond_d
    const-string/jumbo v0, "restrictions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3167
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v26

    goto/16 :goto_3

    .line 3168
    :cond_e
    const-string v0, "device_policy_restrictions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3169
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v27

    goto/16 :goto_3

    .line 3170
    :cond_f
    const-string v0, "device_policy_local_restrictions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3171
    const-string v0, "device_policy_local_restrictions"

    invoke-static {v9, v0}, Lcom/android/server/pm/RestrictionsSet;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v28

    goto/16 :goto_3

    .line 3173
    :cond_10
    const-string v0, "device_policy_global_restrictions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3174
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v29

    goto :goto_3

    .line 3175
    :cond_11
    const-string v0, "account"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3176
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 3177
    .end local v12    # "type":I
    .restart local v0    # "type":I
    const/4 v12, 0x4

    if-ne v0, v12, :cond_12

    .line 3178
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move v12, v0

    goto :goto_3

    .line 3177
    :cond_12
    move v12, v0

    goto :goto_3

    .line 3180
    .end local v0    # "type":I
    .restart local v12    # "type":I
    :cond_13
    const-string/jumbo v0, "seedAccountOptions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3181
    invoke-static {v9}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v25

    .line 3182
    const/16 v22, 0x1

    goto :goto_3

    .line 3183
    :cond_14
    const-string/jumbo v0, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3184
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 3185
    .end local v12    # "type":I
    .restart local v0    # "type":I
    const/4 v12, 0x4

    if-ne v0, v12, :cond_15

    .line 3186
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move v12, v0

    goto :goto_3

    .line 3185
    :cond_15
    move v12, v0

    goto :goto_3

    .line 3188
    .end local v0    # "type":I
    .restart local v12    # "type":I
    :cond_16
    const-string v0, "ignorePrepareStorageErrors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3189
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 3190
    .end local v12    # "type":I
    .restart local v0    # "type":I
    const/4 v12, 0x4

    if-ne v0, v12, :cond_17

    .line 3191
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    move v12, v0

    goto :goto_3

    .line 3190
    :cond_17
    move v12, v0

    .line 3194
    .end local v0    # "type":I
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_18
    :goto_3
    move-object/from16 v0, v36

    goto/16 :goto_2

    .line 3155
    :cond_19
    :goto_4
    move-object/from16 v0, v36

    goto/16 :goto_2

    .line 3198
    .end local v2    # "outerDepth":I
    .end local v36    # "valueString":Ljava/lang/String;
    .end local v37    # "storedId":I
    :cond_1a
    move-wide v2, v13

    move/from16 v1, v18

    move/from16 v13, v19

    move/from16 v8, v20

    move/from16 v11, v21

    move/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v47, v29

    move-object/from16 v38, v35

    move-object/from16 v18, v5

    move-object v14, v6

    move/from16 v35, v10

    move/from16 v20, v16

    move/from16 v19, v17

    move/from16 v10, v39

    move-object/from16 v17, v9

    move/from16 v16, v12

    move v9, v15

    move-object v12, v4

    move-object v15, v7

    move-wide/from16 v6, v31

    move-wide/from16 v4, v33

    goto :goto_5

    .line 3111
    .end local v10    # "flags":I
    .end local v39    # "serialNumber":I
    .local v2, "userType":Ljava/lang/String;
    .local v3, "serialNumber":I
    .local v35, "flags":I
    :cond_1b
    move-object/from16 v38, v2

    .line 3198
    .end local v2    # "userType":Ljava/lang/String;
    .restart local v38    # "userType":Ljava/lang/String;
    move v10, v3

    move-wide v2, v13

    move/from16 v1, v18

    move/from16 v13, v19

    move/from16 v8, v20

    move/from16 v11, v21

    move/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v47, v29

    move-object/from16 v18, v5

    move-object v14, v6

    move/from16 v20, v16

    move/from16 v19, v17

    move-object/from16 v17, v9

    move/from16 v16, v12

    move v9, v15

    move-object v12, v4

    move-object v15, v7

    move-wide/from16 v6, v31

    move-wide/from16 v4, v33

    .end local v3    # "serialNumber":I
    .end local v5    # "account":Ljava/lang/String;
    .end local v7    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "guestToRemove":Z
    .end local v22    # "persistSeedData":Z
    .end local v23    # "seedAccountName":Ljava/lang/String;
    .end local v24    # "seedAccountType":Ljava/lang/String;
    .end local v25    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v26    # "baseRestrictions":Landroid/os/Bundle;
    .end local v27    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .end local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v29    # "globalRestrictions":Landroid/os/Bundle;
    .end local v31    # "creationTime":J
    .end local v33    # "lastLoggedInTime":J
    .local v1, "partial":Z
    .local v2, "lastRequestQuietModeEnabledTimestamp":J
    .local v4, "lastLoggedInTime":J
    .local v6, "creationTime":J
    .local v8, "converted":Z
    .local v9, "profileGroupId":I
    .local v10, "serialNumber":I
    .local v11, "guestToRemove":Z
    .local v12, "name":Ljava/lang/String;
    .local v13, "preCreated":Z
    .local v14, "iconPath":Ljava/lang/String;
    .local v15, "lastLoggedInFingerprint":Ljava/lang/String;
    .local v16, "type":I
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v18, "account":Ljava/lang/String;
    .local v19, "restrictedProfileParentId":I
    .local v20, "profileBadge":I
    .local v40, "persistSeedData":Z
    .local v41, "seedAccountName":Ljava/lang/String;
    .local v42, "seedAccountType":Ljava/lang/String;
    .local v43, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v44, "baseRestrictions":Landroid/os/Bundle;
    .local v45, "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v46, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v47, "globalRestrictions":Landroid/os/Bundle;
    :goto_5
    new-instance v0, Landroid/content/pm/UserInfo;

    move-wide/from16 v48, v2

    .end local v2    # "lastRequestQuietModeEnabledTimestamp":J
    .local v48, "lastRequestQuietModeEnabledTimestamp":J
    move-object v2, v0

    move/from16 v3, p1

    move/from16 v22, v8

    move/from16 v21, v9

    move-wide v8, v4

    .end local v4    # "lastLoggedInTime":J
    .end local v9    # "profileGroupId":I
    .local v8, "lastLoggedInTime":J
    .local v21, "profileGroupId":I
    .local v22, "converted":Z
    move-object v4, v12

    move-object v5, v14

    move/from16 v24, v11

    move-object/from16 v23, v12

    move-wide v11, v6

    .end local v6    # "creationTime":J
    .end local v12    # "name":Ljava/lang/String;
    .local v11, "creationTime":J
    .local v23, "name":Ljava/lang/String;
    .local v24, "guestToRemove":Z
    move/from16 v6, v35

    move-object/from16 v7, v38

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3199
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iput v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3200
    iput-wide v11, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 3201
    iput-wide v8, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3202
    iput-object v15, v2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3203
    iput-boolean v1, v2, Landroid/content/pm/UserInfo;->partial:Z

    .line 3204
    iput-boolean v13, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 3205
    move/from16 v3, v22

    .end local v22    # "converted":Z
    .local v3, "converted":Z
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 3206
    move/from16 v4, v24

    .end local v24    # "guestToRemove":Z
    .local v4, "guestToRemove":Z
    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 3207
    move/from16 v5, v21

    .end local v21    # "profileGroupId":I
    .local v5, "profileGroupId":I
    iput v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 3208
    move/from16 v6, v20

    .end local v20    # "profileBadge":I
    .local v6, "profileBadge":I
    iput v6, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 3209
    move/from16 v7, v19

    .end local v19    # "restrictedProfileParentId":I
    .local v7, "restrictedProfileParentId":I
    iput v7, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3212
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v19, v0

    .line 3213
    .local v19, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move/from16 v20, v1

    move-object/from16 v1, v19

    .end local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v20, "partial":Z
    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3214
    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .end local v18    # "account":Ljava/lang/String;
    .local v2, "account":Ljava/lang/String;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 3215
    move-object/from16 v2, v41

    .end local v41    # "seedAccountName":Ljava/lang/String;
    .local v2, "seedAccountName":Ljava/lang/String;
    .restart local v18    # "account":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3216
    move-object/from16 v21, v2

    move-object/from16 v2, v42

    .end local v42    # "seedAccountType":Ljava/lang/String;
    .local v2, "seedAccountType":Ljava/lang/String;
    .local v21, "seedAccountName":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3217
    move-object/from16 v22, v2

    move/from16 v2, v40

    .end local v40    # "persistSeedData":Z
    .local v2, "persistSeedData":Z
    .local v22, "seedAccountType":Ljava/lang/String;
    iput-boolean v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3218
    move/from16 v24, v2

    move-object/from16 v2, v43

    .end local v43    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v2, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v24, "persistSeedData":Z
    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3219
    move-object/from16 v26, v2

    move/from16 v25, v3

    move-wide/from16 v2, v48

    .end local v3    # "converted":Z
    .end local v48    # "lastRequestQuietModeEnabledTimestamp":J
    .local v2, "lastRequestQuietModeEnabledTimestamp":J
    .local v25, "converted":Z
    .local v26, "seedAccountOptions":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 3220
    if-eqz v30, :cond_1c

    .line 3221
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->setIgnorePrepareStorageErrors()V

    .line 3224
    :cond_1c
    move-wide/from16 v48, v2

    move-object/from16 v2, p0

    .end local v2    # "lastRequestQuietModeEnabledTimestamp":J
    .restart local v48    # "lastRequestQuietModeEnabledTimestamp":J
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3225
    move/from16 v27, v4

    move-object/from16 v4, v44

    .end local v44    # "baseRestrictions":Landroid/os/Bundle;
    .local v4, "baseRestrictions":Landroid/os/Bundle;
    .local v27, "guestToRemove":Z
    if-eqz v4, :cond_1d

    .line 3226
    :try_start_0
    iget-object v0, v2, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v28, v7

    move/from16 v7, p1

    .end local v7    # "restrictedProfileParentId":I
    .local v28, "restrictedProfileParentId":I
    :try_start_1
    invoke-virtual {v0, v7, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 3241
    :catchall_0
    move-exception v0

    move-object/from16 v29, v4

    move/from16 v32, v5

    move-object/from16 v4, v45

    move-object/from16 v31, v46

    move-object/from16 v5, v47

    goto/16 :goto_8

    .end local v28    # "restrictedProfileParentId":I
    .restart local v7    # "restrictedProfileParentId":I
    :catchall_1
    move-exception v0

    move/from16 v28, v7

    move/from16 v7, p1

    move-object/from16 v29, v4

    move/from16 v32, v5

    move-object/from16 v4, v45

    move-object/from16 v31, v46

    move-object/from16 v5, v47

    .end local v7    # "restrictedProfileParentId":I
    .restart local v28    # "restrictedProfileParentId":I
    goto :goto_8

    .line 3225
    .end local v28    # "restrictedProfileParentId":I
    .restart local v7    # "restrictedProfileParentId":I
    :cond_1d
    move/from16 v28, v7

    move/from16 v7, p1

    .line 3228
    .end local v7    # "restrictedProfileParentId":I
    .restart local v28    # "restrictedProfileParentId":I
    :goto_6
    move-object/from16 v29, v4

    move-object/from16 v4, v46

    .end local v46    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v4, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v29, "baseRestrictions":Landroid/os/Bundle;
    if-eqz v4, :cond_1f

    .line 3229
    :try_start_2
    iget-object v0, v2, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3230
    move-object/from16 v31, v4

    move-object/from16 v4, v45

    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v4, "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v31, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    if-eqz v4, :cond_1e

    .line 3231
    :try_start_3
    const-string v0, "UserManagerService"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v32, v5

    .end local v5    # "profileGroupId":I
    .local v32, "profileGroupId":I
    :try_start_4
    const-string v5, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3241
    .end local v32    # "profileGroupId":I
    .restart local v5    # "profileGroupId":I
    :catchall_2
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v5, v47

    .end local v5    # "profileGroupId":I
    .restart local v32    # "profileGroupId":I
    goto :goto_8

    .line 3230
    .end local v32    # "profileGroupId":I
    .restart local v5    # "profileGroupId":I
    :cond_1e
    move/from16 v32, v5

    .end local v5    # "profileGroupId":I
    .restart local v32    # "profileGroupId":I
    goto :goto_7

    .line 3241
    .end local v31    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v32    # "profileGroupId":I
    .local v4, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v5    # "profileGroupId":I
    .restart local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    :catchall_3
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v4, v45

    move-object/from16 v5, v47

    .end local v5    # "profileGroupId":I
    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v4, "legacyLocalRestrictions":Landroid/os/Bundle;
    .restart local v31    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v32    # "profileGroupId":I
    goto :goto_8

    .line 3233
    .end local v31    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v32    # "profileGroupId":I
    .local v4, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v5    # "profileGroupId":I
    .restart local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    :cond_1f
    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v4, v45

    .end local v5    # "profileGroupId":I
    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v4, "legacyLocalRestrictions":Landroid/os/Bundle;
    .restart local v31    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v32    # "profileGroupId":I
    if-eqz v4, :cond_20

    .line 3234
    iget-object v0, v2, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v5, v7, v4}, Lcom/android/server/pm/RestrictionsSet;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    .line 3241
    :catchall_4
    move-exception v0

    move-object/from16 v5, v47

    goto :goto_8

    .line 3237
    :cond_20
    :goto_7
    move-object/from16 v5, v47

    .end local v47    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_21

    .line 3238
    :try_start_5
    iget-object v0, v2, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v7, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3241
    :cond_21
    monitor-exit v3

    .line 3242
    return-object v1

    .line 3241
    :goto_8
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 4532
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 4536
    return-void
.end method

.method public removeUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 3876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3880
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3881
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3882
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    .line 3883
    .local v1, "isManagedProfile":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3884
    if-eqz v1, :cond_1

    .line 3885
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "no_remove_user"

    .line 3886
    .local v0, "restriction":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove user. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    return v2

    .line 3890
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    .line 3883
    .end local v0    # "restriction":Ljava/lang/String;
    .end local v1    # "isManagedProfile":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 3895
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3896
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3770
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3772
    monitor-exit v0

    .line 3773
    return-void

    .line 3772
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userId"    # I
    .param p4, "target"    # Landroid/content/IntentSender;
    .param p5, "flags"    # I

    .line 1008
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_1
    :goto_0
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1017
    .local v0, "dontAskCredential":Z
    :goto_1
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    move v9, v3

    .line 1019
    .local v9, "onlyIfCredentialNotRequired":Z
    if-eqz v0, :cond_5

    if-nez v9, :cond_4

    goto :goto_3

    .line 1020
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_5
    :goto_3
    nop

    .line 1024
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz p4, :cond_6

    move v7, v2

    goto :goto_4

    :cond_6
    move v7, v1

    .line 1023
    :goto_4
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V

    .line 1026
    if-eqz v9, :cond_8

    .line 1027
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    .line 1030
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1034
    :cond_8
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1036
    .local v3, "identity":J
    if-eqz p2, :cond_9

    .line 1037
    :try_start_0
    invoke-direct {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    nop

    .line 1065
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1039
    return v2

    .line 1041
    :cond_9
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1042
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 1047
    .local v5, "km":Landroid/app/KeyguardManager;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v6, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v9, :cond_b

    .line 1049
    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p3}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    .line 1052
    .end local v5    # "km":Landroid/app/KeyguardManager;
    :cond_b
    if-nez v0, :cond_c

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1053
    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1054
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_c

    move v5, v2

    goto :goto_6

    :cond_c
    move v5, v1

    .line 1055
    .local v5, "needToShowConfirmCredential":Z
    :goto_6
    if-eqz v5, :cond_e

    .line 1056
    if-eqz v9, :cond_d

    .line 1057
    nop

    .line 1065
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    return v1

    .line 1059
    :cond_d
    :try_start_2
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    nop

    .line 1065
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    return v1

    .line 1062
    :cond_e
    :try_start_3
    invoke-direct {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1063
    nop

    .line 1065
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    return v2

    .line 1065
    .end local v5    # "needToShowConfirmCredential":Z
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    throw v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 4129
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 4130
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4131
    .local v0, "validationResult":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4132
    const-string v2, "../"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4133
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "239701237"

    aput-object v5, v3, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4135
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4137
    :cond_1
    if-eqz p2, :cond_2

    .line 4138
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 4141
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4142
    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 4146
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4148
    const/4 v2, 0x1

    .local v2, "changed":Z
    goto :goto_1

    .line 4143
    .end local v2    # "changed":Z
    :cond_4
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z

    move-result v2

    .line 4150
    .restart local v2    # "changed":Z
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4152
    if-nez v2, :cond_5

    .line 4153
    return-void

    .line 4157
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4158
    .local v1, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4159
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4160
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4161
    return-void

    .line 4150
    .end local v1    # "changeIntent":Landroid/content/Intent;
    .end local v2    # "changed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1784
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1787
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1788
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1789
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1790
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1791
    monitor-exit v1

    .line 1792
    return-void

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1788
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 4603
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4604
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4607
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 4608
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_0

    .line 4609
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 4612
    :cond_0
    :try_start_3
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 4613
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 4614
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 4615
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 4616
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4617
    if-eqz p5, :cond_1

    .line 4618
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4620
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4621
    return-void

    .line 4616
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    .end local p3    # "accountType":Ljava/lang/String;
    .end local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .end local p5    # "persist":Z
    :try_start_6
    throw v2

    .line 4620
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    .restart local p3    # "accountType":Ljava/lang/String;
    .restart local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .restart local p5    # "persist":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 743
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 747
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 748
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_0

    .line 749
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 752
    :cond_0
    :try_start_3
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 753
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 754
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 755
    move-object v0, v3

    .line 757
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "currentAccount":Ljava/lang/String;
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 759
    if-eqz v0, :cond_2

    .line 760
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 762
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 763
    return-void

    .line 757
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    :try_start_6
    throw v3

    .line 762
    .restart local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public setUserAdmin(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1252
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1257
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1258
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1265
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1266
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0

    .line 1267
    return-void

    .line 1261
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 1258
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_4
    throw v2

    .line 1266
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1237
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1241
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1242
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1244
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1245
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1247
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1248
    return-void

    .line 1242
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_4
    throw v2

    .line 1247
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1681
    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1682
    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    nop

    .line 1688
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1654
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1655
    const/4 v0, 0x0

    .line 1656
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1657
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1658
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1662
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1663
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1664
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1665
    const/4 v0, 0x1

    .line 1667
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1668
    if-eqz v0, :cond_2

    .line 1669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1671
    .local v1, "ident":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1674
    goto :goto_0

    .line 1673
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1674
    throw v3

    .line 1676
    .end local v1    # "ident":J
    :cond_2
    :goto_0
    return-void

    .line 1659
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_1
    :try_start_2
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    monitor-exit v1

    return-void

    .line 1667
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 2092
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2093
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    return-void

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2099
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2100
    invoke-virtual {v1, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2099
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2101
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2103
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 2104
    .end local v1    # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 2105
    return-void

    .line 2104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4667
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4668
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4670
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4671
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4672
    .local v3, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 4673
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4674
    goto :goto_1

    .line 4676
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4677
    goto :goto_1

    .line 4679
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4670
    .end local v3    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4681
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 4682
    const/4 v0, 0x0

    return v0

    .line 4681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemReady()V
    .locals 5

    .line 662
    nop

    .line 663
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 662
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 665
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 667
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 672
    return-void

    .line 667
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method upgradeIfNecessaryLP(Landroid/os/Bundle;I)V
    .locals 11
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;
    .param p2, "userVersion"    # I

    .line 2649
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2650
    .local v0, "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2651
    .local v1, "originalVersion":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v3, :cond_1

    .line 2653
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    .line 2654
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v6, "Primary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2655
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2656
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040586

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2657
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2659
    :cond_0
    const/4 p2, 0x1

    .line 2662
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v4, 0x2

    if-ge p2, v4, :cond_3

    .line 2664
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    .line 2665
    .restart local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_2

    .line 2666
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2667
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2669
    :cond_2
    const/4 p2, 0x2

    .line 2673
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    const/4 v4, 0x4

    if-ge p2, v4, :cond_4

    .line 2674
    const/4 p2, 0x4

    .line 2677
    :cond_4
    const/4 v4, 0x5

    if-ge p2, v4, :cond_5

    .line 2678
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2679
    const/4 p2, 0x5

    .line 2682
    :cond_5
    const/4 v4, 0x6

    const/16 v5, -0x2710

    if-ge p2, v4, :cond_8

    .line 2683
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    .line 2684
    .local v4, "splitSystemUser":Z
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2685
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 2686
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2688
    .local v8, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v4, :cond_6

    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v9, v5, :cond_6

    .line 2691
    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v2, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2692
    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2685
    .end local v8    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2695
    .end local v7    # "i":I
    :cond_7
    monitor-exit v6

    .line 2696
    const/4 p2, 0x6

    goto :goto_1

    .line 2695
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2699
    .end local v4    # "splitSystemUser":Z
    :cond_8
    :goto_1
    const/4 v4, 0x7

    if-ge p2, v4, :cond_b

    .line 2701
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2702
    :try_start_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v6, v5, :cond_9

    .line 2704
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v5, v6, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2709
    :cond_9
    const-string v5, "ensure_verify_apps"

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V

    .line 2712
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2714
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2715
    .local v4, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_a

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "no_config_wifi"

    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2717
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "no_config_wifi"

    invoke-virtual {p0, v6, v3, v5}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2719
    :cond_a
    const/4 p2, 0x7

    goto :goto_2

    .line 2712
    .end local v4    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2722
    :cond_b
    :goto_2
    const/16 v3, 0x8

    if-ge p2, v3, :cond_f

    .line 2724
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2725
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2726
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2727
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2728
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2730
    :cond_c
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2734
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 2735
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v2, v5

    .line 2736
    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_d

    .line 2737
    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2738
    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2734
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2741
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "i":I
    :cond_e
    monitor-exit v3

    .line 2742
    const/16 p2, 0x8

    goto :goto_4

    .line 2741
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 2745
    :cond_f
    :goto_4
    const/16 v2, 0x9

    if-ge p2, v2, :cond_14

    .line 2747
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2748
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    :try_start_4
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 2749
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2750
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 2751
    .local v6, "flags":I
    and-int/lit16 v7, v6, 0x800

    if-eqz v7, :cond_11

    .line 2752
    and-int/lit16 v7, v6, 0x400

    if-eqz v7, :cond_10

    .line 2753
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string v8, "android.os.usertype.full.SYSTEM"

    iput-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_6

    .line 2755
    :cond_10
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string v8, "android.os.usertype.system.HEADLESS"

    iput-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    .line 2759
    :cond_11
    :try_start_5
    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v6}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2765
    nop

    .line 2769
    :goto_6
    :try_start_6
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v8, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserTypeDetails;

    .line 2770
    .local v7, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v7, :cond_12

    .line 2776
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v7}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Landroid/content/pm/UserInfo;->flags:I

    .line 2777
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2748
    nop

    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v6    # "flags":I
    .end local v7    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2771
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6    # "flags":I
    .restart local v7    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot upgrade user with flags "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " because "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isn\'t defined on this device!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "originalVersion":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .end local p2    # "userVersion":I
    throw v2

    .line 2760
    .end local v7    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v1    # "originalVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local p2    # "userVersion":I
    :catch_0
    move-exception v2

    .line 2762
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot upgrade user with flags "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "originalVersion":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .end local p2    # "userVersion":I
    throw v7

    .line 2779
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i":I
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v6    # "flags":I
    .restart local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v1    # "originalVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local p2    # "userVersion":I
    :cond_13
    monitor-exit v3

    .line 2780
    const/16 p2, 0x9

    goto :goto_7

    .line 2779
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 2783
    :cond_14
    :goto_7
    if-ge p2, v2, :cond_15

    .line 2784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2787
    :cond_15
    iput p2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2789
    if-ge v1, p2, :cond_18

    .line 2790
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2791
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    .line 2792
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v4, :cond_16

    .line 2793
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2795
    .end local v3    # "userId":I
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_16
    goto :goto_8

    .line 2796
    :cond_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2799
    :cond_18
    :goto_9
    return-void
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2895
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2896
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2897
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2898
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2900
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2901
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2902
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2903
    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "serialNumber"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2904
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "flags"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2905
    iget-object v2, v1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2906
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "created"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2907
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2908
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2907
    const-string/jumbo v4, "lastLoggedIn"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2909
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2910
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "lastLoggedInFingerprint"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2913
    :cond_0
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2914
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v4, "icon"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2916
    :cond_1
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 2917
    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2919
    :cond_2
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_3

    .line 2920
    const-string/jumbo v2, "preCreated"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2922
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v2, :cond_4

    .line 2923
    const-string v2, "convertedFromPreCreated"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2925
    :cond_4
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_5

    .line 2926
    const-string v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2928
    :cond_5
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_6

    .line 2929
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2930
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2929
    const-string/jumbo v5, "profileGroupId"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2932
    :cond_6
    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2933
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2932
    const-string/jumbo v5, "profileBadge"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2934
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_7

    .line 2935
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2936
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2935
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2939
    :cond_7
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_9

    .line 2940
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2941
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountName"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    :cond_8
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 2944
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2947
    :cond_9
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2948
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2949
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2950
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2952
    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2953
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2954
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "restrictions"

    .line 2953
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2955
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    const-string v5, "device_policy_local_restrictions"

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/RestrictionsSet;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 2957
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2958
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "device_policy_global_restrictions"

    .line 2957
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2960
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2962
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2963
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2964
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2965
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2968
    :cond_b
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_c

    .line 2969
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2970
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2971
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2974
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_d

    .line 2975
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2977
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2980
    :cond_d
    const-string v2, "ignorePrepareStorageErrors"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2981
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2982
    const-string v2, "ignorePrepareStorageErrors"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2984
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2986
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2987
    return-void

    .line 2960
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
