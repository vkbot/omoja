.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_WHITELISTED:Ljava/lang/String; = "whitelisted"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTENT_QUERY_FLAGS:I = 0xc2000

.field private static final DEFAULT_PACKAGE_INFO_QUERY_FLAGS:I = 0x2000b000

.field private static final FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 128
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 139
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 146
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 159
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 165
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 170
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 176
    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 186
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 191
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 196
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 201
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 294
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 295
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 307
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 308
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 98
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1516
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .locals 6

    .line 1353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1355
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1358
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1359
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1362
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1363
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1364
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1366
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1367
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1368
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1370
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1371
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1375
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.embedded"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1376
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1377
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1378
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1381
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    new-array v2, v5, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_0
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1068
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 1071
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1009
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1013
    return-object v1

    .line 1015
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1016
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 1010
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1002
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 846
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1028
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1029
    return-object v1

    .line 1031
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1032
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1033
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1034
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1035
    .local v5, "handlerPackage":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1036
    return-object v5

    .line 1032
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1039
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1021
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v0, "syncAdapterPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1048
    .local v1, "homeIntent":Landroid/content/Intent;
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 1049
    .local v4, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1053
    .local v5, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 1054
    goto :goto_1

    .line 1057
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1058
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    .end local v4    # "syncAdapterPackageName":Ljava/lang/String;
    .end local v5    # "homeActivity":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    :cond_2
    return-object v0
.end method

.method private getKnownPackages(II)[Ljava/lang/String;
    .locals 1
    .param p1, "knownPkgId"    # I
    .param p2, "userId"    # I

    .line 861
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 19
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I

    .line 1311
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1318
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1319
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    const/4 v0, 0x0

    .line 1324
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1325
    .local v11, "exceptionCount":I
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_4

    .line 1326
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 1327
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1328
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/List;

    .line 1329
    .local v15, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .line 1330
    .local v8, "permissionGrantCount":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "j":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1331
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1332
    .local v6, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    iget-object v1, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which isn\'t dangerous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move/from16 v17, v7

    move/from16 v16, v8

    goto :goto_3

    .line 1337
    :cond_1
    if-nez v0, :cond_2

    .line 1338
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    goto :goto_2

    .line 1340
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1342
    :goto_2
    iget-object v1, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-boolean v5, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v4, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v17, v4

    move-object v4, v0

    move-object/from16 v18, v6

    .end local v6    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .local v18, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "j":I
    .local v17, "j":I
    move/from16 v7, v16

    move/from16 v16, v8

    .end local v8    # "permissionGrantCount":I
    .local v16, "permissionGrantCount":I
    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1330
    .end local v18    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    :goto_3
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v16

    .end local v17    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .end local v16    # "permissionGrantCount":I
    .restart local v8    # "permissionGrantCount":I
    :cond_3
    move/from16 v17, v7

    move/from16 v16, v8

    .line 1325
    .end local v7    # "j":I
    .end local v8    # "permissionGrantCount":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v15    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v12    # "i":I
    :cond_4
    return-void

    .line 1321
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "exceptionCount":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 905
    if-nez p2, :cond_0

    .line 906
    return-void

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 911
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "dialerPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 866
    if-nez p2, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 870
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 871
    .local v0, "isPhonePermFixed":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 872
    new-array v3, v1, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_0

    .line 875
    :cond_1
    new-array v3, v1, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 877
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 879
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 915
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 918
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "smsPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 883
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 886
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "useOpenWifiPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 890
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 892
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 38
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I

    .line 489
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default platform handlers for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 502
    .local v0, "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v11, v2

    .line 503
    .local v11, "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v12, v2

    .line 504
    .local v12, "voiceInteractionPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v13, v2

    .line 505
    .local v13, "smsAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v14, v2

    .line 506
    .local v14, "dialerAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v15, v2

    .line 507
    .local v15, "simCallManagerPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v7, v2

    .line 508
    .local v7, "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    move-object v6, v2

    .line 509
    .local v6, "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    if-eqz v12, :cond_0

    .line 512
    invoke-interface {v12, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    .line 513
    .local v5, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 514
    invoke-interface {v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v4, v2

    .line 515
    .local v4, "locationPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 516
    invoke-interface {v11, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v3, v2

    .line 517
    .local v3, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 518
    invoke-interface {v13, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 519
    .local v2, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v14, :cond_4

    .line 520
    invoke-interface {v14, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v17, v16

    .line 521
    .local v17, "dialerAppPackageNames":[Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 522
    invoke-interface {v15, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v18, v16

    .line 523
    .local v18, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 524
    invoke-interface {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v19, v16

    .line 525
    .local v19, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 526
    const-string v1, "com.android.contacts"

    invoke-interface {v6, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 527
    .local v1, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    if-eqz v6, :cond_8

    .line 528
    move-object/from16 v20, v0

    .end local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v20, "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    const-string v0, "com.android.calendar"

    invoke-interface {v6, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_8

    .end local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    :cond_8
    move-object/from16 v20, v0

    .end local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, v16

    .line 531
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    nop

    .line 532
    move-object/from16 v16, v6

    .end local v6    # "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    .local v16, "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    const/4 v6, 0x2

    invoke-direct {v8, v6, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    move-object/from16 v21, v5

    .end local v5    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "voiceInteractPackageNames":[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v23, v3

    .end local v3    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v23, "locationExtraPackageNames":[Ljava/lang/String;
    new-array v3, v5, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v24, v3, v5

    .line 531
    invoke-direct {v8, v9, v6, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 537
    const/4 v6, 0x3

    invoke-direct {v8, v6, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "verifier":Ljava/lang/String;
    move-object/from16 v26, v4

    const/4 v6, 0x1

    .end local v4    # "locationPackageNames":[Ljava/lang/String;
    .local v26, "locationPackageNames":[Ljava/lang/String;
    new-array v4, v6, [Ljava/util/Set;

    sget-object v25, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v25, v4, v5

    invoke-direct {v8, v9, v3, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 540
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v6, v5

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-direct {v8, v9, v3, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 543
    nop

    .line 544
    invoke-direct {v8, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v28, v5, v27

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v25, 0x1

    aput-object v28, v5, v25

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x2

    aput-object v28, v5, v22

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x3

    aput-object v28, v5, v6

    .line 543
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 550
    nop

    .line 551
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v5, v27

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v24, v5, v6

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x2

    aput-object v24, v5, v22

    .line 550
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 555
    nop

    .line 556
    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v5, v27

    .line 555
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 561
    nop

    .line 562
    const-string/jumbo v4, "media"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 561
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 566
    nop

    .line 567
    const-string v4, "downloads"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 566
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 571
    nop

    .line 572
    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 571
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 577
    nop

    .line 578
    const-string v4, "com.android.externalstorage.documents"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 577
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 582
    nop

    .line 583
    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v27

    .line 582
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 587
    move-object/from16 v6, v17

    .end local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v6, "dialerAppPackageNames":[Ljava/lang/String;
    if-nez v6, :cond_9

    .line 588
    nop

    .line 589
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "dialerPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 591
    .end local v4    # "dialerPackage":Ljava/lang/String;
    move-object/from16 v17, v3

    goto :goto_a

    .line 592
    :cond_9
    array-length v4, v6

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_a

    move-object/from16 v17, v3

    .end local v3    # "verifier":Ljava/lang/String;
    .local v17, "verifier":Ljava/lang/String;
    aget-object v3, v6, v5

    .line 593
    .local v3, "dialerAppPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 592
    .end local v3    # "dialerAppPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    goto :goto_9

    .end local v17    # "verifier":Ljava/lang/String;
    .local v3, "verifier":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v3

    .line 598
    .end local v3    # "verifier":Ljava/lang/String;
    .restart local v17    # "verifier":Ljava/lang/String;
    :goto_a
    move-object/from16 v5, v18

    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .local v5, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 599
    array-length v3, v5

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_b

    move/from16 v18, v3

    aget-object v3, v5, v4

    .line 600
    .local v3, "simCallManagerPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 599
    .end local v3    # "simCallManagerPackageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    goto :goto_b

    .line 606
    :cond_b
    move-object/from16 v4, v19

    .end local v19    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v4, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 607
    array-length v3, v4

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_c
    if-ge v5, v3, :cond_d

    move/from16 v19, v3

    aget-object v3, v4, v5

    .line 608
    .local v3, "useOpenWifiPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 607
    .end local v3    # "useOpenWifiPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    goto :goto_c

    .line 606
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v5

    .line 614
    .end local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_d
    if-nez v2, :cond_e

    .line 615
    const-string v3, "android.intent.category.APP_MESSAGING"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "smsPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 618
    .end local v3    # "smsPackage":Ljava/lang/String;
    goto :goto_e

    .line 619
    :cond_e
    array-length v3, v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_f

    move/from16 v19, v3

    aget-object v3, v2, v5

    .line 620
    .restart local v3    # "smsPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 619
    .end local v3    # "smsPackage":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    goto :goto_d

    .line 625
    :cond_f
    :goto_e
    nop

    .line 626
    const-string v3, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v2

    const/4 v5, 0x1

    .end local v2    # "smsAppPackageNames":[Ljava/lang/String;
    .local v19, "smsAppPackageNames":[Ljava/lang/String;
    new-array v2, v5, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v2, v27

    .line 625
    invoke-direct {v8, v9, v3, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 630
    nop

    .line 631
    const-string v2, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v3, v27

    .line 630
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 636
    nop

    .line 637
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v5, v27

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v3, v5, v24

    .line 636
    invoke-direct {v8, v9, v2, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 642
    nop

    .line 643
    const-string v2, "com.android.calendar"

    invoke-direct {v8, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "calendarProvider":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v2, v3, v24

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v30, v4

    const/4 v4, 0x1

    .end local v4    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v30, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    aput-object v2, v3, v4

    invoke-direct {v8, v9, v5, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 646
    new-array v2, v4, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v24

    invoke-direct {v8, v9, v5, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 650
    nop

    .line 651
    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v24

    .line 650
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 655
    nop

    .line 656
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v24

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v31, v0

    const/4 v0, 0x1

    .end local v0    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v31, "calendarSyncAdapterPackages":[Ljava/lang/String;
    aput-object v3, v4, v0

    .line 655
    invoke-direct {v8, v9, v2, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 661
    nop

    .line 662
    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v3, v24

    .line 661
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 666
    nop

    .line 667
    const-string v0, "com.android.contacts"

    invoke-direct {v8, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "contactsProviderPackage":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v24

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 670
    new-array v2, v4, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v24

    invoke-direct {v8, v9, v0, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 673
    nop

    .line 674
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v24

    .line 673
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 679
    nop

    .line 680
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v22, v3, v24

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v22, v3, v24

    .line 679
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 685
    const/4 v3, 0x4

    invoke-direct {v8, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    .local v2, "browserPackage":Ljava/lang/String;
    if-nez v2, :cond_11

    .line 688
    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 691
    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto :goto_f

    .line 690
    :cond_10
    move-object/from16 v22, v2

    goto :goto_f

    .line 687
    :cond_11
    move-object/from16 v22, v2

    .line 694
    .end local v2    # "browserPackage":Ljava/lang/String;
    .local v22, "browserPackage":Ljava/lang/String;
    :goto_f
    const/16 v24, 0x0

    const/16 v32, 0x1

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v25, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v25, v2, v27

    move-object/from16 v25, v1

    .end local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v25, "contactsSyncAdapterPackages":[Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v33, v2

    move-object/from16 v2, p1

    move/from16 v29, v3

    move-object/from16 v34, v23

    const/16 v23, 0x4

    .end local v23    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v34, "locationExtraPackageNames":[Ljava/lang/String;
    move-object/from16 v3, v22

    move-object/from16 v35, v26

    move-object/from16 v26, v30

    move/from16 v30, v4

    .end local v30    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v26, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v35, "locationPackageNames":[Ljava/lang/String;
    move/from16 v4, p2

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v5

    move/from16 v37, v29

    move-object/from16 v29, v11

    move/from16 v11, v37

    .end local v5    # "calendarProvider":Ljava/lang/String;
    .end local v11    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v0, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "calendarProvider":Ljava/lang/String;
    .local v29, "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v36, "contactsProviderPackage":Ljava/lang/String;
    move/from16 v5, v24

    move-object/from16 v23, v6

    .end local v6    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v23, "dialerAppPackageNames":[Ljava/lang/String;
    move/from16 v6, v32

    move-object/from16 v24, v7

    .end local v7    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v24, "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    move-object/from16 v7, v33

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 698
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v0, :cond_13

    .line 699
    array-length v3, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_12

    aget-object v4, v0, v5

    .line 700
    .local v4, "voiceInteractPackageName":Ljava/lang/String;
    new-array v6, v1, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v7, v6, v27

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x2

    aput-object v7, v6, v1

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x3

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v2

    invoke-direct {v8, v9, v4, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 699
    .end local v4    # "voiceInteractPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    const/4 v11, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x2

    const/4 v11, 0x4

    goto :goto_11

    .line 698
    :cond_13
    const/4 v1, 0x2

    const/4 v11, 0x4

    .line 706
    :goto_11
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 708
    nop

    .line 709
    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 708
    invoke-direct {v8, v9, v3, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 715
    :cond_14
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 717
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    nop

    .line 718
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 717
    invoke-direct {v8, v9, v4, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 722
    move-object/from16 v4, v35

    .end local v35    # "locationPackageNames":[Ljava/lang/String;
    .local v4, "locationPackageNames":[Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 723
    array-length v5, v4

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v5, :cond_15

    aget-object v7, v4, v6

    .line 724
    .local v7, "packageName":Ljava/lang/String;
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/util/Set;

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v33, v2, v27

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v30, 0x1

    aput-object v33, v2, v30

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v33, v2, v1

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v35, 0x3

    aput-object v33, v2, v35

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v33, v2, v11

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v32, 0x5

    aput-object v33, v2, v32

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x6

    aput-object v33, v2, v28

    const/16 v33, 0x7

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v35, v2, v33

    invoke-direct {v8, v9, v7, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 728
    new-array v2, v1, [Ljava/util/Set;

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v33, v2, v27

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/16 v30, 0x1

    aput-object v33, v2, v30

    invoke-direct {v8, v9, v7, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 723
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x5

    goto :goto_12

    .line 732
    :cond_15
    move-object/from16 v2, v34

    .end local v34    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v2, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v2, :cond_16

    .line 734
    array-length v5, v2

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_16

    aget-object v7, v2, v6

    .line 735
    .restart local v7    # "packageName":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v1, v11, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v11, v1, v27

    invoke-direct {v8, v9, v7, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 734
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x2

    const/4 v11, 0x4

    goto :goto_13

    .line 741
    :cond_16
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    const-string v6, "foo.mp3"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "audio/mpeg"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 744
    .local v1, "musicIntent":Landroid/content/Intent;
    nop

    .line 745
    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 744
    invoke-direct {v8, v9, v5, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 749
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 751
    const-string v6, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 752
    .local v5, "homeIntent":Landroid/content/Intent;
    nop

    .line 753
    invoke-direct {v8, v9, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v28, "voiceInteractPackageNames":[Ljava/lang/String;
    aput-object v7, v11, v0

    .line 752
    invoke-direct {v8, v9, v6, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 757
    iget-object v6, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 760
    const-string v6, "android.intent.category.HOME_MAIN"

    invoke-direct {v8, v9, v6, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, "wearPackage":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v11, v0

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    aput-object v7, v11, v0

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x2

    aput-object v7, v11, v0

    invoke-direct {v8, v9, v6, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 764
    const/4 v7, 0x1

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v7, v11, v27

    invoke-direct {v8, v9, v6, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 767
    nop

    .line 768
    const-string v7, "com.android.fitness.TRACK"

    invoke-direct {v8, v9, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-array v11, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v11, v27

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v33, v1

    const/4 v1, 0x1

    .end local v1    # "musicIntent":Landroid/content/Intent;
    .local v33, "musicIntent":Landroid/content/Intent;
    aput-object v0, v11, v1

    .line 767
    invoke-direct {v8, v9, v7, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_14

    .line 757
    .end local v6    # "wearPackage":Ljava/lang/String;
    .end local v33    # "musicIntent":Landroid/content/Intent;
    .restart local v1    # "musicIntent":Landroid/content/Intent;
    :cond_17
    move/from16 v27, v0

    move-object/from16 v33, v1

    const/4 v1, 0x1

    .line 773
    .end local v1    # "musicIntent":Landroid/content/Intent;
    .restart local v33    # "musicIntent":Landroid/content/Intent;
    :goto_14
    new-array v0, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v27

    const-string v1, "com.android.printspooler"

    invoke-direct {v8, v9, v1, v10, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 777
    nop

    .line 778
    const-string v0, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v6, v27

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 777
    invoke-direct {v8, v9, v0, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    const-string/jumbo v1, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 785
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    nop

    .line 786
    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x1

    aput-object v6, v7, v11

    .line 785
    invoke-direct {v8, v9, v1, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 790
    nop

    .line 791
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v11, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v7, v6, v27

    .line 790
    invoke-direct {v8, v9, v1, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 796
    new-array v1, v11, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v1, v27

    const-string v6, "com.android.companiondevicemanager"

    invoke-direct {v8, v9, v6, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 801
    nop

    .line 802
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v11, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v27

    .line 801
    invoke-direct {v8, v9, v1, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 808
    const/4 v1, 0x5

    invoke-direct {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v6, :cond_18

    aget-object v11, v1, v7

    .line 809
    .local v11, "textClassifierPackage":Ljava/lang/String;
    move-object/from16 v32, v0

    move-object/from16 v34, v1

    const/4 v0, 0x2

    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .local v32, "nfcTagIntent":Landroid/content/Intent;
    new-array v1, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v0, v1, v27

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v30, 0x1

    aput-object v0, v1, v30

    invoke-direct {v8, v9, v11, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 808
    .end local v11    # "textClassifierPackage":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    goto :goto_15

    .line 814
    .end local v32    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v0    # "nfcTagIntent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v32, v0

    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v32    # "nfcTagIntent":Landroid/content/Intent;
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 815
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getContentCaptureServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "contentCapturePackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 817
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v1, v7

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x3

    aput-object v6, v1, v7

    invoke-direct {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 823
    :cond_19
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 824
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 826
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v11, v7, v27

    invoke-direct {v8, v9, v1, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_16

    .line 825
    :cond_1a
    const/4 v6, 0x1

    const/16 v27, 0x0

    .line 832
    :goto_16
    new-array v7, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v7, v27

    const-string v6, "com.android.sharedstoragebackup"

    invoke-direct {v8, v9, v6, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 836
    iget-object v6, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 839
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v11, v7, v27

    invoke-direct {v8, v9, v6, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 842
    :cond_1b
    return-void

    .line 509
    .end local v0    # "contentCapturePackageName":Ljava/lang/String;
    .end local v1    # "attentionServicePackageName":Ljava/lang/String;
    .end local v2    # "locationExtraPackageNames":[Ljava/lang/String;
    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v4    # "locationPackageNames":[Ljava/lang/String;
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .end local v6    # "systemCaptionsServicePackageName":Ljava/lang/String;
    .end local v12    # "voiceInteractionPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v13    # "smsAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v14    # "dialerAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v15    # "simCallManagerPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v16    # "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    .end local v17    # "verifier":Ljava/lang/String;
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v19    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v21    # "calendarProvider":Ljava/lang/String;
    .end local v22    # "browserPackage":Ljava/lang/String;
    .end local v23    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v24    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v25    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v26    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v28    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v29    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v31    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v32    # "nfcTagIntent":Landroid/content/Intent;
    .end local v33    # "musicIntent":Landroid/content/Intent;
    .end local v36    # "contactsProviderPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final varargs grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 435
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 437
    return-void
.end method

.method private final varargs grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 853
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "permissions":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 855
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 856
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .locals 12
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "systemFixed"    # Z
    .param p5, "ignoreSystemPackage"    # Z
    .param p6, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "IZZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 477
    .local p7, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p7

    if-nez p2, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    array-length v9, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v0, v10

    .line 482
    .local v11, "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 481
    .end local v11    # "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 468
    .local p6, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 471
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V
    .locals 17
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
    .param p2, "userId"    # I

    .line 393
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    .line 396
    .local v10, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 397
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 398
    goto :goto_0

    .line 402
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 404
    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 406
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    goto :goto_0

    .line 409
    :cond_2
    invoke-direct {v6, v7, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    .line 410
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 413
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 414
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_4

    .line 415
    invoke-static {v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 416
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 417
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_5

    .line 418
    goto :goto_1

    .line 420
    :cond_5
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v14, v13

    move v15, v9

    :goto_2
    if-ge v15, v14, :cond_7

    aget-object v5, v13, v15

    .line 421
    .local v5, "permission":Ljava/lang/String;
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    nop

    .line 423
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v16, v5

    .end local v5    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_3

    .line 421
    .end local v16    # "permission":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    .line 420
    .end local v5    # "permission":Ljava/lang/String;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 428
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_7
    goto :goto_1

    .line 430
    :cond_8
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "systemFixed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 456
    .local p5, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    return-void

    .line 459
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 462
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 449
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 451
    return-void
.end method

.method private grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p4, "systemFixed"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1076
    .local p3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1078
    return-void
.end method

.method private grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .locals 28
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p4, "systemFixed"    # Z
    .param p5, "ignoreSystemPackage"    # Z
    .param p6, "whitelistRestrictedPermissions"    # Z
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 1148
    .local p3, "permissionsWithoutSplits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 1149
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v8, :cond_0

    .line 1150
    return-void

    .line 1153
    :cond_0
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1154
    .local v1, "requestedPermissions":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1155
    return-void

    .line 1160
    :cond_1
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1162
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    array-length v12, v1

    .line 1163
    .local v12, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_3

    .line 1164
    aget-object v3, v1, v2

    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1165
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    .end local v2    # "i":I
    :cond_3
    sget-object v2, Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 1170
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v13, v2

    .line 1171
    .local v13, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1173
    .local v14, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x20

    .line 1174
    .local v2, "newFlags":I
    if-eqz p4, :cond_4

    .line 1175
    or-int/lit8 v2, v2, 0x10

    .line 1179
    :cond_4
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/permission/PermissionManager;

    .line 1180
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager;

    invoke-virtual {v3}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v15

    .line 1181
    .local v15, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 1182
    .local v6, "numSplitPerms":I
    const/4 v3, 0x0

    .local v3, "splitPermNum":I
    :goto_1
    if-ge v3, v6, :cond_7

    .line 1183
    nop

    .line 1184
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1186
    .local v4, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    if-eqz v14, :cond_5

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1187
    move/from16 v16, v2

    .end local v2    # "newFlags":I
    .local v16, "newFlags":I
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v2

    if-ge v5, v2, :cond_6

    .line 1188
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1189
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1186
    .end local v16    # "newFlags":I
    .restart local v2    # "newFlags":I
    :cond_5
    move/from16 v16, v2

    .line 1182
    .end local v2    # "newFlags":I
    .end local v4    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v16    # "newFlags":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto :goto_1

    .end local v16    # "newFlags":I
    .restart local v2    # "newFlags":I
    :cond_7
    move/from16 v16, v2

    .line 1193
    .end local v2    # "newFlags":I
    .end local v3    # "splitPermNum":I
    .restart local v16    # "newFlags":I
    const/4 v2, 0x0

    .line 1201
    .local v2, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p5, :cond_9

    if-eqz v14, :cond_9

    .line 1203
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1204
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1205
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1206
    .local v3, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_9

    .line 1207
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1208
    return-void

    .line 1210
    :cond_8
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1211
    new-instance v4, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 1212
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v5, v1

    goto :goto_3

    .line 1217
    .end local v3    # "disabledPkg":Landroid/content/pm/PackageInfo;
    :cond_9
    move-object v5, v1

    move-object v4, v2

    .end local v1    # "requestedPermissions":[Ljava/lang/String;
    .end local v2    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "requestedPermissions":[Ljava/lang/String;
    :goto_3
    array-length v3, v5

    .line 1221
    .local v3, "numRequestedPermissions":I
    new-array v2, v3, [Ljava/lang/String;

    .line 1222
    .local v2, "sortedRequestedPermissions":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1223
    .local v1, "numForeground":I
    const/16 v17, 0x0

    .line 1224
    .local v17, "numOther":I
    const/16 v18, 0x0

    move/from16 v27, v17

    move/from16 v17, v1

    move/from16 v1, v18

    move/from16 v18, v27

    .local v1, "i":I
    .local v17, "numForeground":I
    .local v18, "numOther":I
    :goto_4
    if-ge v1, v3, :cond_b

    .line 1225
    move/from16 v19, v6

    .end local v6    # "numSplitPerms":I
    .local v19, "numSplitPerms":I
    aget-object v6, v5, v1

    .line 1226
    .local v6, "permission":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 1227
    aput-object v6, v2, v17

    .line 1228
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1230
    :cond_a
    add-int/lit8 v20, v3, -0x1

    sub-int v20, v20, v18

    aput-object v6, v2, v20

    .line 1232
    add-int/lit8 v18, v18, 0x1

    .line 1224
    .end local v6    # "permission":Ljava/lang/String;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v19

    goto :goto_4

    .end local v19    # "numSplitPerms":I
    .local v6, "numSplitPerms":I
    :cond_b
    move/from16 v19, v6

    .line 1236
    .end local v1    # "i":I
    .end local v6    # "numSplitPerms":I
    .restart local v19    # "numSplitPerms":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "requestedPermissionNum":I
    :goto_6
    if-ge v6, v3, :cond_16

    .line 1238
    aget-object v1, v5, v6

    .line 1242
    .local v1, "permission":Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1243
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object v0, v5

    move/from16 v22, v6

    goto/16 :goto_b

    .line 1246
    :cond_c
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1247
    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    .local v20, "requestedPermissions":[Ljava/lang/String;
    invoke-virtual {v7, v1, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v5

    .line 1251
    .local v5, "flags":I
    if-eqz p4, :cond_d

    and-int/lit8 v21, v5, 0x10

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    goto :goto_7

    :cond_d
    const/16 v21, 0x0

    .line 1261
    .local v21, "changingGrantForSystemFixed":Z
    :goto_7
    invoke-direct {v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v22

    if-eqz v22, :cond_f

    if-nez p5, :cond_f

    if-eqz v21, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v22, v6

    move-object/from16 v0, v20

    move/from16 v20, v5

    goto/16 :goto_a

    .line 1266
    :cond_f
    :goto_8
    and-int/lit8 v22, v5, 0x4

    if-eqz v22, :cond_10

    .line 1267
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v22, v6

    move-object/from16 v0, v20

    goto/16 :goto_b

    .line 1271
    :cond_10
    and-int/lit16 v0, v5, 0x3800

    or-int v16, v16, v0

    .line 1274
    if-eqz p6, :cond_11

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1275
    const/16 v0, 0x1000

    const/16 v22, 0x1000

    move-object/from16 v23, v1

    .end local v1    # "permission":Ljava/lang/String;
    .local v23, "permission":Ljava/lang/String;
    move-object/from16 v1, p1

    move-object/from16 v24, v2

    .end local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .local v24, "sortedRequestedPermissions":[Ljava/lang/String;
    move-object/from16 v2, v23

    move/from16 v25, v3

    .end local v3    # "numRequestedPermissions":I
    .local v25, "numRequestedPermissions":I
    move-object/from16 v3, p2

    move-object/from16 v26, v4

    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v26, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move v4, v0

    move-object/from16 v0, v20

    move/from16 v20, v5

    .end local v5    # "flags":I
    .local v0, "requestedPermissions":[Ljava/lang/String;
    .local v20, "flags":I
    move/from16 v5, v22

    move/from16 v22, v6

    .end local v6    # "requestedPermissionNum":I
    .local v22, "requestedPermissionNum":I
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_9

    .line 1274
    .end local v0    # "requestedPermissions":[Ljava/lang/String;
    .end local v22    # "requestedPermissionNum":I
    .end local v23    # "permission":Ljava/lang/String;
    .end local v24    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v25    # "numRequestedPermissions":I
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "flags":I
    .restart local v6    # "requestedPermissionNum":I
    .local v20, "requestedPermissions":[Ljava/lang/String;
    :cond_11
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v22, v6

    move-object/from16 v0, v20

    move/from16 v20, v5

    .line 1282
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v3    # "numRequestedPermissions":I
    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "flags":I
    .end local v6    # "requestedPermissionNum":I
    .restart local v0    # "requestedPermissions":[Ljava/lang/String;
    .local v20, "flags":I
    .restart local v22    # "requestedPermissionNum":I
    .restart local v23    # "permission":Ljava/lang/String;
    .restart local v24    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v25    # "numRequestedPermissions":I
    .restart local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    if-eqz v21, :cond_12

    .line 1283
    and-int/lit8 v5, v20, -0x11

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move/from16 v4, v20

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1287
    :cond_12
    move-object/from16 v6, v23

    .end local v23    # "permission":Ljava/lang/String;
    .local v6, "permission":Ljava/lang/String;
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1288
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 1291
    :cond_13
    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v16

    move-object/from16 v23, v6

    .end local v6    # "permission":Ljava/lang/String;
    .restart local v23    # "permission":Ljava/lang/String;
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1296
    :goto_a
    and-int/lit8 v1, v20, 0x20

    if-eqz v1, :cond_15

    and-int/lit8 v1, v20, 0x10

    if-eqz v1, :cond_15

    if-nez p4, :cond_15

    .line 1303
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_b

    .line 1246
    .end local v0    # "requestedPermissions":[Ljava/lang/String;
    .end local v20    # "flags":I
    .end local v21    # "changingGrantForSystemFixed":Z
    .end local v22    # "requestedPermissionNum":I
    .end local v23    # "permission":Ljava/lang/String;
    .end local v24    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v25    # "numRequestedPermissions":I
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "requestedPermissions":[Ljava/lang/String;
    .local v6, "requestedPermissionNum":I
    :cond_14
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object v0, v5

    move/from16 v22, v6

    .line 1237
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v3    # "numRequestedPermissions":I
    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    .end local v6    # "requestedPermissionNum":I
    .restart local v0    # "requestedPermissions":[Ljava/lang/String;
    .restart local v22    # "requestedPermissionNum":I
    .restart local v24    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v25    # "numRequestedPermissions":I
    .restart local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    :goto_b
    add-int/lit8 v6, v22, 0x1

    move-object v5, v0

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v0, p0

    .end local v22    # "requestedPermissionNum":I
    .restart local v6    # "requestedPermissionNum":I
    goto/16 :goto_6

    .line 1308
    .end local v0    # "requestedPermissions":[Ljava/lang/String;
    .end local v6    # "requestedPermissionNum":I
    .end local v24    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v25    # "numRequestedPermissions":I
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 372
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 373
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 374
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 375
    .local v5, "perm":Landroid/content/pm/PermissionInfo;
    if-nez v5, :cond_0

    .line 376
    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 383
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 385
    :cond_3
    return-void
.end method

.method private final varargs grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 442
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 444
    return-void
.end method

.method private isFixedOrUserSet(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 1139
    and-int/lit8 v0, p1, 0x17

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 1168
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1421
    .local p3, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1423
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1424
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1425
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1426
    goto :goto_0

    .line 1428
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exceptions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1429
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1431
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    :cond_4
    return-void
.end method

.method private parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1439
    .local p3, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1441
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1442
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 1443
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1444
    goto :goto_0

    .line 1446
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_7

    .line 1447
    const/4 v1, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1450
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1451
    .local v4, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v4, :cond_6

    .line 1453
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1455
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_3

    .line 1456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1458
    goto :goto_0

    .line 1461
    :cond_3
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown system package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1464
    goto :goto_0

    .line 1468
    :cond_4
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1472
    goto/16 :goto_0

    .line 1474
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 1475
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1479
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto/16 :goto_0

    .line 1480
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1483
    :cond_8
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1487
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1489
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

    .line 1490
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1491
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1492
    goto :goto_0

    .line 1495
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_4

    .line 1496
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1498
    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1500
    goto :goto_0

    .line 1503
    :cond_3
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1504
    .local v3, "fixed":Z
    const-string/jumbo v4, "whitelisted"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1506
    .local v4, "whitelisted":Z
    new-instance v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1508
    .local v5, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "whitelisted":Z
    .end local v5    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_0

    .line 1510
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1513
    :cond_5
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1386
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1387
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1388
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1391
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1394
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 1395
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_1

    .line 1396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1396
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    goto :goto_2

    .line 1400
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    goto :goto_2

    .line 1405
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    .local v5, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1408
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1409
    invoke-direct {p0, p1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1410
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1412
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_2

    .line 1404
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .end local p1    # "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    :goto_1
    throw v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1410
    .end local v5    # "str":Ljava/io/InputStream;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .restart local p1    # "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    :catch_0
    move-exception v5

    .line 1411
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1415
    :cond_3
    return-object v2
.end method

.method private revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 13
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "systemFixed"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1082
    .local p3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, p1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1083
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_6

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1086
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 1088
    .local v8, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1090
    .local v10, "permission":Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    goto :goto_0

    .line 1094
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 1095
    .local v11, "user":Landroid/os/UserHandle;
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1, v10, v0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v12

    .line 1099
    .local v12, "flags":I
    and-int/lit8 v0, v12, 0x20

    if-nez v0, :cond_2

    .line 1100
    goto :goto_0

    .line 1103
    :cond_2
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_3

    .line 1104
    goto :goto_0

    .line 1109
    :cond_3
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 1110
    goto :goto_0

    .line 1112
    :cond_4
    invoke-virtual {p1, v10, v7, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 1122
    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v2, v7

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1124
    .end local v10    # "permission":Ljava/lang/String;
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "flags":I
    goto :goto_0

    .line 1125
    :cond_5
    return-void

    .line 1084
    .end local v8    # "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 360
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;)V

    .line 362
    .local v0, "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 364
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 367
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->apply()V

    .line 368
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 978
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default browser for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 998
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 900
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 901
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 897
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-nez p1, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 926
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 925
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-nez p1, :cond_0

    .line 934
    return-void

    .line 936
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 937
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 936
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    if-nez p1, :cond_0

    .line 947
    return-void

    .line 949
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 952
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 949
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_1
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-nez p1, :cond_0

    .line 961
    return-void

    .line 963
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p1, v1

    .line 964
    .local v8, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 965
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 968
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 963
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-nez p1, :cond_0

    .line 983
    return-void

    .line 985
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p1, v1

    .line 986
    .local v8, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 987
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 988
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 985
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    return-void
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 336
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 320
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 348
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 326
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
