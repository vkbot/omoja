.class public Lmega/car/MegaCarProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAR_PROP_UNKNOWN:I = -0x1

.field private static final FORCE_RECONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "MegaCarProperty"

.field private static final sHandler:Landroid/os/Handler;

.field private static volatile sInstance:Lmega/car/MegaCarProperty;


# instance fields
.field private final mCarServiceLifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmega/car/MegaCar$CarServiceLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lmega/car/hardware/property/CarPropertyManager;

.field private volatile mMegaCar:Lmega/car/MegaCar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MegaCarProperty"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lmega/car/MegaCarProperty;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    new-instance p2, Lmega/car/b;

    invoke-direct {p2, p0}, Lmega/car/b;-><init>(Lmega/car/MegaCarProperty;)V

    sget-object v0, Lmega/car/MegaCarProperty;->sHandler:Landroid/os/Handler;

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2, p2}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object p1

    iput-object p1, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lmega/car/MegaCarProperty;->initInner()V

    return-void
.end method

.method public static synthetic b(Lmega/car/MegaCarProperty;Lmega/car/MegaCar;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmega/car/MegaCarProperty;->lambda$new$0(Lmega/car/MegaCar;Z)V

    return-void
.end method

.method public static getInstance()Lmega/car/MegaCarProperty;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {}, Lmega/car/MegaCarProperty;->initInner()V

    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lmega/car/MegaCarProperty;->initInner()V

    sget-object p0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    return-object p0
.end method

.method public static initBackground()V
    .locals 3

    sget-object v0, Lmega/car/MegaCarProperty;->sHandler:Landroid/os/Handler;

    new-instance v1, Lmega/car/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmega/car/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static initInner()V
    .locals 4

    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v0, :cond_1

    const-class v0, Lmega/car/MegaCarProperty;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v1, :cond_0

    new-instance v1, Lmega/car/MegaCarProperty;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmega/car/MegaCarProperty;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$0(Lmega/car/MegaCar;Z)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService connected"

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    goto :goto_0

    :cond_0
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService disconnected"

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    :goto_0
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/MegaCar$CarServiceLifecycleListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addCarServiceLifecycleListener(Lmega/car/MegaCar$CarServiceLifecycleListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    if-nez v0, :cond_1

    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null MegaCar"

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Lmega/car/MegaCar;->getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_2

    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null CarPropertyManager"

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getDefValueOfCarProperty(I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->getConfigById(I)Lmega/car/hardware/CarPropertyConfig;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4
    const-class p1, [I

    if-ne p0, p1, :cond_5

    new-array p0, v0, [I

    return-object p0

    :cond_5
    const-class p1, [Ljava/lang/Integer;

    if-ne p0, p1, :cond_6

    new-array p0, v0, [Ljava/lang/Integer;

    return-object p0

    :cond_6
    const-class p1, [F

    if-ne p0, p1, :cond_7

    new-array p0, v0, [F

    return-object p0

    :cond_7
    const-class p1, [Ljava/lang/Float;

    if-ne p0, p1, :cond_8

    new-array p0, v0, [Ljava/lang/Float;

    return-object p0

    :cond_8
    const-class p1, [J

    if-ne p0, p1, :cond_9

    new-array p0, v0, [J

    return-object p0

    :cond_9
    const-class p1, [Ljava/lang/Long;

    if-ne p0, p1, :cond_a

    new-array p0, v0, [Ljava/lang/Long;

    return-object p0

    :cond_a
    const-class p1, Ljava/lang/String;

    if-ne p0, p1, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    const-class p1, [B

    if-ne p0, p1, :cond_c

    new-array p0, v0, [B

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFloatProp(I)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmega/car/hardware/property/CarPropertyManager;->getFloatProp(II)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string p1, "getFloatProp manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "getFloatProp: "

    invoke-static {p1, v1, p0}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v0
.end method

.method public getIntProp(I)I
    .locals 1

    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/hardware/property/CarPropertyManager;->getIntProp(II)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string p1, "getIntProp manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getMegaCar()Lmega/car/MegaCar;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    return-object p0
.end method

.method public getNameById(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->getConfigById(I)Lmega/car/hardware/CarPropertyConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v0, "getNameById config null"

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v0, "getNameById manager null"

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/Class;I)Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)",
            "Lmega/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string p1, "getProperty manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string p1, "getPropertyRaw manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v0, "getPropertyRaw CarStateErrorException"

    invoke-static {p1, v0, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerCallback manager null"

    .line 9
    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "registerCallback manager exception: "

    .line 10
    invoke-static {p1, p2, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    return-void

    :cond_2
    :goto_1
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerCallback ids null"

    .line 6
    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeCarServiceLifecycleListener(Lmega/car/MegaCar$CarServiceLifecycleListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lmega/car/MegaCarProperty;->mCarServiceLifecycleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFloatProp(IF)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/hardware/property/CarPropertyManager;->setFloatProp(IIF)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFloatProp manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setFloatProp: "

    invoke-static {p1, p2, p0}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setIntProp(II)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/hardware/property/CarPropertyManager;->setIntProp(III)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setIntProp manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setIntProp CarStateErrorException:"

    invoke-static {p1, p2, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setRawProp(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRawProp manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setRawProp CarStateErrorException"

    invoke-static {p1, v0, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterCallback manager null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterCallback ids null"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
