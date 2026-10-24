.class public Lcom/mega/nexus/MegaNexusManager;
.super Ljava/lang/Object;
.source "MegaNexusManager.java"


# static fields
.field public static final MEGA_NEXUS_SERVICE_NAME:Ljava/lang/String; = "com.mega.NexusService"

.field private static final NEXUS_SERVICE_BINDER_POLLING_INTERVAL_MS:J = 0x1eL

.field private static final NEXUS_SERVICE_BINDER_POLLING_MAX_RETRY:J = 0x64L

.field public static final TAG:Ljava/lang/String; = "MegaNexusManager"

.field private static sBinder:Landroid/os/IBinder;

.field private static sClazz:Ljava/lang/Object;

.field private static sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;

.field private static sMethodName:Ljava/lang/String;

.field private static sReflectService:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mega/nexus/MegaNexusManager;->sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;

    .line 20
    sput-object v0, Lcom/mega/nexus/MegaNexusManager;->sReflectService:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/mega/nexus/MegaNexusManager$1;

    invoke-direct {v0}, Lcom/mega/nexus/MegaNexusManager$1;-><init>()V

    sput-object v0, Lcom/mega/nexus/MegaNexusManager;->sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/IBinder;
    .locals 1

    .line 14
    sget-object v0, Lcom/mega/nexus/MegaNexusManager;->sBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mega/nexus/IMegaNexusManager;)Lcom/mega/nexus/IMegaNexusManager;
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/IMegaNexusManager;

    .line 14
    sput-object p0, Lcom/mega/nexus/MegaNexusManager;->sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .line 14
    sput-object p0, Lcom/mega/nexus/MegaNexusManager;->sReflectService:Ljava/lang/Object;

    return-object p0
.end method

.method public static declared-synchronized getNexusService()Lcom/mega/nexus/IMegaNexusManager;
    .locals 2

    const-class v0, Lcom/mega/nexus/MegaNexusManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/mega/nexus/MegaNexusManager;->getService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    sput-object v1, Lcom/mega/nexus/MegaNexusManager;->sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;

    .line 60
    :cond_0
    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sIMegaNexusManager:Lcom/mega/nexus/IMegaNexusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getReflectInstance()Ljava/lang/Object;
    .locals 3

    .line 76
    sget-object v0, Lcom/mega/nexus/MegaNexusManager;->sClazz:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sMethodName:Ljava/lang/String;

    new-array v2, v2, [Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    invoke-static {v0, v1, v2}, Lcom/mega/nexus/util/ReflectionHelpers;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    check-cast v0, Ljava/lang/Class;

    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sMethodName:Ljava/lang/String;

    new-array v2, v2, [Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    invoke-static {v0, v1, v2}, Lcom/mega/nexus/util/ReflectionHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getReflectService()Ljava/lang/Object;
    .locals 2

    const-class v0, Lcom/mega/nexus/MegaNexusManager;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sReflectService:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 85
    invoke-static {}, Lcom/mega/nexus/MegaNexusManager;->getReflectInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/mega/nexus/MegaNexusManager;->sReflectService:Ljava/lang/Object;

    .line 87
    :cond_0
    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sReflectService:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getService()Lcom/mega/nexus/IMegaNexusManager;
    .locals 6

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "retryCount":I
    :goto_0
    const-string v1, "com.mega.NexusService"

    invoke-static {v1}, Lcom/mega/nexus/os/MegaServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/mega/nexus/MegaNexusManager;->sBinder:Landroid/os/IBinder;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    sget-object v2, Lcom/mega/nexus/MegaNexusManager;->sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 35
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v1, Lcom/mega/nexus/MegaNexusManager;->sBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/mega/nexus/IMegaNexusManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    return-object v1

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    int-to-long v1, v0

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const-string v3, "MegaNexusManager"

    if-lez v1, :cond_1

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Null nexus service!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v4, "cannot get car_service, waited for car service (ms):3000"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return-object v2

    .line 47
    :cond_1
    const-wide/16 v4, 0x1e

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Get nexus service interrupted!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v5, "interrupted while waiting for car_service"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-object v2
.end method


# virtual methods
.method public setMethodName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 91
    sput-object p1, Lcom/mega/nexus/MegaNexusManager;->sClazz:Ljava/lang/Object;

    .line 92
    sput-object p2, Lcom/mega/nexus/MegaNexusManager;->sMethodName:Ljava/lang/String;

    .line 93
    return-void
.end method
