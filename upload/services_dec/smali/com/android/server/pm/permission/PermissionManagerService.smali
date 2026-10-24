.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;,
        Lcom/android/server/pm/permission/PermissionManagerService$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

.field private mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

.field private mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

.field private mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 192
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 218
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V

    .line 386
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;
    .param p3, "injector"    # Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 390
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 262
    nop

    .line 263
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 295
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 391
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 393
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->invalidatePackageInfoCache()V

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePermissionCache()V

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePackageNamePermissionCache()V

    .line 397
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 398
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 399
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 400
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 401
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 402
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 404
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 406
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 407
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 408
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 410
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 411
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 412
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 413
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 414
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 415
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    .line 419
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 420
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 421
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 422
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 423
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 424
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_0

    .line 425
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v3}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 426
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 428
    :cond_0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_1

    .line 429
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 421
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 432
    .end local v4    # "i":I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 436
    .local v2, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 437
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 438
    return-void

    .line 432
    .end local v2    # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfPermissionDefinitionChanged(Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 180
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;IIZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 180
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 180
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeStoragePermissionsIfScopeExpanded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 2560
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2561
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2562
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2563
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 2564
    .local v3, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 2565
    .local v4, "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2566
    .local v5, "curPackageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2567
    .local v6, "isPackageUpdate":Z
    if-eqz v4, :cond_2

    if-eqz v6, :cond_1

    goto :goto_2

    .line 2581
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2581
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    goto :goto_3

    .line 2568
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    nop

    .line 2562
    .end local v3    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2595
    .end local v2    # "i":I
    :cond_3
    nop

    .line 2599
    return-void
.end method

.method private addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2514
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2515
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2516
    .local v1, "definitionChangedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2517
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2520
    .local v3, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v4

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2522
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2527
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x16

    if-le v4, v5, :cond_0

    .line 2528
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2538
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2539
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2541
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2542
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v8

    .line 2539
    move-object v6, v3

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 2543
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    goto :goto_1

    .line 2545
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2547
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2548
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v8

    .line 2545
    move-object v6, v3

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 2549
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 2551
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isPermissionDefinitionChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2552
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    monitor-exit v10

    .line 2516
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2554
    .restart local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2556
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_3
    return-object v1
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2209
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    monitor-exit v0

    .line 2212
    return-void

    .line 2211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .locals 5
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2246
    and-int/lit8 v0, p1, 0x3

    .line 2250
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2251
    return p1

    .line 2254
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2255
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 2260
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 2261
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_2

    .line 2262
    return p1

    .line 2264
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    .line 2265
    return v0

    .line 2268
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2269
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2268
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 2270
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_4

    .line 2271
    return p1

    .line 2273
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 2274
    return p1

    .line 2276
    :cond_5
    return p1

    .line 2257
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_0
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2146
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2147
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2148
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2147
    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2151
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2152
    :catch_0
    move-exception v1

    .line 2153
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2154
    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z
    .param p2, "isSameProfileGroup"    # Z

    .line 4710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4711
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 4712
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4715
    :cond_0
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4717
    const-string v1, "."

    if-eqz p1, :cond_1

    .line 4718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4721
    :cond_1
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4722
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4723
    if-eqz p2, :cond_2

    .line 4724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4727
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z

    .line 4691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4692
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 4693
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    :cond_0
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4697
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    const-string v1, "."

    if-eqz p1, :cond_1

    .line 4699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4702
    :cond_1
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4703
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cacheBackgroundToForegoundPermissionMapping()V
    .locals 7

    .line 4234
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 4238
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 4239
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 4240
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4241
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 4242
    .local v3, "fgPerm":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v4

    .line 4244
    .local v4, "bgPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4245
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 4246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 4247
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4250
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4252
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "fgPerm":Ljava/lang/String;
    .end local v4    # "bgPerm":Ljava/lang/String;
    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 4254
    :cond_2
    monitor-exit v0

    .line 4255
    return-void

    .line 4254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 4
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4733
    const/4 v0, 0x0

    .line 4734
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 4735
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4736
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 4737
    :cond_0
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3882
    return v1

    .line 3886
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3887
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 3891
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3888
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 1365
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1366
    return v0

    .line 1369
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v0, v2

    .line 1372
    .local v0, "isCallerPrivileged":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1373
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1375
    .local v1, "isCallerInstallerOnRecord":Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1376
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1380
    :cond_3
    :goto_0
    return v2
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 1213
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v1, :cond_0

    .line 1214
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1217
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1218
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1221
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot modify whitelisting of an immutably restricted permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    throw v2

    .line 1224
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1225
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "updatedUserIds"    # [I

    .line 3384
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3385
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3386
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3387
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    return-object v0

    .line 3390
    :cond_1
    return-object p3
.end method

.method private checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 910
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 911
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 912
    const/4 v1, -0x1

    return v1

    .line 914
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 919
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 920
    .local v0, "callingUid":I
    const/4 v1, -0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 926
    return v1

    .line 921
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 922
    return v1

    .line 930
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 931
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 932
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 933
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3

    .line 934
    return v1

    .line 936
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 938
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-direct {p0, v2, v4, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 939
    return v6

    .line 942
    :cond_4
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 943
    .local v5, "fullerPermissionName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 944
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 945
    return v6

    .line 948
    :cond_5
    return v1
.end method

.method private checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 953
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    const/4 v0, 0x0

    return v0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 961
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkSingleUidPermissionInternal(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1021
    .local v1, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1022
    .end local v1    # "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkUidPermissionImpl(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 987
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 988
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1000
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1001
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1002
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1005
    .end local v1    # "userId":I
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    return v0

    .line 1009
    :cond_1
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1010
    .local v1, "fullerPermissionName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1011
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1012
    return v0

    .line 1015
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalLock"    # Ljava/lang/Object;

    .line 460
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 461
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 462
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_0

    .line 463
    return-object v0

    .line 465
    :cond_0
    nop

    .line 466
    const-string/jumbo v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 467
    .local v2, "permissionService":Lcom/android/server/pm/permission/PermissionManagerService;
    if-nez v2, :cond_1

    .line 468
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object v2, v3

    .line 470
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    :cond_1
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2231
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2233
    monitor-exit v0

    return-void

    .line 2235
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2236
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2238
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2241
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 2236
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4631
    if-ltz p2, :cond_3

    .line 4634
    if-eqz p4, :cond_0

    .line 4635
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 4638
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4639
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4641
    return-void

    .line 4643
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isSameProfileGroup(II)Z

    move-result v1

    .line 4644
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4649
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4644
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v2, v5, v3, p1, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4651
    return-void

    .line 4653
    :cond_2
    invoke-static {p5, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 4655
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4632
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 4595
    if-ltz p2, :cond_2

    .line 4598
    if-eqz p4, :cond_0

    .line 4599
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 4602
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4603
    .local v0, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4606
    return-void

    .line 4608
    :cond_1
    invoke-static {p6, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4610
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4596
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 4573
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4575
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4577
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4579
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4584
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4562
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4564
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4566
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4570
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4744
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4745
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 4746
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4747
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4750
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private getAllUserIds()[I
    .locals 1

    .line 3257
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 512
    return-object v1

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 516
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 517
    monitor-exit v0

    return-object v1

    .line 519
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 520
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .locals 6
    .param p1, "userId"    # I

    .line 3490
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 3492
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 3493
    .local v1, "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    if-eqz v1, :cond_0

    .line 3494
    monitor-exit v0

    return-object v1

    .line 3496
    :cond_0
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 3497
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 3498
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3500
    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    .line 3501
    return-object v1

    .line 3499
    .end local v1    # "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .locals 3
    .param p1, "autoRevokePolicy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3548
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3552
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 3557
    return-object v0
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 665
    return v1

    .line 668
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 669
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 676
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 677
    return v1

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 680
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 681
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    .line 682
    return v1

    .line 684
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 685
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    if-nez v4, :cond_3

    .line 686
    monitor-exit v3

    return v1

    .line 688
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 690
    return v1

    .line 692
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 693
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 688
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 3866
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 3867
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 3857
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 3858
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 3859
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v1

    .line 3861
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4830
    if-nez p0, :cond_0

    .line 4831
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 4833
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4834
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4835
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 4837
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4840
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3924
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v8, p2, v1

    .line 3925
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3924
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3928
    :cond_0
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 22
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3932
    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3933
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3932
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 3934
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_0

    .line 3935
    return-void

    .line 3938
    :cond_0
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 3940
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 3943
    .local v15, "immutableFlags":I
    const/16 v16, 0x48

    .line 3946
    .local v16, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 3949
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 3951
    .local v18, "instantApp":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 3953
    .local v9, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3954
    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    .line 3955
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3956
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    if-eqz v18, :cond_3

    .line 3957
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    if-nez v17, :cond_4

    .line 3958
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_4
    if-eqz v12, :cond_5

    .line 3960
    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3961
    :cond_5
    invoke-virtual {v14, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    .line 3962
    .local v20, "flags":I
    if-eqz v17, :cond_6

    .line 3964
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_9

    .line 3965
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 3971
    :cond_6
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_7

    .line 3972
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .local v21, "permission":Ljava/lang/String;
    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 3971
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    goto :goto_2

    .line 3956
    .end local v20    # "flags":I
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v9

    .line 3977
    .end local v9    # "permission":Ljava/lang/String;
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_9
    :goto_2
    goto :goto_1

    .line 3955
    .restart local v9    # "permission":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 3978
    .end local v21    # "permission":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 16
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1426
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return-void

    .line 1431
    :cond_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1441
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1442
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1444
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_17

    if-nez v2, :cond_1

    move/from16 v5, p4

    goto/16 :goto_3

    .line 1449
    :cond_1
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1450
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v4, v0

    .line 1451
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1452
    if-eqz v4, :cond_16

    .line 1455
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v5, p4

    invoke-virtual {v0, v1, v5, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1459
    invoke-virtual {v4, v1, v2}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1465
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    .line 1466
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    return-void

    .line 1470
    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1472
    .local v6, "uid":I
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1474
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 1475
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_3

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant system fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return-void

    .line 1480
    :cond_3
    if-nez p3, :cond_4

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_4

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void

    .line 1486
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_5

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "PackageManager"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 1494
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1493
    invoke-static {v0, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void

    .line 1501
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_8

    .line 1504
    invoke-virtual {v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_7

    .line 1506
    if-eqz v12, :cond_7

    .line 1507
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1510
    :cond_7
    return-void

    .line 1513
    :cond_8
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1514
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :cond_a
    :goto_0
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v3, :cond_b

    .line 1519
    const-string v0, "PackageManager"

    const-string v3, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void

    .line 1523
    :cond_b
    invoke-virtual {v7, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    .line 1524
    .local v3, "result":I
    if-eq v3, v14, :cond_14

    const/4 v0, 0x1

    if-eq v3, v0, :cond_c

    goto :goto_1

    .line 1530
    :cond_c
    if-eqz v12, :cond_d

    .line 1531
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1537
    :cond_d
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1538
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_e
    if-eqz v12, :cond_f

    .line 1542
    invoke-virtual {v12, v6, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1545
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1546
    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1552
    :cond_10
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1553
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1554
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1556
    .local v14, "token":J
    :try_start_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1557
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1559
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v6, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_12
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    nop

    .line 1566
    .end local v14    # "token":J
    :cond_13
    return-void

    .line 1562
    .restart local v14    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw v0

    .line 1526
    .end local v14    # "token":J
    :cond_14
    return-void

    .line 1456
    .end local v3    # "result":I
    .end local v6    # "uid":I
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_16
    move/from16 v5, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_1
    move-exception v0

    move/from16 v5, p4

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1444
    :cond_17
    move/from16 v5, p4

    .line 1445
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .locals 18
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p5, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 3605
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v2

    .line 3606
    .local v2, "oemPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v3

    .line 3607
    .local v3, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    .line 3608
    .local v4, "privilegedPermission":Z
    :goto_1
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 3610
    .local v7, "privappPermissionsDisable":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 3611
    .local v8, "platformPermission":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3612
    .local v9, "platformPackage":Z
    const-string v10, "PackageManager"

    if-nez v7, :cond_f

    if-eqz v4, :cond_f

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_f

    if-nez v9, :cond_f

    if-eqz v8, :cond_f

    .line 3614
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 3616
    iget-boolean v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v11, :cond_d

    .line 3618
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v11

    if-nez v11, :cond_c

    .line 3619
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v11

    .line 3620
    .local v11, "apexMgr":Lcom/android/server/pm/ApexManager;
    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    .line 3624
    .local v13, "apexContainingPkg":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 3625
    invoke-virtual {v11, v13, v5}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 3624
    invoke-static {v14}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v17, v7

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 3628
    :cond_3
    :goto_2
    const/4 v14, 0x0

    .line 3629
    .local v14, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3630
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v15

    .line 3631
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3632
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3633
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 3634
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3635
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3636
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 3637
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3639
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 3640
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .line 3642
    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3
    if-eqz v5, :cond_8

    .line 3643
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v14, 0x1

    .line 3644
    .local v14, "permissionViolation":Z
    :goto_5
    if-eqz v14, :cond_b

    .line 3645
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Privileged permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") not in privapp-permissions whitelist"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3645
    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v5, :cond_a

    .line 3650
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v5, :cond_9

    .line 3651
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 3653
    :cond_9
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3654
    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .local v17, "privappPermissionsDisable":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3653
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_6

    .line 3649
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_a
    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    const/4 v5, 0x0

    goto :goto_6

    .line 3658
    .end local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_b
    move-object/from16 v16, v5

    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    return v5

    .line 3618
    .end local v11    # "apexMgr":Lcom/android/server/pm/ApexManager;
    .end local v13    # "apexContainingPkg":Ljava/lang/String;
    .end local v14    # "permissionViolation":Z
    .end local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v12, p2

    move/from16 v17, v7

    const/4 v5, 0x0

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    goto :goto_6

    .line 3616
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_d
    move-object/from16 v12, p2

    move/from16 v17, v7

    const/4 v5, 0x0

    .line 3662
    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    :goto_6
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_10

    .line 3663
    return v5

    .line 3614
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_e
    move-object/from16 v12, p2

    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    goto :goto_7

    .line 3612
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_f
    move-object/from16 v12, p2

    move/from16 v17, v7

    .line 3668
    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    :cond_10
    :goto_7
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3670
    .local v5, "systemPackageName":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3671
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 3680
    .local v6, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 3681
    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v11

    .line 3682
    .local v11, "sourceSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 3683
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 3685
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    .line 3684
    const/4 v14, 0x4

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_12

    .line 3687
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 3688
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    .line 3689
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    .line 3688
    invoke-virtual {v13, v15, v14}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v13, 0x1

    .line 3691
    .local v13, "allowed":Z
    :goto_9
    if-nez v13, :cond_22

    if-nez v4, :cond_14

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move-object/from16 v16, v5

    goto/16 :goto_f

    .line 3692
    :cond_14
    :goto_a
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 3695
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 3696
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3697
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    .line 3698
    .local v14, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_15

    const/4 v15, 0x0

    goto :goto_b

    :cond_15
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3699
    .local v15, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_b
    if-eqz v14, :cond_18

    .line 3700
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .local v16, "systemPackageName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3704
    if-eqz v4, :cond_16

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    if-eqz v2, :cond_1c

    .line 3705
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3706
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3707
    :cond_17
    const/4 v13, 0x1

    goto :goto_c

    .line 3699
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_18
    move-object/from16 v16, v5

    .line 3716
    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    :cond_19
    if-eqz v14, :cond_1c

    if-eqz v15, :cond_1c

    .line 3717
    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eqz v4, :cond_1a

    .line 3718
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_1a
    if-eqz v2, :cond_1c

    .line 3719
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3720
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3721
    :cond_1b
    const/4 v13, 0x1

    .line 3724
    .end local v14    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1c
    :goto_c
    goto :goto_e

    .line 3725
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_1d
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3726
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3725
    invoke-virtual {v5, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 3727
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_1e

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_1f

    :cond_1e
    if-eqz v2, :cond_20

    .line 3728
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 3729
    invoke-static {v5, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    :cond_1f
    const/4 v14, 0x1

    goto :goto_d

    :cond_20
    const/4 v14, 0x0

    :goto_d
    move v13, v14

    .line 3734
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_e
    if-eqz v13, :cond_23

    if-eqz v4, :cond_23

    if-nez v3, :cond_23

    .line 3735
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cannot be granted to privileged vendor apk "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3736
    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const/4 v13, 0x0

    goto :goto_f

    .line 3692
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .local v5, "systemPackageName":Ljava/lang/String;
    :cond_21
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    goto :goto_f

    .line 3691
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_22
    move-object/from16 v16, v5

    .line 3743
    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    :cond_23
    :goto_f
    if-nez v13, :cond_33

    .line 3744
    if-nez v13, :cond_24

    .line 3745
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3746
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v10, 0x17

    if-ge v5, v10, :cond_24

    .line 3750
    const/4 v13, 0x1

    .line 3755
    :cond_24
    if-nez v13, :cond_25

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x2

    .line 3756
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3758
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3756
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    :cond_25
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x6

    .line 3759
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3761
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3758
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3764
    :cond_26
    const/4 v13, 0x1

    .line 3766
    :cond_27
    if-nez v13, :cond_28

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x3

    .line 3767
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3769
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3767
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 3772
    const/4 v13, 0x1

    .line 3774
    :cond_28
    if-nez v13, :cond_29

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3775
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3777
    const/4 v13, 0x1

    .line 3779
    :cond_29
    if-nez v13, :cond_2a

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3782
    move-object/from16 v5, p5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_10

    .line 3779
    :cond_2a
    move-object/from16 v5, p5

    .line 3784
    :goto_10
    if-nez v13, :cond_2b

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v10

    if-eqz v10, :cond_2b

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3785
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3787
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3785
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 3790
    const/4 v13, 0x1

    .line 3792
    :cond_2b
    if-nez v13, :cond_2c

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    .line 3793
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3795
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3793
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 3797
    const/4 v13, 0x1

    .line 3799
    :cond_2c
    if-nez v13, :cond_2d

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x9

    .line 3800
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3802
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3800
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 3804
    const/4 v13, 0x1

    .line 3806
    :cond_2d
    if-nez v13, :cond_2e

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x7

    .line 3807
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3809
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3807
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 3811
    const/4 v13, 0x1

    .line 3813
    :cond_2e
    if-nez v13, :cond_2f

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v10

    if-eqz v10, :cond_2f

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x8

    .line 3814
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3816
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3814
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 3819
    const/4 v13, 0x1

    .line 3821
    :cond_2f
    if-nez v13, :cond_30

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v10

    if-eqz v10, :cond_30

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xa

    .line 3822
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3824
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3822
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 3827
    const/4 v13, 0x1

    .line 3829
    :cond_30
    if-nez v13, :cond_31

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v10

    if-eqz v10, :cond_31

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xb

    .line 3830
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3832
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3830
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 3834
    const/4 v13, 0x1

    .line 3836
    :cond_31
    if-nez v13, :cond_32

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isCompanion()Z

    move-result v10

    if-eqz v10, :cond_32

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xe

    .line 3837
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3839
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3837
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 3841
    const/4 v10, 0x1

    move v13, v10

    .line 3843
    :cond_32
    if-nez v13, :cond_34

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isRetailDemo()Z

    move-result v10

    if-eqz v10, :cond_34

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xf

    .line 3844
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 3846
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3844
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 3846
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/pm/permission/PermissionManagerService;->isProfileOwner(I)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 3848
    const/4 v13, 0x1

    goto :goto_11

    .line 3743
    :cond_33
    move-object/from16 v5, p5

    .line 3851
    :cond_34
    :goto_11
    return v13
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 4662
    const/4 v0, 0x1

    if-nez p5, :cond_0

    if-ne p3, p2, :cond_0

    .line 4663
    return v0

    .line 4665
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 4668
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    .line 4669
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4671
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4672
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 4671
    :goto_1
    return v0

    .line 4666
    :cond_5
    :goto_2
    return v0
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 4845
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4846
    return v1

    .line 4849
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4850
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4851
    return v2

    .line 4849
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4854
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4676
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3586
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3588
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3589
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3591
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3592
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3594
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3595
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3594
    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3597
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 3600
    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 7
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I)V"
        }
    .end annotation

    .line 3336
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3337
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3338
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 3340
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3341
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 3342
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3343
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3344
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 3352
    :cond_0
    if-nez v1, :cond_3

    .line 3353
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2

    .line 3345
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3346
    const/4 v2, 0x0

    .line 3349
    :cond_2
    const/4 v1, 0x1

    .line 3350
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    .line 3341
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3358
    .end local v4    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 3364
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 3368
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3369
    return-void
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3561
    const/4 v0, 0x0

    .line 3562
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 3563
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3564
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 3566
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3567
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    .line 3568
    const/4 v0, 0x1

    .line 3569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3569
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    goto :goto_1

    .line 3563
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3574
    .end local v2    # "ip":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;

    .line 3912
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3913
    .local v0, "permCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3914
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3915
    .local v2, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3916
    const/4 v3, 0x1

    return v3

    .line 3913
    .end local v2    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3919
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 3897
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 3898
    return v1

    .line 3902
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3903
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3902
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 3904
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 3905
    return v1

    .line 3907
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 3908
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method private static isProfileOwner(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 3871
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3872
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3873
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 3874
    const/4 v1, -0x1

    .line 3875
    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    .line 3874
    return v1

    .line 3877
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSameProfileGroup(II)Z
    .locals 3
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 4681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4683
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4683
    return v2

    .line 4685
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4686
    throw v2
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 4
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    .line 488
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v3

    .line 494
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$eApyRxwI3JHTSVAxV9EbP43gFOo(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$10(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p0, "autoRevokePolicy"    # I
    .param p1, "result"    # Ljava/util/List;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3553
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 3554
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3556
    :cond_0
    return-void
.end method

.method public static synthetic lambda$iwnRBDwjg4K5iRGbRU5_sVt0zaU(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$2(II)V
    .locals 2
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1881
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4865
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4866
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 4867
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4869
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4870
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2223
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 2225
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2224
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2223
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2226
    return-void
.end method

.method private removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 2602
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2603
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2604
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2605
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2606
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2607
    .local v4, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 2608
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_0

    .line 2609
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    .line 2611
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2612
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/parsing/component/ParsedPermission;)V

    .line 2622
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2623
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 2624
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 2625
    .local v6, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 2626
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2605
    .end local v4    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2630
    .end local v3    # "i":I
    :cond_3
    nop

    .line 2634
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 2635
    const/4 v2, 0x0

    .line 2636
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 2637
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2638
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2639
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2640
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 2641
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2642
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2643
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2636
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2648
    .end local v3    # "i":I
    :cond_5
    nop

    .line 2651
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 2652
    return-void

    .line 2651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2216
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2218
    monitor-exit v0

    .line 2219
    return-void

    .line 2218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 27
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1712
    move-object/from16 v15, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1715
    .local v12, "packageName":Ljava/lang/String;
    const v16, 0x1004b

    .line 1721
    .local v16, "userSettableMask":I
    const/16 v17, 0x14

    .line 1725
    .local v17, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    .line 1726
    .local v11, "permissionCount":I
    const/4 v0, 0x1

    new-array v10, v0, [Z

    .line 1727
    .local v10, "permissionRemoved":[Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v1

    .line 1728
    .local v9, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1729
    .local v4, "syncUpdatedUsers":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1731
    .local v5, "asyncUpdatedUsers":Landroid/util/IntArray;
    new-instance v14, Lcom/android/server/pm/permission/PermissionManagerService$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    .line 1791
    .local v14, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_c

    .line 1792
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1794
    .local v3, "permName":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1795
    :try_start_0
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    move-object/from16 v18, v7

    .line 1796
    .local v18, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    if-nez v18, :cond_0

    .line 1798
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1801
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1802
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1806
    :cond_1
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1807
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1806
    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1808
    .local v8, "pkgNames":[Ljava/lang/String;
    array-length v6, v8

    if-lez v6, :cond_5

    .line 1809
    const/4 v6, 0x0

    .line 1810
    .local v6, "used":Z
    array-length v7, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_4

    aget-object v2, v8, v0

    .line 1811
    .local v2, "sharedPkgName":Ljava/lang/String;
    move/from16 v20, v6

    .end local v6    # "used":Z
    .local v20, "used":Z
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1812
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1813
    .local v6, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_2

    move-object/from16 v21, v2

    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .local v21, "sharedPkgName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1814
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1815
    const/4 v0, 0x1

    .line 1816
    .end local v20    # "used":Z
    .local v0, "used":Z
    move v6, v0

    goto :goto_2

    .line 1813
    .end local v0    # "used":Z
    .end local v21    # "sharedPkgName":Ljava/lang/String;
    .restart local v2    # "sharedPkgName":Ljava/lang/String;
    .restart local v20    # "used":Z
    :cond_2
    move-object/from16 v21, v2

    .line 1810
    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .end local v6    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    goto :goto_1

    .end local v20    # "used":Z
    .local v6, "used":Z
    :cond_4
    move/from16 v20, v6

    .line 1819
    :goto_2
    if-eqz v6, :cond_5

    .line 1820
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1824
    .end local v6    # "used":Z
    :cond_5
    const/16 v0, 0x3e8

    .line 1825
    invoke-direct {v15, v3, v12, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1830
    .local v0, "oldFlags":I
    iget-object v2, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1831
    .local v2, "uid":I
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    .line 1832
    .local v7, "targetSdk":I
    const/16 v6, 0x17

    if-ge v7, v6, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1833
    const/16 v6, 0x48

    move/from16 v19, v6

    goto :goto_3

    .line 1834
    :cond_6
    const/16 v19, 0x0

    :goto_3
    nop

    .line 1836
    .local v19, "flags":I
    const v20, 0x1004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v6, p0

    move/from16 v23, v7

    .end local v7    # "targetSdk":I
    .local v23, "targetSdk":I
    move-object v7, v3

    move-object/from16 v24, v8

    .end local v8    # "pkgNames":[Ljava/lang/String;
    .local v24, "pkgNames":[Ljava/lang/String;
    move-object v8, v12

    move-object/from16 v25, v9

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v25, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "permissionRemoved":[Z
    .local v20, "permissionRemoved":[Z
    move/from16 v10, v19

    move/from16 v26, v11

    .end local v11    # "permissionCount":I
    .local v26, "permissionCount":I
    move/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move/from16 v12, p2

    move/from16 v13, v22

    invoke-direct/range {v6 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1841
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1842
    goto :goto_5

    .line 1846
    :cond_7
    and-int/lit8 v6, v0, 0x14

    if-eqz v6, :cond_8

    .line 1847
    goto :goto_5

    .line 1851
    :cond_8
    and-int/lit8 v6, v0, 0x20

    if-nez v6, :cond_a

    const v6, 0x8000

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    goto :goto_4

    .line 1858
    :cond_9
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_b

    .line 1860
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v13, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_5

    .line 1854
    :cond_a
    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1791
    .end local v0    # "oldFlags":I
    .end local v2    # "uid":I
    .end local v3    # "permName":Ljava/lang/String;
    .end local v18    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v19    # "flags":I
    .end local v23    # "targetSdk":I
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1796
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v3    # "permName":Ljava/lang/String;
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    :goto_6
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 1791
    .end local v3    # "permName":Ljava/lang/String;
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .line 1866
    .end local v1    # "i":I
    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    const/4 v0, 0x0

    aget-boolean v1, v20, v0

    if-eqz v1, :cond_d

    .line 1867
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 1872
    :cond_d
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1873
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1874
    .local v0, "numRevokedPermissions":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_e

    .line 1875
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1876
    .local v3, "revocationUID":I
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 1878
    .local v6, "revocationUserId":I
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1881
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1874
    .end local v3    # "revocationUID":I
    .end local v6    # "revocationUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_e
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto :goto_8

    .line 1872
    .end local v0    # "numRevokedPermissions":I
    .end local v1    # "i":I
    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_f
    move-object/from16 v2, v25

    .line 1886
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_8
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1887
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1888
    return-void
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2186
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2188
    monitor-exit v0

    return-void

    .line 2190
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-nez v1, :cond_1

    .line 2191
    monitor-exit v0

    return-void

    .line 2194
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2195
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 2194
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2204
    monitor-exit v0

    .line 2205
    return-void

    .line 2204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 37
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2683
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2684
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2683
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 2685
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_0

    .line 2686
    return-void

    .line 2689
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 2691
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v14

    .line 2693
    .local v14, "userIds":[I
    const/4 v1, 0x0

    .line 2694
    .local v1, "runtimePermissionsRevoked":Z
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 2696
    .local v0, "updatedUserIds":[I
    array-length v2, v14

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_0
    if-ge v0, v2, :cond_9

    aget v4, v14, v0

    .line 2697
    .local v4, "userId":I
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->isMissing(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2700
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2701
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    .line 2702
    .local v5, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v16

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v2

    .local v16, "targetSdkVersion":I
    goto :goto_2

    .line 2704
    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v16    # "targetSdkVersion":I
    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2705
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v16, 0x2710

    .line 2706
    .restart local v16    # "targetSdkVersion":I
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v15

    .line 2707
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 2708
    .local v6, "packagesSize":I
    const/16 v18, 0x0

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v2

    move/from16 v2, v18

    .end local v16    # "targetSdkVersion":I
    .local v1, "targetSdkVersion":I
    .local v2, "i":I
    .local v19, "runtimePermissionsRevoked":Z
    :goto_1
    if-ge v2, v6, :cond_2

    .line 2709
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2710
    .local v18, "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move/from16 v20, v6

    .end local v6    # "packagesSize":I
    .local v20, "packagesSize":I
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2711
    nop

    .line 2712
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    .line 2711
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2708
    .end local v18    # "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v20

    goto :goto_1

    .end local v20    # "packagesSize":I
    .restart local v6    # "packagesSize":I
    :cond_2
    move/from16 v20, v6

    .line 2716
    .end local v2    # "i":I
    .end local v6    # "packagesSize":I
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2717
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 2718
    .local v15, "permission":Lcom/android/server/pm/permission/BasePermission;
    if-nez v15, :cond_3

    .line 2719
    goto :goto_3

    .line 2721
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v20, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "android"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2722
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2723
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2724
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2725
    :cond_4
    const/16 v2, 0x2000

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2729
    :cond_5
    const/16 v2, 0x17

    if-ge v1, v2, :cond_6

    .line 2730
    const/16 v2, 0x48

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2735
    invoke-virtual {v13, v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2738
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v15    # "permission":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    move-object/from16 v2, v18

    move-object/from16 v5, v20

    goto :goto_3

    .line 2740
    .end local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v4}, Lcom/android/server/pm/permission/PermissionsState;->setMissing(ZI)V

    .line 2741
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    move-object v3, v2

    .end local v3    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    goto :goto_4

    .line 2697
    .end local v2    # "updatedUserIds":[I
    .end local v19    # "runtimePermissionsRevoked":Z
    .end local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v1, "runtimePermissionsRevoked":Z
    .restart local v3    # "updatedUserIds":[I
    :cond_8
    move/from16 v19, v1

    move/from16 v16, v2

    .line 2696
    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "userId":I
    .restart local v19    # "runtimePermissionsRevoked":Z
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    move/from16 v1, v19

    goto/16 :goto_0

    .line 2745
    .end local v19    # "runtimePermissionsRevoked":Z
    .restart local v1    # "runtimePermissionsRevoked":Z
    :cond_9
    move/from16 v19, v1

    .end local v1    # "runtimePermissionsRevoked":Z
    .restart local v19    # "runtimePermissionsRevoked":Z
    move-object v1, v13

    .line 2747
    .local v1, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    .line 2749
    .local v2, "changedInstallPermission":Z
    if-eqz v9, :cond_c

    .line 2750
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 2751
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2752
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v0

    .line 2753
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v6, v1

    move/from16 v15, v19

    goto :goto_5

    .line 2760
    :cond_a
    iget-object v4, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2761
    nop

    .line 2762
    :try_start_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 2761
    invoke-direct {v7, v0, v14}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v3, v0

    .line 2763
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2764
    const/4 v0, 0x1

    move/from16 v19, v0

    .line 2766
    :cond_b
    monitor-exit v4

    move-object v6, v1

    move/from16 v15, v19

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2749
    :cond_c
    move-object v6, v1

    move/from16 v15, v19

    .line 2770
    .end local v1    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v19    # "runtimePermissionsRevoked":Z
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "runtimePermissionsRevoked":Z
    :goto_5
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 2772
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2773
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2775
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_18

    move v4, v1

    .line 2776
    .local v4, "N":I
    const/4 v1, 0x0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v1

    .local v2, "updatedUserIds":[I
    .local v3, "i":I
    .local v16, "changedInstallPermission":Z
    :goto_6
    if-ge v3, v4, :cond_5d

    .line 2777
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 2778
    .local v1, "permName":Ljava/lang/String;
    move-object/from16 v19, v2

    .end local v2    # "updatedUserIds":[I
    .local v19, "updatedUserIds":[I
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    .line 2779
    .local v21, "friendlyName":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object v3, v2

    .line 2780
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    nop

    .line 2781
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    move/from16 v22, v15

    const/16 v15, 0x17

    .end local v15    # "runtimePermissionsRevoked":Z
    .local v22, "runtimePermissionsRevoked":Z
    if-lt v2, v15, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    move/from16 v17, v2

    .line 2782
    .local v17, "appSupportsRuntimePermissions":Z
    const/4 v2, 0x0

    .line 2788
    .local v2, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    if-eqz v3, :cond_5b

    :try_start_4
    invoke-direct {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v23

    if-nez v23, :cond_e

    move-object/from16 v18, v1

    move-object/from16 v24, v2

    move-object v8, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-object v5, v6

    move-object/from16 v27, v12

    move/from16 v23, v15

    move-object/from16 v11, v19

    const/4 v7, 0x0

    move-object/from16 v19, v0

    goto/16 :goto_25

    .line 2801
    :cond_e
    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-nez v23, :cond_16

    .line 2802
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "android.permission.ACTIVITY_RECOGNITION"

    .line 2803
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v24, v2

    move/from16 v26, v4

    goto/16 :goto_a

    .line 2804
    :cond_10
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2806
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v2

    move/from16 v26, v4

    goto/16 :goto_a

    .line 2821
    :cond_11
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v8}, Landroid/content/pm/PackageManagerInternal;->getInstalledSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v15

    move-object/from16 v24, v2

    .end local v2    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v24, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    const/16 v2, 0x1d

    if-ge v15, v2, :cond_15

    .line 2823
    nop

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v2

    .line 2825
    .local v2, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 2826
    .local v15, "numSplitPerms":I
    const/16 v25, 0x0

    move/from16 v26, v4

    move/from16 v4, v25

    .local v4, "splitPermNum":I
    .local v26, "N":I
    :goto_9
    if-ge v4, v15, :cond_14

    .line 2828
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2829
    .local v25, "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v27

    .line 2830
    .local v28, "splitPermName":Ljava/lang/String;
    move-object/from16 v27, v2

    .end local v2    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v27, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2831
    move-object/from16 v2, v28

    .end local v28    # "splitPermName":Ljava/lang/String;
    .local v2, "splitPermName":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 2832
    move-object/from16 v24, v2

    .line 2833
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2839
    move-object/from16 v15, v24

    goto :goto_b

    .line 2830
    .end local v2    # "splitPermName":Ljava/lang/String;
    .restart local v28    # "splitPermName":Ljava/lang/String;
    :cond_12
    move-object/from16 v2, v28

    .line 2827
    .end local v25    # "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v28    # "splitPermName":Ljava/lang/String;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v27

    goto :goto_9

    .line 2826
    .end local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v2, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :cond_14
    move-object/from16 v27, v2

    .end local v2    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .restart local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    goto :goto_a

    .line 2821
    .end local v15    # "numSplitPerms":I
    .end local v26    # "N":I
    .end local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v4, "N":I
    :cond_15
    move/from16 v26, v4

    .end local v4    # "N":I
    .restart local v26    # "N":I
    goto :goto_a

    .line 3237
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v26    # "N":I
    :catchall_1
    move-exception v0

    move-object/from16 v28, v5

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v1, v11

    move-object v10, v12

    move/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v4, v22

    move-object v11, v6

    move-object v12, v7

    goto/16 :goto_2d

    .line 2801
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "permName":Ljava/lang/String;
    .local v2, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "N":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    :cond_16
    move-object/from16 v24, v2

    move/from16 v26, v4

    .line 2857
    .end local v2    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "N":I
    .restart local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v26    # "N":I
    :goto_a
    move-object/from16 v15, v24

    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :goto_b
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v17, :cond_17

    .line 2862
    move-object/from16 v28, v5

    move-object v5, v6

    move-object v9, v10

    move-object/from16 v27, v12

    move-object/from16 v11, v19

    const/4 v7, 0x0

    const/16 v23, 0x17

    move-object/from16 v19, v0

    goto/16 :goto_26

    .line 2865
    :cond_17
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 2866
    .local v4, "perm":Ljava/lang/String;
    const/16 v24, 0x0

    .line 2867
    .local v24, "allowedSig":Z
    const/16 v25, 0x1

    .line 2870
    .local v25, "grant":I
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    if-eqz v2, :cond_18

    .line 2871
    :try_start_7
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move-object/from16 v27, v1

    .end local v1    # "permName":Ljava/lang/String;
    .local v27, "permName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    .line 2870
    .end local v27    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    :cond_18
    move-object/from16 v27, v1

    .line 2874
    .end local v1    # "permName":Ljava/lang/String;
    .restart local v27    # "permName":Ljava/lang/String;
    :goto_c
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2876
    const/16 v25, 0x2

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v1, v25

    move-object/from16 v18, v27

    const/16 v23, 0x17

    move-object/from16 v19, v0

    move-object/from16 v27, v3

    const/4 v0, 0x1

    goto/16 :goto_e

    .line 2877
    :cond_19
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_1c

    .line 2878
    :try_start_9
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v1, :cond_1b

    if-eqz v15, :cond_1a

    goto :goto_d

    .line 2885
    :cond_1a
    const/16 v25, 0x3

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v1, v25

    move-object/from16 v18, v27

    const/16 v23, 0x17

    move-object/from16 v19, v0

    move-object/from16 v27, v3

    const/4 v0, 0x1

    goto/16 :goto_e

    .line 2882
    :cond_1b
    :goto_d
    const/16 v25, 0x4

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v1, v25

    move-object/from16 v18, v27

    const/16 v23, 0x17

    move-object/from16 v19, v0

    move-object/from16 v27, v3

    const/4 v0, 0x1

    goto/16 :goto_e

    .line 2887
    :cond_1c
    :try_start_a
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    if-eqz v1, :cond_1e

    .line 2889
    move-object/from16 v18, v27

    const/4 v2, 0x1

    .end local v27    # "permName":Ljava/lang/String;
    .local v18, "permName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v11, v19

    move-object/from16 v19, v0

    move v0, v2

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "updatedUserIds":[I
    .local v19, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v2, v4

    move-object/from16 v27, v3

    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v3, p1

    move-object/from16 v29, v4

    .end local v4    # "perm":Ljava/lang/String;
    .local v29, "perm":Ljava/lang/String;
    move-object v4, v12

    move-object/from16 v28, v5

    move-object/from16 v5, v27

    move-object/from16 v30, v6

    const/16 v23, 0x17

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v30, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_b
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v24, v1

    .line 2890
    if-eqz v24, :cond_1d

    .line 2891
    const/16 v25, 0x2

    move/from16 v1, v25

    goto :goto_e

    .line 2890
    :cond_1d
    move/from16 v1, v25

    goto :goto_e

    .line 3237
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "N":I
    .end local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v29    # "perm":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p4

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v11, v30

    move-object v12, v7

    goto/16 :goto_2d

    .line 2887
    .end local v11    # "updatedUserIds":[I
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "updatedUserIds":[I
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v26    # "N":I
    .local v27, "permName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move-object/from16 v18, v27

    const/16 v23, 0x17

    move-object/from16 v19, v0

    move-object/from16 v27, v3

    const/4 v0, 0x1

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "updatedUserIds":[I
    .restart local v18    # "permName":Ljava/lang/String;
    .local v19, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29    # "perm":Ljava/lang/String;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move/from16 v1, v25

    .line 2900
    .end local v25    # "grant":I
    .local v1, "grant":I
    :goto_e
    const/4 v3, -0x1

    if-eq v1, v0, :cond_59

    .line 2901
    :try_start_c
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    if-nez v4, :cond_20

    :try_start_d
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v4, :cond_20

    .line 2905
    if-nez v24, :cond_1f

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    .end local v29    # "perm":Ljava/lang/String;
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "perm":Ljava/lang/String;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_e
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 2909
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 2910
    const/4 v1, 0x1

    goto :goto_f

    .line 2905
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v29    # "perm":Ljava/lang/String;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_1f
    move-object/from16 v4, v29

    move-object/from16 v5, v30

    .end local v29    # "perm":Ljava/lang/String;
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_f

    .line 3237
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_3
    move-exception v0

    move-object/from16 v1, p4

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v11, v30

    move-object v12, v7

    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2d

    .line 2901
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v1    # "grant":I
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "N":I
    .restart local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29    # "perm":Ljava/lang/String;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_20
    move-object/from16 v4, v29

    move-object/from16 v5, v30

    .line 2915
    .end local v29    # "perm":Ljava/lang/String;
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_21
    :goto_f
    const/4 v6, 0x2

    if-eq v1, v6, :cond_55

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3d

    const/4 v6, 0x4

    if-eq v1, v6, :cond_23

    .line 3182
    if-eqz v10, :cond_22

    .line 3183
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object v9, v10

    move-object/from16 v27, v12

    const/4 v7, 0x0

    goto/16 :goto_26

    .line 3237
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p4

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object v11, v5

    move-object v12, v7

    goto/16 :goto_2d

    .line 3182
    .restart local v1    # "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "N":I
    .restart local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_22
    move-object v9, v10

    move-object/from16 v27, v12

    const/4 v7, 0x0

    goto/16 :goto_26

    .line 3062
    :cond_23
    nop

    .line 3063
    :try_start_f
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 3064
    .local v6, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v6, :cond_24

    :try_start_10
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v25
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_10

    :cond_24
    const/16 v25, 0x0

    .line 3067
    .local v25, "flags":I
    :goto_10
    if-nez v15, :cond_25

    .line 3068
    move-object/from16 v0, v27

    goto :goto_11

    :cond_25
    :try_start_11
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 3071
    .local v0, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_11
    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eq v2, v3, :cond_26

    .line 3073
    const v2, 0x3bbff

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "grant":I
    .local v31, "grant":I
    :try_start_12
    invoke-virtual {v5, v0, v3, v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 3077
    const/4 v1, 0x1

    move v2, v1

    .end local v16    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    goto :goto_12

    .line 3071
    .end local v31    # "grant":I
    .local v1, "grant":I
    .restart local v16    # "changedInstallPermission":Z
    :cond_26
    move/from16 v31, v1

    .end local v1    # "grant":I
    .restart local v31    # "grant":I
    move/from16 v2, v16

    .line 3080
    .end local v16    # "changedInstallPermission":Z
    .local v2, "changedInstallPermission":Z
    :goto_12
    :try_start_13
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v1

    .line 3081
    .local v1, "hardRestricted":Z
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v16

    .line 3083
    .local v16, "softRestricted":Z
    array-length v3, v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move/from16 v32, v2

    move/from16 v2, v25

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v2, "flags":I
    .local v25, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v32, "changedInstallPermission":Z
    :goto_13
    if-ge v0, v3, :cond_3c

    :try_start_14
    aget v33, v14, v0

    move/from16 v34, v33

    .line 3087
    .local v34, "userId":I
    move/from16 v33, v3

    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v3, :cond_27

    :try_start_15
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 3089
    move-object/from16 v35, v15

    move/from16 v15, v34

    .end local v34    # "userId":I
    .local v15, "userId":I
    .local v35, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    invoke-virtual {v3, v15}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_14

    .line 3237
    .end local v1    # "hardRestricted":Z
    .end local v2    # "flags":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "userId":I
    .end local v16    # "softRestricted":Z
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v25    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v26    # "N":I
    .end local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v31    # "grant":I
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v1, p4

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v3, v11

    move-object v10, v12

    move/from16 v4, v22

    move/from16 v2, v32

    move-object v11, v5

    move-object v12, v7

    goto/16 :goto_2d

    .line 3087
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "flags":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v16    # "softRestricted":Z
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v25    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v26    # "N":I
    .restart local v27    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v31    # "grant":I
    .restart local v34    # "userId":I
    :cond_27
    move-object/from16 v35, v15

    move/from16 v15, v34

    .line 3089
    .end local v34    # "userId":I
    .local v15, "userId":I
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_28
    const/4 v3, 0x0

    .line 3091
    .local v3, "permissionPolicyInitialized":Z
    :goto_14
    const/16 v34, 0x0

    .line 3093
    .local v34, "wasChanged":Z
    move-object/from16 v8, v27

    move-object/from16 v27, v12

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_16
    iget-object v12, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 3094
    invoke-virtual {v5, v12, v15}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v12

    and-int/lit16 v12, v12, 0x3800

    if-eqz v12, :cond_29

    const/4 v12, 0x1

    goto :goto_15

    :cond_29
    const/4 v12, 0x0

    .line 3096
    .local v12, "restrictionExempt":Z
    :goto_15
    iget-object v9, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v9

    and-int/lit16 v9, v9, 0x4000

    if-eqz v9, :cond_2a

    const/4 v9, 0x1

    goto :goto_16

    :cond_2a
    const/4 v9, 0x0

    .line 3099
    .local v9, "restrictionApplied":Z
    :goto_16
    if-eqz v17, :cond_33

    .line 3101
    if-eqz v3, :cond_2e

    if-eqz v1, :cond_2e

    .line 3102
    if-nez v12, :cond_2d

    .line 3103
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v36

    if-eqz v36, :cond_2b

    .line 3104
    move-object/from16 v36, v6

    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v36, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v13, v8, v15}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2c

    .line 3106
    const/4 v6, 0x1

    move/from16 v34, v6

    .end local v34    # "wasChanged":Z
    .local v6, "wasChanged":Z
    goto :goto_17

    .line 3103
    .end local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v6, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v34    # "wasChanged":Z
    :cond_2b
    move-object/from16 v36, v6

    .line 3108
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2c
    :goto_17
    if-nez v9, :cond_2f

    .line 3109
    or-int/lit16 v2, v2, 0x4000

    .line 3110
    const/16 v34, 0x1

    goto :goto_18

    .line 3102
    .end local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2d
    move-object/from16 v36, v6

    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_18

    .line 3101
    .end local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2e
    move-object/from16 v36, v6

    .line 3114
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v3, :cond_2f

    if-eqz v16, :cond_2f

    .line 3117
    if-nez v12, :cond_2f

    if-nez v9, :cond_2f

    .line 3118
    or-int/lit16 v2, v2, 0x4000

    .line 3119
    const/16 v34, 0x1

    .line 3124
    :cond_2f
    :goto_18
    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_30

    .line 3125
    and-int/lit8 v2, v2, -0x41

    .line 3126
    const/16 v34, 0x1

    .line 3129
    :cond_30
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_31

    .line 3130
    and-int/lit8 v2, v2, -0x9

    .line 3131
    const/16 v34, 0x1

    goto :goto_19

    .line 3133
    :cond_31
    if-eqz v3, :cond_32

    if-eqz v1, :cond_32

    if-eqz v12, :cond_36

    .line 3135
    :cond_32
    invoke-virtual {v13, v8, v15}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_36

    .line 3137
    const/16 v34, 0x1

    goto :goto_19

    .line 3141
    .end local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_33
    move-object/from16 v36, v6

    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v6, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v6, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_34

    .line 3142
    invoke-virtual {v13, v8, v15}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_34

    .line 3144
    or-int/lit8 v2, v2, 0x40

    .line 3145
    const/16 v34, 0x1

    .line 3150
    :cond_34
    if-eqz v3, :cond_36

    if-nez v1, :cond_35

    if-eqz v16, :cond_36

    :cond_35
    if-nez v12, :cond_36

    if-nez v9, :cond_36

    .line 3153
    or-int/lit16 v2, v2, 0x4000

    .line 3154
    const/16 v34, 0x1

    .line 3159
    :cond_36
    :goto_19
    if-eqz v3, :cond_3a

    .line 3160
    if-nez v1, :cond_37

    if-eqz v16, :cond_38

    :cond_37
    if-eqz v12, :cond_3a

    .line 3161
    :cond_38
    if-eqz v9, :cond_3a

    .line 3162
    and-int/lit16 v2, v2, -0x4001

    .line 3164
    if-nez v17, :cond_39

    .line 3165
    or-int/lit8 v2, v2, 0x40

    .line 3167
    :cond_39
    const/16 v34, 0x1

    .line 3172
    :cond_3a
    if-eqz v34, :cond_3b

    .line 3173
    invoke-static {v11, v15}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    move-object v11, v6

    .line 3176
    :cond_3b
    const v6, 0x3fbff

    invoke-virtual {v13, v8, v15, v6, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 3083
    nop

    .end local v3    # "permissionPolicyInitialized":Z
    .end local v9    # "restrictionApplied":Z
    .end local v12    # "restrictionExempt":Z
    .end local v15    # "userId":I
    .end local v34    # "wasChanged":Z
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, v27

    move/from16 v3, v33

    move-object/from16 v15, v35

    move-object/from16 v6, v36

    move-object/from16 v27, v8

    move-object/from16 v8, p1

    goto/16 :goto_13

    .line 3237
    .end local v1    # "hardRestricted":Z
    .end local v2    # "flags":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v16    # "softRestricted":Z
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v25    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v26    # "N":I
    .end local v31    # "grant":I
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v36    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_6
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v12, v7

    move-object v3, v11

    move/from16 v4, v22

    move-object/from16 v10, v27

    move/from16 v2, v32

    move-object v11, v5

    goto/16 :goto_2d

    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_7
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v4, v22

    move/from16 v2, v32

    move-object v11, v5

    move-object v12, v7

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .line 3083
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "flags":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v16    # "softRestricted":Z
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v25    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v26    # "N":I
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v31    # "grant":I
    :cond_3c
    move-object/from16 v36, v6

    move-object/from16 v35, v15

    move-object/from16 v8, v27

    move-object/from16 v27, v12

    .line 3179
    .end local v1    # "hardRestricted":Z
    .end local v2    # "flags":I
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v16    # "softRestricted":Z
    .end local v25    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    move-object/from16 v9, p3

    move-object v2, v11

    move/from16 v16, v32

    const/4 v7, 0x0

    goto/16 :goto_27

    .line 3237
    .end local v4    # "perm":Ljava/lang/String;
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "grant":I
    .end local v32    # "changedInstallPermission":Z
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v2, "changedInstallPermission":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_8
    move-exception v0

    move/from16 v32, v2

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v4, v22

    move-object v11, v5

    move-object v12, v7

    .end local v2    # "changedInstallPermission":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "changedInstallPermission":Z
    goto/16 :goto_2d

    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "changedInstallPermission":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v16, "changedInstallPermission":Z
    :catchall_9
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object v11, v5

    move-object v12, v7

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .line 2941
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "N":I
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_3d
    move/from16 v31, v1

    move-object/from16 v35, v15

    move-object/from16 v8, v27

    move-object/from16 v27, v12

    .end local v1    # "grant":I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31    # "grant":I
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_17
    invoke-virtual {v8}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 2942
    .local v0, "hardRestricted":Z
    invoke-virtual {v8}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1

    .line 2944
    .local v1, "softRestricted":Z
    array-length v2, v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    move-object v3, v11

    const/4 v6, 0x0

    .end local v11    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_1a
    if-ge v6, v2, :cond_54

    :try_start_18
    aget v9, v14, v6

    .line 2948
    .local v9, "userId":I
    iget-object v10, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-eqz v10, :cond_3e

    :try_start_19
    iget-object v10, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2950
    invoke-virtual {v10, v9}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-eqz v10, :cond_3e

    const/4 v10, 0x1

    goto :goto_1b

    .line 3237
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v9    # "userId":I
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v31    # "grant":I
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v11, v5

    move-object v12, v7

    goto/16 :goto_24

    .line 2950
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v9    # "userId":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "N":I
    .restart local v31    # "grant":I
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_3e
    const/4 v10, 0x0

    .line 2952
    .local v10, "permissionPolicyInitialized":Z
    :goto_1b
    nop

    .line 2953
    :try_start_1a
    invoke-virtual {v5, v4, v9}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 2954
    .local v11, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v11, :cond_3f

    :try_start_1b
    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_1c

    :cond_3f
    const/4 v12, 0x0

    .line 2956
    .local v12, "flags":I
    :goto_1c
    const/4 v15, 0x0

    .line 2958
    .local v15, "wasChanged":Z
    move/from16 v25, v2

    :try_start_1c
    iget-object v2, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2959
    invoke-virtual {v5, v2, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0x3800

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_1d

    :cond_40
    const/4 v2, 0x0

    .line 2961
    .local v2, "restrictionExempt":Z
    :goto_1d
    move/from16 v32, v15

    .end local v15    # "wasChanged":Z
    .local v32, "wasChanged":Z
    iget-object v15, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v15, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v15

    and-int/lit16 v15, v15, 0x4000

    if-eqz v15, :cond_41

    const/4 v15, 0x1

    goto :goto_1e

    :cond_41
    const/4 v15, 0x0

    .line 2964
    .local v15, "restrictionApplied":Z
    :goto_1e
    if-eqz v17, :cond_4a

    .line 2966
    if-eqz v10, :cond_45

    if-eqz v0, :cond_45

    .line 2967
    if-nez v2, :cond_44

    .line 2968
    if-eqz v11, :cond_42

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v33

    if-eqz v33, :cond_42

    .line 2969
    invoke-virtual {v13, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7

    move-object/from16 v33, v4

    const/4 v4, -0x1

    .end local v4    # "perm":Ljava/lang/String;
    .local v33, "perm":Ljava/lang/String;
    if-eq v7, v4, :cond_43

    .line 2971
    const/4 v4, 0x1

    move/from16 v32, v4

    .end local v32    # "wasChanged":Z
    .local v4, "wasChanged":Z
    goto :goto_1f

    .line 2968
    .end local v33    # "perm":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v32    # "wasChanged":Z
    :cond_42
    move-object/from16 v33, v4

    .line 2973
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_43
    :goto_1f
    if-nez v15, :cond_46

    .line 2974
    or-int/lit16 v12, v12, 0x4000

    .line 2975
    const/4 v4, 0x1

    move/from16 v32, v4

    .end local v32    # "wasChanged":Z
    .local v4, "wasChanged":Z
    goto :goto_20

    .line 2967
    .end local v33    # "perm":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v32    # "wasChanged":Z
    :cond_44
    move-object/from16 v33, v4

    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    goto :goto_20

    .line 2966
    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    :cond_45
    move-object/from16 v33, v4

    .line 2979
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    if-eqz v10, :cond_46

    if-eqz v1, :cond_46

    .line 2982
    if-nez v2, :cond_46

    if-nez v15, :cond_46

    .line 2983
    or-int/lit16 v12, v12, 0x4000

    .line 2984
    const/4 v4, 0x1

    move/from16 v32, v4

    .line 2989
    :cond_46
    :goto_20
    and-int/lit8 v4, v12, 0x40

    if-eqz v4, :cond_47

    .line 2990
    and-int/lit8 v12, v12, -0x41

    .line 2991
    const/16 v32, 0x1

    .line 2994
    :cond_47
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_48

    .line 2995
    and-int/lit8 v12, v12, -0x9

    .line 2996
    const/16 v32, 0x1

    goto :goto_21

    .line 2998
    :cond_48
    if-eqz v10, :cond_49

    if-eqz v0, :cond_49

    if-eqz v2, :cond_4e

    .line 3000
    :cond_49
    if-eqz v11, :cond_4e

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3001
    invoke-virtual {v13, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_4e

    .line 3003
    const/16 v32, 0x1

    goto :goto_21

    .line 3008
    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    :cond_4a
    move-object/from16 v33, v4

    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    if-nez v11, :cond_4b

    .line 3010
    const-string v4, "android"

    .line 3011
    invoke-virtual {v8}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    .line 3010
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3012
    invoke-virtual {v8}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 3013
    or-int/lit8 v12, v12, 0x48

    .line 3015
    const/4 v4, 0x1

    move/from16 v32, v4

    .line 3020
    :cond_4b
    iget-object v4, v8, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v4, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 3021
    invoke-virtual {v13, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4c

    .line 3023
    const/4 v4, 0x1

    move/from16 v32, v4

    .line 3028
    :cond_4c
    if-eqz v10, :cond_4e

    if-nez v0, :cond_4d

    if-eqz v1, :cond_4e

    :cond_4d
    if-nez v2, :cond_4e

    if-nez v15, :cond_4e

    .line 3031
    or-int/lit16 v12, v12, 0x4000

    .line 3032
    const/16 v32, 0x1

    .line 3037
    :cond_4e
    :goto_21
    if-eqz v10, :cond_52

    .line 3038
    if-nez v0, :cond_4f

    if-eqz v1, :cond_50

    :cond_4f
    if-eqz v2, :cond_52

    .line 3039
    :cond_50
    if-eqz v15, :cond_52

    .line 3040
    and-int/lit16 v4, v12, -0x4001

    .line 3042
    .end local v12    # "flags":I
    .local v4, "flags":I
    if-nez v17, :cond_51

    .line 3043
    or-int/lit8 v4, v4, 0x40

    move v12, v4

    goto :goto_22

    .line 3042
    :cond_51
    move v12, v4

    .line 3045
    .end local v4    # "flags":I
    .restart local v12    # "flags":I
    :goto_22
    const/16 v32, 0x1

    .line 3050
    :cond_52
    if-eqz v32, :cond_53

    .line 3051
    invoke-static {v3, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v3, v4

    .line 3054
    :cond_53
    const v4, 0x3fbff

    invoke-virtual {v13, v8, v9, v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 2944
    nop

    .end local v2    # "restrictionExempt":Z
    .end local v9    # "userId":I
    .end local v10    # "permissionPolicyInitialized":Z
    .end local v11    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v12    # "flags":I
    .end local v15    # "restrictionApplied":Z
    .end local v32    # "wasChanged":Z
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p0

    move/from16 v2, v25

    move-object/from16 v4, v33

    goto/16 :goto_1a

    .end local v33    # "perm":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    :cond_54
    move-object/from16 v33, v4

    .line 3057
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    move-object/from16 v9, p3

    move-object v2, v3

    const/4 v7, 0x0

    goto/16 :goto_27

    .line 2921
    .end local v3    # "updatedUserIds":[I
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v31    # "grant":I
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .local v11, "updatedUserIds":[I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_55
    move/from16 v31, v1

    move-object/from16 v33, v4

    move-object/from16 v35, v15

    move-object/from16 v8, v27

    move-object/from16 v27, v12

    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31    # "grant":I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_1d
    array-length v0, v14
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    move-object v3, v11

    const/4 v2, 0x0

    .end local v11    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :goto_23
    if-ge v2, v0, :cond_57

    :try_start_1e
    aget v1, v14, v2

    .line 2922
    .local v1, "userId":I
    move-object/from16 v4, v33

    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    invoke-virtual {v5, v4, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    if-eqz v6, :cond_56

    .line 2925
    invoke-virtual {v5, v8, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2926
    const v6, 0x3fbff

    const/4 v7, 0x0

    invoke-virtual {v5, v8, v1, v6, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2929
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    move-object v3, v6

    .line 2921
    .end local v1    # "userId":I
    :cond_56
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v33, v4

    goto :goto_23

    .line 2934
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_57
    move-object/from16 v4, v33

    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    invoke-virtual {v13, v8}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_58

    .line 2936
    const/4 v0, 0x1

    move-object/from16 v9, p3

    move/from16 v16, v0

    move-object v2, v3

    const/4 v7, 0x0

    .end local v16    # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto/16 :goto_27

    .line 2934
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_58
    move-object/from16 v9, p3

    move-object v2, v3

    const/4 v7, 0x0

    goto/16 :goto_27

    .line 3237
    .end local v4    # "perm":Ljava/lang/String;
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v31    # "grant":I
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v11, v5

    :goto_24
    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v10, v27

    goto/16 :goto_2d

    .end local v3    # "updatedUserIds":[I
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "updatedUserIds":[I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_c
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v11, v30

    move-object/from16 v12, p0

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .line 3193
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v1, "grant":I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "N":I
    .local v27, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29    # "perm":Ljava/lang/String;
    .restart local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_59
    move-object/from16 v35, v15

    move-object/from16 v8, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v27, v12

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "perm":Ljava/lang/String;
    .end local v30    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v27, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_1f
    invoke-virtual {v13, v8}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    .line 3196
    const v0, 0x3fbff

    const/4 v7, 0x0

    invoke-virtual {v13, v8, v2, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3198
    const/4 v0, 0x1

    move-object/from16 v9, p3

    move/from16 v16, v0

    move-object v2, v11

    .end local v16    # "changedInstallPermission":Z
    .restart local v0    # "changedInstallPermission":Z
    goto/16 :goto_27

    .line 3207
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_5a
    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    move-object/from16 v9, p3

    goto/16 :goto_26

    .line 3237
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "allowedSig":Z
    .end local v26    # "N":I
    .end local v35    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v10, v27

    move-object v11, v5

    goto/16 :goto_2d

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "updatedUserIds":[I
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v19, "updatedUserIds":[I
    :catchall_e
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v11, v19

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v12, p0

    move-object v11, v6

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v19    # "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "updatedUserIds":[I
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .line 2788
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "updatedUserIds":[I
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "permName":Ljava/lang/String;
    .local v2, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v4, "N":I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "i":I
    .restart local v21    # "friendlyName":Ljava/lang/String;
    :cond_5b
    move-object/from16 v18, v1

    move-object/from16 v24, v2

    move-object v8, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-object v5, v6

    move-object/from16 v27, v12

    move/from16 v23, v15

    move-object/from16 v11, v19

    const/4 v7, 0x0

    move-object/from16 v19, v0

    .line 2789
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "N":I
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v11    # "updatedUserIds":[I
    .restart local v18    # "permName":Ljava/lang/String;
    .local v19, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v24, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v26    # "N":I
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_25
    move-object/from16 v9, p3

    if-eqz v9, :cond_5c

    .line 2790
    :try_start_20
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2789
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_26

    .line 3237
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v21    # "friendlyName":Ljava/lang/String;
    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v26    # "N":I
    :catchall_f
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move/from16 v8, p2

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v10, v27

    move-object v11, v5

    goto/16 :goto_2d

    .line 2776
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "i":I
    .restart local v26    # "N":I
    :cond_5c
    :goto_26
    move-object v2, v11

    .end local v11    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    :goto_27
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v11, p4

    move-object v6, v5

    move-object v10, v9

    move-object/from16 v0, v19

    move/from16 v15, v22

    move/from16 v4, v26

    move-object/from16 v12, v27

    move-object/from16 v5, v28

    move/from16 v9, p2

    .end local v20    # "i":I
    .local v3, "i":I
    goto/16 :goto_6

    .line 3237
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v26    # "N":I
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v15, "runtimePermissionsRevoked":Z
    .local v19, "updatedUserIds":[I
    :catchall_10
    move-exception v0

    move-object/from16 v28, v5

    move-object v9, v10

    move-object/from16 v11, v19

    move/from16 v8, p2

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move v4, v15

    move/from16 v2, v16

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object v11, v6

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "updatedUserIds":[I
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "updatedUserIds":[I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "runtimePermissionsRevoked":Z
    :catchall_11
    move-exception v0

    move-object v11, v2

    move-object/from16 v28, v5

    move-object v9, v10

    move/from16 v8, p2

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move v4, v15

    move/from16 v2, v16

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object v11, v6

    .end local v2    # "updatedUserIds":[I
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_2d

    .line 2776
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "updatedUserIds":[I
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .restart local v3    # "i":I
    .restart local v4    # "N":I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "runtimePermissionsRevoked":Z
    :cond_5d
    move-object/from16 v19, v0

    move-object v11, v2

    move/from16 v20, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-object v5, v6

    move-object v9, v10

    move-object/from16 v27, v12

    move/from16 v22, v15

    const/4 v7, 0x0

    .line 3224
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v4    # "N":I
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "updatedUserIds":[I
    .local v19, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v26    # "N":I
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v16, :cond_5e

    move/from16 v8, p2

    if-eqz v8, :cond_5f

    goto :goto_28

    :cond_5e
    move/from16 v8, p2

    :goto_28
    :try_start_21
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    if-nez v0, :cond_5f

    .line 3225
    :try_start_22
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    if-eqz v0, :cond_60

    goto :goto_29

    .line 3237
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "N":I
    :catchall_12
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v10, v27

    move-object v11, v5

    goto/16 :goto_2d

    .line 3225
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "N":I
    :cond_5f
    :goto_29
    :try_start_23
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_17

    if-eqz v0, :cond_61

    .line 3229
    :cond_60
    move-object/from16 v10, v27

    const/4 v0, 0x1

    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_24
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    goto :goto_2a

    .line 3237
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "N":I
    :catchall_13
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v22

    move-object v11, v5

    goto/16 :goto_2d

    .line 3225
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "N":I
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_61
    move-object/from16 v10, v27

    .line 3232
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_2a
    move-object/from16 v12, p0

    move-object/from16 v15, p1

    :try_start_25
    invoke-direct {v12, v13, v15, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I

    move-result-object v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    .line 3234
    .end local v11    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, p1

    move-object v11, v5

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v11, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v5, v19

    :try_start_26
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    move-object v3, v0

    .line 3236
    .end local v6    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :try_start_27
    invoke-direct {v12, v15, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I

    move-result-object v0

    move-object v3, v0

    .line 3237
    .end local v19    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "N":I
    monitor-exit v28
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    .line 3242
    move-object/from16 v1, p4

    if-eqz v1, :cond_62

    .line 3243
    move/from16 v4, v22

    .end local v22    # "runtimePermissionsRevoked":Z
    .local v4, "runtimePermissionsRevoked":Z
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_2b

    .line 3242
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v22    # "runtimePermissionsRevoked":Z
    :cond_62
    move/from16 v4, v22

    .line 3246
    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    :goto_2b
    array-length v0, v3

    :goto_2c
    if-ge v7, v0, :cond_63

    aget v2, v3, v7

    .line 3247
    .local v2, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 3246
    .end local v2    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 3249
    :cond_63
    return-void

    .line 3237
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_14
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v22

    move/from16 v2, v16

    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_2d

    .end local v3    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v6    # "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_15
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v22

    move-object v3, v6

    move/from16 v2, v16

    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_2d

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v6    # "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v11, "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_16
    move-exception v0

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v4, v22

    move-object v11, v5

    move-object v3, v2

    move/from16 v2, v16

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "runtimePermissionsRevoked":Z
    .local v2, "updatedUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    .local v11, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_2d

    .end local v2    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v11, "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_17
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v4, v22

    move-object/from16 v10, v27

    move-object v11, v5

    move-object v3, v2

    move/from16 v2, v16

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v27    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "updatedUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_2d

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "changedInstallPermission":Z
    .local v2, "changedInstallPermission":Z
    .restart local v3    # "updatedUserIds":[I
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "runtimePermissionsRevoked":Z
    :catchall_18
    move-exception v0

    move-object/from16 v28, v5

    move-object v1, v11

    move v4, v15

    move-object v11, v6

    move-object v15, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v7

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :goto_2d
    :try_start_28
    monitor-exit v28
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_2d
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2168
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2170
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2171
    monitor-exit v0

    .line 2172
    return-void

    .line 2171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4463
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4464
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4466
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 4468
    return-void

    .line 4471
    :cond_0
    invoke-direct {p0, p2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 4474
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4488
    goto :goto_0

    .line 4481
    :catch_0
    move-exception v1

    .line 4482
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4490
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I
    .locals 16
    .param p1, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "updatedUserIds"    # [I

    .line 3274
    move-object/from16 v0, p1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3275
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3278
    .local v2, "supportsRuntimePermissions":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v4

    .line 3279
    .local v4, "users":[I
    array-length v5, v4

    .line 3280
    .local v5, "numUsers":I
    const/4 v6, 0x0

    move v7, v6

    move-object/from16 v6, p3

    .end local p3    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 3281
    aget v8, v4, v7

    .line 3283
    .local v8, "userId":I
    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3284
    .local v10, "permission":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 3285
    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3286
    invoke-virtual {v0, v10, v8}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v11

    .line 3288
    .local v11, "flags":I
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_2

    .line 3289
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v13

    .line 3291
    .local v13, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/16 v14, 0x80

    .line 3293
    .local v14, "flagsToRemove":I
    and-int/lit8 v15, v11, 0x34

    if-nez v15, :cond_1

    if-eqz v2, :cond_1

    .line 3295
    invoke-virtual {v0, v13, v8}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v15

    .line 3296
    .local v15, "revokeResult":I
    nop

    .line 3304
    or-int/lit8 v14, v14, 0x3

    .line 3307
    .end local v15    # "revokeResult":I
    :cond_1
    invoke-virtual {v0, v13, v8, v14, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3308
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    goto :goto_3

    .line 3288
    .end local v13    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v14    # "flagsToRemove":I
    :cond_2
    move-object/from16 v12, p0

    goto :goto_3

    .line 3285
    .end local v11    # "flags":I
    :cond_3
    move-object/from16 v12, p0

    goto :goto_3

    .line 3284
    :cond_4
    move-object/from16 v12, p0

    .line 3312
    .end local v10    # "permission":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 3283
    :cond_5
    move-object/from16 v12, p0

    .line 3280
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v12, p0

    .line 3315
    .end local v7    # "i":I
    return-object v6
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 15
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1591
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string v12, "PackageManager"

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void

    .line 1596
    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1606
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1607
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1609
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v2, "Unknown package: "

    if-eqz v0, :cond_10

    if-nez v1, :cond_1

    move/from16 v4, p4

    move-object/from16 v13, p6

    goto/16 :goto_3

    .line 1613
    :cond_1
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v3, v0, v4, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1616
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 1617
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v2, :cond_e

    .line 1621
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1627
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v5, 0x17

    if-ge v3, v5, :cond_2

    .line 1628
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1629
    return-void

    .line 1632
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 1634
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 1636
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x10

    const-string v12, " for package "

    if-eqz v6, :cond_4

    .line 1637
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v13, 0x3e8

    if-ne v6, v13, :cond_3

    goto :goto_0

    .line 1638
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1641
    :cond_4
    :goto_0
    if-nez p3, :cond_6

    and-int/lit8 v6, v5, 0x4

    if-nez v6, :cond_5

    goto :goto_1

    .line 1642
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot revoke policy fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1646
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    const/4 v12, -0x1

    if-eqz v6, :cond_8

    .line 1649
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v6

    if-eq v6, v12, :cond_7

    .line 1651
    if-eqz v11, :cond_7

    .line 1652
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1655
    :cond_7
    return-void

    .line 1659
    :cond_8
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1660
    return-void

    .line 1663
    :cond_9
    invoke-virtual {v3, v2, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    if-ne v6, v12, :cond_a

    .line 1665
    return-void

    .line 1668
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1669
    const/16 v6, 0x4dd

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_b
    if-eqz v11, :cond_c

    .line 1673
    nop

    .line 1674
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 1673
    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    move-object/from16 v13, p6

    invoke-virtual {v11, v6, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_2

    .line 1672
    :cond_c
    move-object/from16 v13, p6

    .line 1677
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1678
    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1680
    :cond_d
    return-void

    .line 1618
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "flags":I
    :cond_e
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1614
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_f
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1609
    :cond_10
    move/from16 v4, p4

    move-object/from16 v13, p6

    .line 1610
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 29
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2384
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v10

    .line 2385
    .local v10, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 2388
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 2389
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2391
    .local v1, "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2392
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2393
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2392
    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    .end local v1    # "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2397
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2398
    .local v12, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 2399
    .local v13, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "newPermissionNum":I
    :goto_1
    if-ge v14, v13, :cond_9

    .line 2401
    nop

    .line 2402
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2403
    .local v15, "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v16

    .line 2405
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_8

    .line 2406
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2408
    .local v8, "permissionName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2409
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 2410
    .local v7, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2413
    .local v6, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 2414
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2415
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 2416
    .local v5, "userIds":[I
    array-length v4, v5

    .line 2417
    .local v4, "numUserIds":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "userIdNum":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 2418
    aget v2, v5, v3

    .line 2420
    .local v2, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2421
    .local v1, "numPackages":I
    const/4 v0, 0x0

    move/from16 v17, v4

    move v4, v0

    .local v4, "packageNum":I
    .local v17, "numUserIds":I
    :goto_4
    if-ge v4, v1, :cond_4

    .line 2422
    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v10    # "numOldPackagePermissions":I
    .local v18, "numOldPackagePermissions":I
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v4

    .end local v4    # "packageNum":I
    .local v19, "packageNum":I
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2423
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v8, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 2425
    .local v20, "permissionState":I
    if-nez v20, :cond_3

    .line 2426
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    const-string v23, "72710897"

    aput-object v23, v0, v22

    .line 2427
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v0, v23

    const/16 v22, 0x2

    move/from16 v23, v1

    .end local v1    # "numPackages":I
    .local v23, "numPackages":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v2

    .end local v2    # "userId":I
    .local v24, "userId":I
    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    .line 2426
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2434
    const/4 v0, 0x0

    const/16 v21, 0x0

    move/from16 v22, v23

    .end local v23    # "numPackages":I
    .local v22, "numPackages":I
    move-object/from16 v1, p0

    move/from16 v23, v24

    .end local v24    # "userId":I
    .local v23, "userId":I
    move-object v2, v8

    move/from16 v24, v3

    .end local v3    # "userIdNum":I
    .local v24, "userIdNum":I
    move-object v3, v4

    move-object/from16 v25, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v26, v5

    .end local v5    # "userIds":[I
    .local v26, "userIds":[I
    move v5, v12

    move-object/from16 v27, v6

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .local v27, "oldPermissionGroupName":Ljava/lang/String;
    move/from16 v6, v23

    move-object/from16 v28, v7

    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .local v28, "newPermissionGroupName":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object v9, v8

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v9, "permissionName":Ljava/lang/String;
    move-object/from16 v8, p4

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    goto :goto_5

    .line 2436
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2437
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2425
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .local v2, "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    :cond_3
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move-object v2, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    .line 2421
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v20    # "permissionState":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v22    # "numPackages":I
    .restart local v23    # "userId":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v19, 0x1

    move-object v8, v9

    move/from16 v10, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v9, p0

    .end local v19    # "packageNum":I
    .local v4, "packageNum":I
    goto/16 :goto_4

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .restart local v2    # "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_4
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v19, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 2417
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageNum":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    add-int/lit8 v3, v24, 0x1

    move/from16 v4, v17

    move/from16 v10, v18

    move-object/from16 v9, p0

    .end local v24    # "userIdNum":I
    .restart local v3    # "userIdNum":I
    goto/16 :goto_3

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .local v4, "numUserIds":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_5
    move/from16 v24, v3

    move/from16 v17, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v3    # "userIdNum":I
    .end local v4    # "numUserIds":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v17    # "numUserIds":I
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2414
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_6
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2413
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_7
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2405
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_8
    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 2400
    .end local v10    # "numOldPackagePermissions":I
    .end local v15    # "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v16    # "newProtection":I
    .restart local v18    # "numOldPackagePermissions":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    move/from16 v10, v18

    goto/16 :goto_1

    .line 2446
    .end local v14    # "newPermissionNum":I
    .end local v18    # "numOldPackagePermissions":I
    .restart local v10    # "numOldPackagePermissions":I
    :cond_9
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChanged(Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 31
    .param p3, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2461
    .local p1, "permissionsToRevoke":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v10

    .line 2462
    .local v10, "userIds":[I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 2463
    .local v11, "numPermissions":I
    array-length v12, v10

    .line 2464
    .local v12, "numUserIds":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2465
    .local v13, "numPackages":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2467
    .local v14, "callingUid":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "permNum":I
    :goto_0
    if-ge v15, v11, :cond_6

    .line 2468
    move-object/from16 v8, p1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 2469
    .local v7, "permName":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 2470
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2471
    move-object/from16 v17, v10

    goto/16 :goto_4

    .line 2473
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .local v5, "userIdNum":I
    :goto_1
    if-ge v5, v12, :cond_4

    .line 2474
    aget v3, v10, v5

    .line 2475
    .local v3, "userId":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "packageNum":I
    :goto_2
    if-ge v2, v13, :cond_3

    .line 2476
    move-object/from16 v1, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2477
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v17, v10

    const/4 v1, 0x0

    .end local v10    # "userIds":[I
    .local v17, "userIds":[I
    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    .line 2478
    .local v10, "uid":I
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_1

    .line 2480
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    goto/16 :goto_3

    .line 2482
    :cond_1
    invoke-direct {v9, v7, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 2484
    .local v18, "permissionState":I
    invoke-virtual {v9, v7, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 2485
    .local v19, "flags":I
    const v20, 0x8034

    .line 2489
    .local v20, "flagMask":I
    if-nez v18, :cond_2

    const v0, 0x8034

    and-int v0, v19, v0

    if-nez v0, :cond_2

    .line 2491
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v21, "154505240"

    const/16 v16, 0x0

    aput-object v21, v1, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v1, v22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    .end local v2    # "packageNum":I
    .local v23, "packageNum":I
    const-string v2, "Revoking permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v3

    .end local v3    # "userId":I
    .local v24, "userId":I
    const-string v3, " from package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v5

    .end local v5    # "userIdNum":I
    .local v25, "userIdNum":I
    const-string v5, " due to definition change"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v26, 0x2

    aput-object v0, v1, v26

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2494
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v21, "168319670"

    const/16 v16, 0x0

    aput-object v21, v1, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v1, v22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v26

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PackageManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v0, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v22, v23

    .end local v23    # "packageNum":I
    .local v22, "packageNum":I
    move-object v2, v7

    move/from16 v23, v24

    .end local v24    # "userId":I
    .local v23, "userId":I
    move-object v3, v4

    move-object/from16 v27, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v27, "packageName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v28, v5

    move/from16 v16, v25

    .end local v25    # "userIdNum":I
    .local v16, "userIdNum":I
    move v5, v14

    move-object/from16 v29, v6

    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v29, "bp":Lcom/android/server/pm/permission/BasePermission;
    move/from16 v6, v23

    move-object/from16 v30, v7

    .end local v7    # "permName":Ljava/lang/String;
    .local v30, "permName":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object/from16 v8, p3

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2505
    move-object/from16 v2, v30

    goto :goto_3

    .line 2502
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2503
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    .end local v30    # "permName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    .end local v27    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v28

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2489
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "userIdNum":I
    .end local v22    # "packageNum":I
    .end local v23    # "userId":I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v2, "packageNum":I
    .local v3, "userId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userIdNum":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    :cond_2
    move/from16 v22, v2

    move/from16 v23, v3

    move-object v3, v4

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    .line 2475
    .end local v3    # "userId":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v18    # "permissionState":I
    .end local v19    # "flags":I
    .end local v20    # "flagMask":I
    .local v2, "permName":Ljava/lang/String;
    .restart local v16    # "userIdNum":I
    .restart local v22    # "packageNum":I
    .restart local v23    # "userId":I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_3
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v8, p1

    move-object v7, v2

    move/from16 v5, v16

    move-object/from16 v10, v17

    move/from16 v3, v23

    move-object/from16 v6, v29

    move v2, v0

    .end local v22    # "packageNum":I
    .local v0, "packageNum":I
    goto/16 :goto_2

    .end local v0    # "packageNum":I
    .end local v16    # "userIdNum":I
    .end local v17    # "userIds":[I
    .end local v23    # "userId":I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v2, "packageNum":I
    .restart local v3    # "userId":I
    .restart local v5    # "userIdNum":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .local v10, "userIds":[I
    :cond_3
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 2473
    .end local v3    # "userId":I
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .local v2, "permName":Ljava/lang/String;
    .restart local v16    # "userIdNum":I
    .restart local v17    # "userIds":[I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v8, p1

    .end local v16    # "userIdNum":I
    .restart local v5    # "userIdNum":I
    goto/16 :goto_1

    .end local v2    # "permName":Ljava/lang/String;
    .end local v17    # "userIds":[I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .restart local v10    # "userIds":[I
    :cond_4
    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 2509
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .restart local v2    # "permName":Ljava/lang/String;
    .restart local v17    # "userIds":[I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v1, v29

    const/4 v3, 0x0

    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/BasePermission;->setPermissionDefinitionChanged(Z)V

    goto :goto_4

    .line 2470
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v2    # "permName":Ljava/lang/String;
    .end local v17    # "userIds":[I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .restart local v10    # "userIds":[I
    :cond_5
    move-object v1, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 2467
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .restart local v17    # "userIds":[I
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v17

    goto/16 :goto_0

    .line 2511
    .end local v15    # "permNum":I
    .end local v17    # "userIds":[I
    .restart local v10    # "userIds":[I
    :cond_6
    return-void
.end method

.method private revokeStoragePermissionsIfScopeExpanded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 21
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2289
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_0

    .line 2290
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    .line 2291
    .local v12, "downgradedSdk":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 2292
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v13, v0

    .line 2293
    .local v13, "upgradedSdk":Z
    if-nez v13, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2294
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    move v14, v0

    .line 2296
    .local v14, "newlyRequestsLegacy":Z
    if-nez v14, :cond_3

    if-nez v12, :cond_3

    .line 2297
    return-void

    .line 2300
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2301
    .local v15, "callingUid":I
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v8

    array-length v7, v8

    move v6, v11

    :goto_3
    if-ge v6, v7, :cond_7

    aget v5, v8, v6

    .line 2302
    .local v5, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2303
    .local v4, "numRequestedPermissions":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 2304
    nop

    .line 2305
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2306
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2304
    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 2307
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_5

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2308
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    goto/16 :goto_6

    .line 2311
    :cond_4
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v16, "171430330"

    aput-object v16, v1, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v10

    const/16 v16, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v16

    .line 2311
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2318
    :try_start_0
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v17, "permInfo":Landroid/content/pm/PermissionInfo;
    move-object v2, v0

    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    move-object v3, v10

    move v10, v4

    .end local v4    # "numRequestedPermissions":I
    .local v10, "numRequestedPermissions":I
    move v4, v11

    move v11, v5

    .end local v5    # "userId":I
    .local v11, "userId":I
    move v5, v15

    move/from16 v19, v6

    move v6, v11

    move/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2323
    goto :goto_6

    .line 2320
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v18    # "i":I
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 2321
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v18    # "i":I
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    .end local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2321
    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2307
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v18    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_5
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 2303
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v18    # "i":I
    :goto_6
    add-int/lit8 v3, v18, 0x1

    move v4, v10

    move v5, v11

    move-object/from16 v8, v16

    move/from16 v6, v19

    move/from16 v7, v20

    const/4 v10, 0x1

    const/4 v11, 0x0

    .end local v18    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_4

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_6
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 2301
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    add-int/lit8 v6, v19, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2327
    :cond_7
    return-void
.end method

.method private revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 14
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2341
    move-object v12, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 2342
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 2343
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 2344
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2349
    :cond_0
    iget-object v1, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2350
    :try_start_0
    iget-object v0, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 2351
    .local v5, "saw":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    iget-object v0, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2353
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2354
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    nop

    .line 2355
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2354
    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    move-object v1, p0

    move-object v3, p1

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    return-void

    .line 2358
    :cond_1
    iget-object v0, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 2360
    .local v4, "userId":I
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v9, 0x0

    move-object v6, p0

    move v10, v4

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2365
    goto :goto_1

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2363
    const-string v7, "PackageManager"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2358
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "userId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2367
    :cond_2
    return-void

    .line 2351
    .end local v5    # "saw":Lcom/android/server/pm/permission/BasePermission;
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2345
    :cond_3
    :goto_2
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .locals 17
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I

    .line 4119
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4120
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 4121
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 4124
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4125
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4126
    goto :goto_0

    .line 4128
    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 4129
    .local v6, "requestedPermCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 4130
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4131
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 4132
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_2

    .line 4133
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4129
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4136
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "requestedPermCount":I
    .end local v7    # "j":I
    :cond_3
    goto :goto_0

    .line 4138
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 4140
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 4141
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4142
    .local v6, "installPermCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_2
    const v8, 0x3fbff

    const/4 v9, 0x0

    if-ltz v7, :cond_6

    .line 4143
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4144
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 4145
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 4146
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_5

    .line 4147
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 4148
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4142
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4154
    .end local v7    # "i":I
    :cond_6
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 4157
    .local v7, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move v11, v9

    :goto_3
    if-ge v11, v10, :cond_a

    aget v12, v1, v11

    .line 4158
    .local v12, "userId":I
    nop

    .line 4159
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 4160
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 4161
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_4
    if-ltz v15, :cond_9

    .line 4162
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4163
    .local v16, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 4164
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    .line 4165
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v8, :cond_7

    .line 4166
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 4167
    const/4 v0, 0x0

    const v9, 0x3fbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4169
    invoke-static {v7, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    goto :goto_5

    .line 4165
    :cond_7
    const/4 v0, 0x0

    const v9, 0x3fbff

    goto :goto_5

    .line 4163
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_8
    move v0, v9

    const v9, 0x3fbff

    .line 4161
    .end local v16    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :goto_5
    add-int/lit8 v15, v15, -0x1

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_9
    move v0, v9

    move v9, v8

    .line 4157
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    add-int/lit8 v11, v11, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_3

    .line 4176
    :cond_a
    return-object v7

    .line 4122
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v6    # "installPermCount":I
    .end local v7    # "runtimePermissionChangedUserIds":[I
    :cond_b
    :goto_6
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "doGrant"    # Z
    .param p4, "userId"    # I

    .line 1920
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 1921
    return v0

    .line 1924
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1925
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 1926
    .local v2, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1927
    if-nez v2, :cond_1

    .line 1928
    return v0

    .line 1930
    :cond_1
    if-eqz p2, :cond_2

    .line 1931
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowserAsync(Ljava/lang/String;I)V

    goto :goto_0

    .line 1933
    :cond_2
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1934
    return v0

    .line 1937
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    .line 1938
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1939
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V

    .line 1941
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1943
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1926
    .end local v2    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I
    .locals 23
    .param p1, "origPs"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    .line 3408
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3409
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 3411
    .local v8, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v9

    .line 3412
    .local v9, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 3413
    .local v10, "numSplitPerms":I
    const/4 v0, 0x0

    .local v0, "splitPermNum":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 3414
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 3416
    .local v1, "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    .line 3417
    .local v2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3418
    .local v3, "numNewPerms":I
    const/4 v4, 0x0

    .local v4, "newPermNum":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 3419
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3421
    .local v5, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3422
    .local v11, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_0

    .line 3423
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 3424
    invoke-virtual {v8, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3418
    .end local v5    # "newPerm":Ljava/lang/String;
    .end local v11    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3413
    .end local v1    # "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v2    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "numNewPerms":I
    .end local v4    # "newPermNum":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3431
    .end local v0    # "splitPermNum":I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 3432
    .local v11, "numNewImplicitPerms":I
    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    .end local p5    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    .local v12, "newImplicitPermNum":I
    :goto_2
    if-ge v12, v11, :cond_a

    .line 3434
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 3435
    .local v14, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 3437
    .local v15, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v15, :cond_9

    .line 3438
    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3439
    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 3441
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v3

    .line 3442
    .local v3, "users":[I
    array-length v2, v3

    .line 3443
    .local v2, "numUsers":I
    const/4 v1, 0x0

    .local v1, "userNum":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 3444
    move-object/from16 v16, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .local v16, "pkgName":Ljava/lang/String;
    aget v7, v3, v1

    .line 3446
    .local v7, "userId":I
    move/from16 p5, v1

    .end local v1    # "userNum":I
    .local p5, "userNum":I
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3447
    const/16 v1, 0x80

    invoke-virtual {v6, v4, v7, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3451
    :cond_3
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v17

    .line 3453
    .end local v0    # "updatedUserIds":[I
    .local v17, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 3454
    .local v0, "inheritsFromInstallPerm":Z
    const/4 v1, 0x0

    .local v1, "sourcePermNum":I
    :goto_4
    move/from16 v18, v0

    .end local v0    # "inheritsFromInstallPerm":Z
    .local v18, "inheritsFromInstallPerm":Z
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3456
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3457
    const/4 v0, 0x1

    .line 3458
    .end local v18    # "inheritsFromInstallPerm":Z
    .restart local v0    # "inheritsFromInstallPerm":Z
    move/from16 v18, v0

    goto :goto_5

    .line 3455
    .end local v0    # "inheritsFromInstallPerm":Z
    .restart local v18    # "inheritsFromInstallPerm":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    goto :goto_4

    .line 3462
    .end local v1    # "sourcePermNum":I
    :cond_5
    :goto_5
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v18, :cond_6

    move/from16 v19, p5

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    goto :goto_6

    .line 3471
    :cond_6
    move-object/from16 v0, p0

    move/from16 v19, p5

    .end local p5    # "userNum":I
    .local v19, "userNum":I
    move-object v1, v15

    move/from16 v20, v2

    .end local v2    # "numUsers":I
    .local v20, "numUsers":I
    move-object v2, v14

    move-object/from16 v21, v3

    .end local v3    # "users":[I
    .local v21, "users":[I
    move-object/from16 v3, p2

    move-object/from16 v22, v4

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v22, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 3443
    .end local v7    # "userId":I
    .end local v18    # "inheritsFromInstallPerm":Z
    :goto_6
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    move-object/from16 v0, v17

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    .end local v19    # "userNum":I
    .local v1, "userNum":I
    goto :goto_3

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "updatedUserIds":[I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v0, "updatedUserIds":[I
    .restart local v2    # "numUsers":I
    .restart local v3    # "users":[I
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v7, "pkgName":Ljava/lang/String;
    :cond_7
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v7

    .end local v1    # "userNum":I
    .end local v2    # "numUsers":I
    .end local v3    # "users":[I
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v19    # "userNum":I
    .restart local v20    # "numUsers":I
    .restart local v21    # "users":[I
    .restart local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_7

    .line 3438
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v19    # "userNum":I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    goto :goto_7

    .line 3437
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v7

    .line 3433
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v14    # "newPerm":Ljava/lang/String;
    .end local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "pkgName":Ljava/lang/String;
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    goto/16 :goto_2

    .line 3479
    .end local v12    # "newImplicitPermNum":I
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method private setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 30
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p4, "callingUid"    # I
    .param p5, "whitelistFlags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3983
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3984
    invoke-static {v0, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 3985
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v14, :cond_0

    .line 3986
    return-void

    .line 3989
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 3990
    .local v15, "oldGrantedRestrictedPermissions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 3991
    .local v0, "updatePermissions":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 3993
    .local v8, "permissionCount":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_0
    array-length v1, v11

    if-ge v7, v1, :cond_12

    .line 3994
    aget v5, v11, v7

    .line 3995
    .local v5, "userId":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_11

    .line 3996
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 3998
    .local v3, "permissionName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    .line 4000
    .local v16, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4001
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_7

    .line 4004
    :cond_1
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4005
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4006
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v15, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4008
    :cond_2
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4011
    :cond_3
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    .line 4013
    .local v2, "oldFlags":I
    move v1, v2

    .line 4014
    .local v1, "newFlags":I
    const/16 v17, 0x0

    .line 4015
    .local v17, "mask":I
    move/from16 v18, p5

    move/from16 v6, v17

    .line 4016
    .end local v17    # "mask":I
    .local v6, "mask":I
    .local v18, "whitelistFlagsCopy":I
    :goto_2
    move/from16 v19, v0

    .end local v0    # "updatePermissions":Z
    .local v19, "updatePermissions":Z
    const/4 v0, 0x1

    if-eqz v18, :cond_a

    .line 4017
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v20

    move/from16 v21, v4

    .end local v4    # "j":I
    .local v21, "j":I
    shl-int v4, v0, v20

    .line 4018
    .local v4, "flag":I
    not-int v0, v4

    and-int v18, v18, v0

    .line 4019
    const/4 v0, 0x1

    if-eq v4, v0, :cond_8

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6

    const/4 v0, 0x4

    if-eq v4, v0, :cond_4

    goto :goto_3

    .line 4030
    :cond_4
    or-int/lit16 v0, v6, 0x2000

    .line 4031
    .end local v6    # "mask":I
    .local v0, "mask":I
    if-eqz v12, :cond_5

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4032
    or-int/lit16 v1, v1, 0x2000

    move v6, v0

    goto :goto_3

    .line 4034
    :cond_5
    and-int/lit16 v1, v1, -0x2001

    .line 4037
    move v6, v0

    goto :goto_3

    .line 4039
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_6
    or-int/lit16 v0, v6, 0x800

    .line 4040
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_7

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4041
    or-int/lit16 v1, v1, 0x800

    move v6, v0

    goto :goto_3

    .line 4043
    :cond_7
    and-int/lit16 v1, v1, -0x801

    move v6, v0

    goto :goto_3

    .line 4021
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_8
    or-int/lit16 v0, v6, 0x1000

    .line 4022
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_9

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4023
    or-int/lit16 v1, v1, 0x1000

    move v6, v0

    goto :goto_3

    .line 4025
    :cond_9
    and-int/lit16 v1, v1, -0x1001

    .line 4028
    move v6, v0

    .line 4048
    .end local v0    # "mask":I
    .end local v4    # "flag":I
    .restart local v6    # "mask":I
    :goto_3
    move/from16 v0, v19

    move/from16 v4, v21

    goto :goto_2

    .line 4050
    .end local v21    # "j":I
    .local v4, "j":I
    :cond_a
    move/from16 v21, v4

    .end local v4    # "j":I
    .restart local v21    # "j":I
    if-ne v2, v1, :cond_b

    .line 4051
    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_7

    .line 4054
    :cond_b
    const/16 v19, 0x1

    .line 4056
    and-int/lit16 v4, v2, 0x3800

    if-eqz v4, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    move/from16 v20, v4

    .line 4058
    .local v20, "wasWhitelisted":Z
    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move/from16 v22, v0

    .line 4065
    .local v22, "isWhitelisted":Z
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_e

    .line 4066
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    .line 4068
    .local v0, "isGranted":Z
    if-nez v22, :cond_e

    if-eqz v0, :cond_e

    .line 4069
    or-int/lit8 v6, v6, 0x4

    .line 4070
    and-int/lit8 v1, v1, -0x5

    .line 4076
    .end local v0    # "isGranted":Z
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v4, 0x17

    if-ge v0, v4, :cond_f

    if-nez v20, :cond_f

    if-eqz v22, :cond_f

    .line 4078
    or-int/lit8 v6, v6, 0x40

    .line 4079
    or-int/lit8 v1, v1, 0x40

    move/from16 v23, v1

    move/from16 v24, v6

    goto :goto_6

    .line 4082
    :cond_f
    move/from16 v23, v1

    move/from16 v24, v6

    .end local v1    # "newFlags":I
    .end local v6    # "mask":I
    .local v23, "newFlags":I
    .local v24, "mask":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v27, v2

    .end local v2    # "oldFlags":I
    .local v27, "oldFlags":I
    move-object v2, v4

    move-object/from16 v28, v3

    .end local v3    # "permissionName":Ljava/lang/String;
    .local v28, "permissionName":Ljava/lang/String;
    move/from16 v3, v24

    move/from16 v4, v23

    move/from16 v29, v5

    .end local v5    # "userId":I
    .local v29, "userId":I
    move/from16 v5, p4

    move/from16 v6, v29

    move/from16 v17, v7

    .end local v7    # "i":I
    .local v17, "i":I
    move/from16 v7, v25

    move/from16 v25, v8

    .end local v8    # "permissionCount":I
    .local v25, "permissionCount":I
    move-object/from16 v8, v26

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move/from16 v0, v19

    goto :goto_8

    .line 4000
    .end local v17    # "i":I
    .end local v18    # "whitelistFlagsCopy":I
    .end local v19    # "updatePermissions":Z
    .end local v20    # "wasWhitelisted":Z
    .end local v21    # "j":I
    .end local v22    # "isWhitelisted":Z
    .end local v23    # "newFlags":I
    .end local v24    # "mask":I
    .end local v25    # "permissionCount":I
    .end local v27    # "oldFlags":I
    .end local v28    # "permissionName":Ljava/lang/String;
    .end local v29    # "userId":I
    .local v0, "updatePermissions":Z
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_10
    move/from16 v19, v0

    move-object/from16 v28, v3

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 3995
    .end local v0    # "updatePermissions":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .end local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v21    # "j":I
    .restart local v25    # "permissionCount":I
    .restart local v29    # "userId":I
    :goto_7
    move/from16 v0, v19

    .end local v19    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :goto_8
    add-int/lit8 v4, v21, 0x1

    move/from16 v7, v17

    move/from16 v8, v25

    move/from16 v5, v29

    .end local v21    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    .end local v17    # "i":I
    .end local v25    # "permissionCount":I
    .end local v29    # "userId":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_11
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 3993
    .end local v0    # "updatePermissions":Z
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v25    # "permissionCount":I
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v19    # "updatePermissions":Z
    .end local v25    # "permissionCount":I
    .restart local v0    # "updatePermissions":Z
    .restart local v8    # "permissionCount":I
    :cond_12
    move/from16 v17, v7

    move/from16 v25, v8

    .line 4087
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v25    # "permissionCount":I
    if-eqz v0, :cond_17

    .line 4089
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2, v1, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4092
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v11

    if-ge v1, v2, :cond_16

    .line 4093
    aget v2, v11, v1

    .line 4094
    .local v2, "userId":I
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 4095
    .local v3, "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_13

    .line 4096
    move/from16 v16, v0

    goto :goto_b

    .line 4099
    :cond_13
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 4100
    .local v4, "oldGrantedCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    if-ge v5, v4, :cond_15

    .line 4101
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4103
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4104
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 4106
    .local v7, "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v6, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 4107
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .local v16, "updatePermissions":Z
    const/4 v0, 0x0

    invoke-virtual {v13, v8, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 4108
    goto :goto_b

    .line 4106
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_14
    move/from16 v16, v0

    .line 4100
    .end local v0    # "updatePermissions":Z
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v16    # "updatePermissions":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_15
    move/from16 v16, v0

    .line 4092
    .end local v0    # "updatePermissions":Z
    .end local v2    # "userId":I
    .end local v3    # "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "oldGrantedCount":I
    .end local v5    # "j":I
    .restart local v16    # "updatePermissions":Z
    :goto_b
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    goto :goto_9

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_16
    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    goto :goto_c

    .line 4087
    .end local v1    # "i":I
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_17
    move/from16 v16, v0

    .line 4113
    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    :goto_c
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1251
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const/4 v0, 0x7

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1256
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1257
    int-to-float v0, v11

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v11, :cond_1

    .line 1260
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhitelistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    .line 1266
    .local v14, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v14, :cond_2

    .line 1267
    return v1

    .line 1270
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1271
    .local v15, "callingUid":I
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v14, v15, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1272
    return v1

    .line 1275
    :cond_3
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v12

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move/from16 v16, v0

    .line 1278
    .local v16, "isCallerPrivileged":Z
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1279
    invoke-virtual {v0, v14, v15}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v17

    .line 1281
    .local v17, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_6

    if-eqz v16, :cond_5

    goto :goto_2

    .line 1283
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_6
    :goto_2
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_11

    .line 1288
    if-nez v16, :cond_8

    if-eqz v17, :cond_7

    goto :goto_3

    .line 1289
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying upgrade whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_8
    :goto_3
    nop

    .line 1294
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1295
    .local v0, "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 1301
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1302
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_e

    .line 1303
    if-eqz v0, :cond_a

    .line 1304
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    if-eqz v16, :cond_c

    .line 1302
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1306
    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Adding to upgrade whitelist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1296
    .end local v2    # "permissionCount":I
    .end local v3    # "i":I
    :cond_d
    :goto_5
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 1312
    :cond_e
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_11

    .line 1313
    if-nez v16, :cond_11

    if-eqz v17, :cond_f

    goto :goto_7

    .line 1314
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Modifying installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1297
    :cond_10
    :goto_6
    return v12

    .line 1321
    .end local v0    # "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1323
    .local v18, "identity":J
    :try_start_0
    new-array v3, v12, [I

    aput v11, v3, v1

    .line 1324
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1323
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    nop

    .line 1329
    return v12

    .line 1326
    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    throw v0
.end method

.method private systemReady()V
    .locals 7

    .line 4753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 4754
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_4

    .line 4759
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4760
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4762
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 4763
    .local v0, "grantPermissionsUserIds":[I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 4812
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4813
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 4763
    .end local v5    # "userId":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4818
    :cond_1
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v2, v0, v3

    .line 4819
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissions(I)V

    .line 4818
    .end local v2    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4821
    :cond_2
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v0, v1, :cond_3

    .line 4825
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->scheduleReadDefaultPermissionExceptions()V

    .line 4827
    :cond_3
    return-void

    .line 4755
    .end local v0    # "grantPermissionsUserIds":[I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4216
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 4218
    const/4 v0, 0x1

    .line 4219
    if-eqz p2, :cond_0

    .line 4220
    const/4 v1, 0x6

    goto :goto_0

    .line 4221
    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 4222
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4224
    .end local v0    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4225
    nop

    .line 4226
    return-void

    .line 4224
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4225
    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 19
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 748
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p8

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    return-void

    .line 752
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 754
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 760
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 761
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    .line 767
    and-int/lit8 v0, p3, -0x11

    .line 768
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 769
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 770
    and-int/lit8 v1, v1, -0x21

    .line 771
    and-int/lit8 v1, v1, -0x41

    .line 772
    and-int/lit16 v1, v1, -0x1001

    .line 773
    and-int/lit16 v1, v1, -0x801

    .line 774
    and-int/lit16 v1, v1, -0x2001

    .line 775
    and-int/lit16 v1, v1, -0x4001

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 766
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_3
    move/from16 v1, p3

    move/from16 v2, p4

    .line 778
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 779
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 781
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_14

    if-nez v4, :cond_4

    move-object/from16 v16, v4

    goto/16 :goto_7

    .line 785
    :cond_4
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_13

    .line 790
    iget-object v5, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 791
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 792
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    if-eqz v0, :cond_12

    .line 797
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 798
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 799
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 800
    .local v6, "hadState":Z
    :goto_2
    if-nez v6, :cond_b

    .line 801
    const/4 v15, 0x0

    .line 803
    .local v15, "isRequested":Z
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 804
    const/4 v15, 0x1

    .line 806
    :cond_6
    if-nez v15, :cond_9

    .line 808
    iget-object v14, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 809
    invoke-virtual {v14, v10, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 810
    .local v14, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v7, v14

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v16, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    if-ge v4, v7, :cond_a

    move/from16 v17, v7

    aget-object v7, v14, v4

    .line 811
    .local v7, "sharedUserPackageName":Ljava/lang/String;
    iget-object v11, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 813
    .local v11, "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v11, :cond_7

    .line 814
    move-object/from16 v18, v7

    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .local v18, "sharedUserPackageName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 815
    const/4 v15, 0x1

    .line 816
    goto :goto_4

    .line 813
    .end local v18    # "sharedUserPackageName":Ljava/lang/String;
    .restart local v7    # "sharedUserPackageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v7

    .line 810
    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .end local v11    # "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, p5

    move/from16 v7, v17

    goto :goto_3

    .line 806
    .end local v14    # "sharedUserPackageNames":[Ljava/lang/String;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v16, v4

    .line 820
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    :goto_4
    if-nez v15, :cond_c

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isn\'t requested by package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PackageManager"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 800
    .end local v15    # "isRequested":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_b
    move-object/from16 v16, v4

    .line 825
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_c
    nop

    .line 826
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v4

    .line 827
    .local v4, "permissionUpdated":Z
    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 828
    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 830
    :cond_d
    if-eqz v4, :cond_11

    if-eqz v13, :cond_11

    .line 833
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 834
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v12, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 835
    .local v7, "userUid":I
    invoke-virtual {v13, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 836
    .end local v7    # "userUid":I
    :cond_e
    goto :goto_5

    :cond_f
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-nez v7, :cond_10

    if-eqz v6, :cond_e

    .line 838
    :cond_10
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v11, 0x0

    aput v12, v7, v11

    .line 839
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v14

    .line 838
    invoke-virtual {v13, v7, v11, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    .line 842
    :cond_11
    :goto_5
    return-void

    .line 794
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_12
    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 792
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 786
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_13
    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_14
    move-object/from16 v16, v4

    .line 782
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PackageManager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4378
    if-nez p1, :cond_0

    .line 4379
    const/4 v0, 0x1

    return v0

    .line 4382
    :cond_0
    const/4 v0, 0x0

    .line 4383
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4384
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4385
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4386
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4387
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4388
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4389
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 4391
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4395
    goto :goto_0

    .line 4399
    :cond_2
    const/4 v0, 0x1

    .line 4402
    if-eqz p2, :cond_3

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4403
    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4404
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4403
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4406
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 4407
    .local v5, "userIds":[I
    array-length v6, v5

    .line 4408
    .local v6, "numUserIds":I
    const/4 v7, 0x0

    .local v7, "userIdNum":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 4409
    aget v8, v5, v7

    .line 4410
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v10, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;

    invoke-direct {v10, p0, v4, v8, p3}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4408
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4414
    .end local v5    # "userIds":[I
    .end local v6    # "numUserIds":I
    .end local v7    # "userIdNum":I
    :cond_4
    goto :goto_2

    .line 4415
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4429
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4431
    :cond_6
    if-nez v1, :cond_7

    .line 4432
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 4434
    :cond_7
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4435
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto/16 :goto_0

    .line 4436
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4437
    if-eqz v1, :cond_a

    .line 4438
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 4439
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4440
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4441
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4443
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4442
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4444
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4445
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 4446
    :try_start_1
    monitor-exit v6

    goto :goto_3

    .line 4448
    :cond_9
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4448
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 4451
    monitor-exit v6

    .line 4452
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 4451
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4454
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_a
    return v0

    .line 4436
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4511
    if-nez p1, :cond_0

    .line 4512
    const/4 v0, 0x1

    return v0

    .line 4514
    :cond_0
    const/4 v0, 0x0

    .line 4516
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4517
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4518
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4519
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4520
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4521
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4525
    goto :goto_0

    .line 4529
    :cond_1
    const/4 v0, 0x1

    .line 4530
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4531
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4532
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4531
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4535
    :cond_3
    if-nez v1, :cond_4

    .line 4536
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 4538
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4539
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 4540
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4541
    if-eqz v1, :cond_7

    .line 4542
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 4543
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4544
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4545
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4547
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4546
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4548
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4549
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 4550
    :try_start_1
    monitor-exit v6

    goto :goto_1

    .line 4552
    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4552
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 4555
    monitor-exit v6

    .line 4556
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 4555
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4558
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_7
    return v0

    .line 4540
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4196
    if-nez p2, :cond_0

    const/4 v0, 0x3

    move v5, v0

    goto :goto_0

    .line 4197
    :cond_0
    const/4 v0, 0x2

    move v5, v0

    :goto_0
    nop

    .line 4198
    .local v5, "flags":I
    nop

    .line 4199
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 4198
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4200
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 18
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4316
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    .line 4320
    .local v11, "permissionTreesSourcePackageChanged":Z
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v12

    .line 4323
    .local v12, "permissionSourcePackageChanged":Z
    or-int v0, v11, v12

    if-eqz v0, :cond_0

    .line 4326
    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    or-int/lit8 v0, p4, 0x1

    move v13, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_0

    .line 4323
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_0
    move/from16 v13, p4

    .line 4330
    .end local p4    # "flags":I
    .local v13, "flags":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->cacheBackgroundToForegoundPermissionMapping()V

    .line 4332
    const-wide/32 v14, 0x40000

    const-string/jumbo v0, "restorePermissionState"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4334
    and-int/lit8 v0, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    .line 4335
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    .line 4336
    .local v3, "replaceAll":Z
    :goto_1
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4347
    .end local v3    # "replaceAll":Z
    :cond_2
    if-eqz v9, :cond_5

    .line 4349
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4350
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v1, v13, 0x2

    if-eqz v1, :cond_3

    .line 4351
    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v16, v17

    goto :goto_2

    .line 4350
    :cond_3
    move-object/from16 v1, p3

    .line 4351
    :cond_4
    nop

    :goto_2
    move/from16 v2, v16

    .line 4352
    .local v2, "replace":Z
    invoke-direct {v7, v9, v2, v8, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_3

    .line 4347
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "replace":Z
    :cond_5
    move-object/from16 v1, p3

    .line 4354
    :goto_3
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4355
    return-void
.end method


# virtual methods
.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1080
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->addListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1086
    monitor-exit v0

    .line 1087
    return-void

    .line 1086
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 601
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 602
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 605
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 611
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 612
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 613
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 614
    .local v4, "added":Z
    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 615
    .local v5, "fixedLevel":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 616
    if-eqz v4, :cond_3

    .line 617
    new-instance v6, Lcom/android/server/pm/permission/BasePermission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_2

    .line 619
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 623
    :goto_2
    invoke-virtual {v3, v5, p1, v1}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v6

    .line 624
    .local v6, "changed":Z
    if-eqz v4, :cond_4

    .line 625
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 627
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "fixedLevel":I
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    if-eqz v6, :cond_5

    .line 629
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 631
    :cond_5
    return v4

    .line 620
    .end local v6    # "changed":Z
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 627
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 603
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1193
    return v1

    .line 1196
    :cond_0
    nop

    .line 1197
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1198
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1199
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1201
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1202
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1206
    :cond_2
    return v1
.end method

.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 1030
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingUid()I

    move-result v11

    .line 1031
    .local v11, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingPid()I

    move-result v12

    .line 1032
    .local v12, "callingPid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v13, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    if-ne v11, v10, :cond_0

    if-ne v12, v9, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1037
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v13

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v8, v0, v2

    const/4 v2, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1034
    const-string v2, "Calling uid %d, pid %d cannot check device identifier access for package %s (uid=%d, pid=%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "response":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    .end local v0    # "response":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1043
    .local v14, "appId":I
    const/16 v0, 0x3e8

    if-eq v14, v0, :cond_7

    if-nez v14, :cond_2

    move/from16 v16, v14

    goto :goto_2

    .line 1047
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    .line 1049
    return v13

    .line 1053
    :cond_3
    if-eqz v8, :cond_5

    .line 1055
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v6

    .line 1056
    .local v6, "token":J
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/AppOpsManager;

    .line 1059
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    :try_start_0
    const-string v3, "android:read_device_identifiers"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v15

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .local v13, "token":J
    .local v16, "appId":I
    move-object/from16 v6, p3

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 1061
    nop

    .line 1064
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1061
    const/4 v0, 0x0

    return v0

    .line 1064
    :cond_4
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1065
    nop

    .line 1068
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 1069
    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1070
    .local v2, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1064
    .end local v2    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v13    # "token":J
    .end local v16    # "appId":I
    .restart local v6    # "token":J
    .restart local v14    # "appId":I
    :catchall_1
    move-exception v0

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .restart local v13    # "token":J
    .restart local v16    # "appId":I
    :goto_1
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1065
    throw v0

    .line 1053
    .end local v13    # "token":J
    .end local v15    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_5
    move/from16 v16, v14

    .line 1075
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 1043
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_7
    move/from16 v16, v14

    .line 1044
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 891
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 895
    return v0

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 901
    .local v0, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    if-nez v0, :cond_2

    .line 903
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 905
    :cond_2
    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 901
    .end local v0    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 892
    :cond_3
    :goto_0
    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 967
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 968
    return v0

    .line 970
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 971
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v2, v1}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 972
    return v0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 978
    .local v2, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    if-nez v2, :cond_2

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 982
    :cond_2
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v2, p1, p2, v0}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I

    move-result v0

    return v0

    .line 978
    .end local v2    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 528
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 533
    .local v2, "n":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 535
    .local v5, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    invoke-static {v5, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    nop

    .end local v5    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    goto :goto_0

    .line 537
    :cond_1
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 538
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 507
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3543
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3538
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4880
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getDefaultBrowser(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .line 1892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1893
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 1894
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1898
    return-object v2

    .line 1901
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1902
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 1903
    .local v3, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    .line 1903
    .end local v3    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 658
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 659
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 546
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 547
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x0

    return-object v1

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 552
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 551
    invoke-static {v2, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 553
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 561
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 562
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 563
    return-object v2

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 567
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_1

    .line 568
    monitor-exit v1

    return-object v2

    .line 570
    :cond_1
    nop

    .line 571
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v2

    .line 570
    invoke-direct {p0, v2, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v2

    .line 572
    .local v2, "adjustedProtectionLevel":I
    invoke-virtual {v3, v2, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 573
    .end local v2    # "adjustedProtectionLevel":I
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 3485
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 3484
    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1102
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1107
    int-to-float v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1109
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1110
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWhitelistedRestrictedPermissions for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1116
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_1

    .line 1117
    return-object v4

    .line 1120
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1121
    .local v7, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1122
    return-object v4

    .line 1124
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1127
    .local v8, "isCallerPrivileged":Z
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1128
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v9

    .line 1130
    .local v9, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    .line 1132
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_5
    :goto_1
    and-int/lit8 v0, v2, 0x6

    if-eqz v0, :cond_7

    .line 1138
    if-nez v8, :cond_7

    if-eqz v9, :cond_6

    goto :goto_2

    .line 1139
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying upgrade or installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1147
    .local v10, "identity":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1148
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v0, :cond_8

    .line 1150
    nop

    .line 1181
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    return-object v4

    .line 1153
    :cond_8
    const/4 v4, 0x0

    .line 1154
    .local v4, "queryFlags":I
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_9

    .line 1155
    or-int/lit16 v4, v4, 0x1000

    .line 1157
    :cond_9
    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_a

    .line 1158
    or-int/lit16 v4, v4, 0x2000

    .line 1160
    :cond_a
    and-int/lit8 v12, v2, 0x2

    if-eqz v12, :cond_b

    .line 1161
    or-int/lit16 v4, v4, 0x800

    .line 1164
    :cond_b
    const/4 v12, 0x0

    .line 1166
    .local v12, "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 1167
    .local v13, "permissionCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v13, :cond_e

    .line 1168
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1169
    .local v15, "permissionName":Ljava/lang/String;
    nop

    .line 1170
    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v16

    .line 1171
    .local v16, "currentFlags":I
    and-int v17, v16, v4

    if-eqz v17, :cond_d

    .line 1172
    if-nez v12, :cond_c

    .line 1173
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v17

    .line 1175
    :cond_c
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "currentFlags":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1179
    .end local v14    # "i":I
    :cond_e
    nop

    .line 1181
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    return-object v12

    .line 1181
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "queryFlags":I
    .end local v12    # "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "permissionCount":I
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    throw v0
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1997
    .local v0, "callingUid":I
    nop

    .line 1998
    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1999
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2000
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2002
    monitor-exit v1

    .line 2003
    return-void

    .line 2002
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1949
    .local v0, "callingUid":I
    nop

    .line 1950
    const-string v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1951
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1952
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1954
    monitor-exit v1

    .line 1955
    return-void

    .line 1954
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1960
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1962
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1963
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1965
    monitor-exit v1

    .line 1966
    return-void

    .line 1965
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1972
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1974
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1975
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1978
    monitor-exit v1

    .line 1979
    return-void

    .line 1978
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1408
    .local v7, "callingUid":I
    nop

    .line 1409
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1412
    .local v3, "overridePolicy":Z
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1414
    return-void
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1388
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1389
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1391
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1392
    return v4

    .line 1395
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1397
    .local v5, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v3, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    move v4, v7

    .line 1401
    :cond_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    return v4

    .line 1401
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    throw v3
.end method

.method public isPermissionEnforced(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2045
    const/4 v0, 0x1

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2112
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2119
    return v1

    .line 2122
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2123
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2124
    return v1

    .line 2127
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2129
    .local v2, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2130
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 2132
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2130
    return v1

    .line 2132
    .end local v4    # "flags":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    throw v1
.end method

.method public synthetic lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2001
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 2000
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$3$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1952
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1953
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 1952
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledImsServices$4$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1964
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 1963
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$5$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1976
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 1975
    return-void
.end method

.method public synthetic lambda$resetRuntimePermissions$1$PermissionManagerService(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1699
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2196
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    return-void

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2202
    monitor-exit v0

    .line 2203
    return-void

    .line 2202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$6$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1989
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 1988
    return-void
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromLuiApps$8$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2011
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2012
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 2011
    return-void
.end method

.method public synthetic lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService([ZIIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "changed"    # [Z
    .param p2, "userId"    # I
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 872
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 873
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 874
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 875
    return-void

    .line 877
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 878
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    aget-boolean v3, p1, v2

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p1, v2

    .line 880
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 881
    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$12$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 6
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4411
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4412
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4411
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$13$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4416
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4417
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4416
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4418
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 4419
    return-void

    .line 4421
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 4422
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4423
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 4424
    const/4 v2, -0x1

    const v3, 0x3fbff

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4427
    :cond_1
    return-void
.end method

.method public synthetic lambda$updatePermissions$11$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4337
    if-ne p6, p1, :cond_0

    .line 4338
    return-void

    .line 4341
    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4342
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4343
    .local v1, "replace":Z
    :goto_0
    invoke-direct {p0, p6, v1, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4344
    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 580
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 581
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 582
    return-object v2

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    monitor-exit v1

    return-object v2

    .line 588
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 590
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 591
    .local v5, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 592
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    goto :goto_0

    .line 595
    :cond_3
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v3

    .line 596
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->removeListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1096
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1092
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 7
    .param p1, "permName"    # Ljava/lang/String;

    .line 636
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 637
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 641
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 642
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 643
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_0

    .line 644
    monitor-exit v2

    return-void

    .line 646
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 653
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 638
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1233
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1236
    return v1

    .line 1239
    :cond_0
    nop

    .line 1240
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1241
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1245
    :cond_1
    return v1
.end method

.method public resetRuntimePermissions()V
    .locals 7

    .line 1684
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1689
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "resetRuntimePermissions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1697
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 1698
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 1697
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1701
    :cond_1
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1985
    .local v0, "callingUid":I
    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1987
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1988
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1991
    monitor-exit v1

    .line 1992
    return-void

    .line 1991
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2008
    .local v0, "callingUid":I
    nop

    .line 2009
    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2010
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2013
    monitor-exit v1

    .line 2014
    return-void

    .line 2013
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1572
    .local v8, "callingUid":I
    nop

    .line 1573
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1576
    .local v3, "overridePolicy":Z
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1578
    return-void
.end method

.method public setAutoRevokeWhitelisted(Ljava/lang/String;ZI)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z
    .param p3, "userId"    # I

    .line 1335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1338
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1339
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1341
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1342
    return v4

    .line 1345
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x62

    .line 1346
    invoke-virtual {v3, v5, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1350
    return v4

    .line 1353
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1355
    .local v5, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    .line 1357
    const/4 v8, 0x1

    if-eqz p2, :cond_2

    move v4, v8

    .line 1355
    :cond_2
    invoke-virtual {v3, v7, v2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1360
    nop

    .line 1361
    return v8

    .line 1359
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1360
    throw v3
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1909
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method public setPermissionEnforced(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "enforced"    # Z

    .line 2019
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "setPermissionEnforced"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->setReadExternalStorageEnforced(Z)V

    .line 2025
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2026
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 2027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2029
    .local v1, "token":J
    :try_start_0
    const-string/jumbo v3, "setPermissionEnforcement"

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->killProcessesBelowForeground(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2032
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    throw v3

    .line 2030
    :catch_0
    move-exception v3

    .line 2032
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2035
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "token":J
    :cond_0
    nop

    .line 2038
    return-void

    .line 2036
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No selective enforcement for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2059
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2060
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2061
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShowRequestPermissionRationale for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x10000000

    .line 2067
    invoke-virtual {v0, v3, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 2068
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_1

    .line 2069
    return v8

    .line 2072
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 2074
    return v8

    .line 2079
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2081
    .local v9, "identity":J
    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v0

    .line 2083
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2084
    nop

    .line 2086
    const/16 v11, 0x16

    .line 2090
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_3

    .line 2091
    return v8

    .line 2094
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2096
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    .line 2097
    :try_start_2
    invoke-interface {v0, v8, v9, v3, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    .line 2099
    nop

    .line 2104
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    return v14

    .line 2101
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2096
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_4
    move-wide v15, v9

    .line 2104
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_5
    nop

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    goto :goto_2

    .line 2104
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_0
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_4

    .line 2101
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_1
    move-exception v0

    move-wide v15, v9

    .line 2102
    .end local v9    # "identity":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "identity":J
    :goto_1
    :try_start_3
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2104
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2107
    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_6

    move v8, v14

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    return v8

    .line 2104
    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    throw v0

    .line 2083
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_2
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2084
    throw v7
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJII)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeoutMillis"    # J
    .param p5, "importanceToResetTimer"    # I
    .param p6, "importanceToKeepSessionAlive"    # I

    .line 3507
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3514
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3518
    nop

    .line 3519
    return-void

    .line 3517
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3518
    throw v2
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3523
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3530
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3533
    nop

    .line 3534
    return-void

    .line 3532
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3533
    throw v2
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 12
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 699
    move-object v10, p0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v11

    .line 700
    .local v11, "callingUid":I
    const/4 v1, 0x0

    .line 702
    .local v1, "overridePolicy":Z
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    if-eqz v11, :cond_3

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 705
    .local v2, "callingIdentity":J
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 706
    if-eqz p5, :cond_0

    .line 707
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_1

    .line 719
    :goto_0
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "overridePolicy":Z
    .local v0, "overridePolicy":Z
    goto :goto_1

    .line 713
    .end local v0    # "overridePolicy":Z
    .restart local v1    # "overridePolicy":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "overridePolicy":Z
    .end local v2    # "callingIdentity":J
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "checkAdjustPolicyFlagPermission":Z
    .end local p6    # "userId":I
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .restart local v1    # "overridePolicy":Z
    .restart local v2    # "callingIdentity":J
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "checkAdjustPolicyFlagPermission":Z
    .restart local p6    # "userId":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    throw v0

    .line 722
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    move v0, v1

    goto :goto_2

    .line 726
    .end local v2    # "callingIdentity":J
    :cond_3
    move v0, v1

    .end local v1    # "overridePolicy":Z
    .restart local v0    # "overridePolicy":Z
    :goto_2
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 729
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 13
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 851
    move-object v7, p0

    move/from16 v8, p3

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v9

    .line 852
    .local v9, "callingUid":I
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v8}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    return-void

    .line 856
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 858
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v9

    move/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 865
    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_1

    .line 866
    move v4, p1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    .line 867
    .local v4, "effectiveFlagMask":I
    :goto_0
    if-eq v9, v0, :cond_2

    .line 868
    move v5, p2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    .line 870
    .local v5, "effectiveFlagValues":I
    :goto_1
    const/4 v6, 0x1

    new-array v10, v6, [Z

    .line 871
    .local v10, "changed":[Z
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ZIII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 883
    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_3

    .line 884
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v6, [I

    aput v8, v2, v0

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 886
    :cond_3
    return-void
.end method
