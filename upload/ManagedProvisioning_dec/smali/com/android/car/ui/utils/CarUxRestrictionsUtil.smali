.class public Lcom/android/car/ui/utils/CarUxRestrictionsUtil;
.super Ljava/lang/Object;
.source "CarUxRestrictionsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;


# instance fields
.field private mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

.field private final mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getDefaultRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mObservers:Ljava/util/Set;

    .line 56
    new-instance v0, Lcom/android/car/ui/utils/-$$Lambda$CarUxRestrictionsUtil$b4kksuDJ2ImLxn6J1BQQlgUD4Tk;

    invoke-direct {v0, p0}, Lcom/android/car/ui/utils/-$$Lambda$CarUxRestrictionsUtil$b4kksuDJ2ImLxn6J1BQQlgUD4Tk;-><init>(Lcom/android/car/ui/utils/CarUxRestrictionsUtil;)V

    .line 69
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p0, v1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/android/car/ui/utils/-$$Lambda$CarUxRestrictionsUtil$AHf3Me05OJaXy6rDPxJ14T3Ju3k;

    invoke-direct {v3, v0}, Lcom/android/car/ui/utils/-$$Lambda$CarUxRestrictionsUtil$AHf3Me05OJaXy6rDPxJ14T3Ju3k;-><init>(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    invoke-static {p0, p1, v1, v2, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object p0

    :try_start_0
    const-string p1, "uxrestriction"

    .line 97
    invoke-virtual {p0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 99
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    .line 100
    invoke-interface {v0, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarUxRestrictionsUtil"

    const-string v0, "Car not connected"

    .line 103
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static getDefaultRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5

    .line 111
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    const/4 v1, 0x1

    const/16 v2, 0x1ff

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 113
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;
    .locals 1

    .line 125
    sget-object v0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->sInstance:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    invoke-direct {v0, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->sInstance:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    .line 129
    :cond_0
    sget-object p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->sInstance:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    return-object p0
.end method

.method public static isRestricted(ILandroid/car/drivingstate/CarUxRestrictions;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getDefaultRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mObservers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    .line 65
    iget-object v1, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-interface {v0, v1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;->onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;Landroid/car/Car;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "uxrestriction"

    .line 74
    invoke-virtual {p1, p2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    .line 84
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    goto :goto_0

    :cond_0
    const-string p1, "CarUxRestrictionsUtil"

    const-string p2, "Car service disconnected, assuming fully restricted uxr"

    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 89
    invoke-interface {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$CarUxRestrictionsUtil(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->lambda$new$0(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public register(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p0, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-interface {p1, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;->onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public setUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mCarUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    return-void
.end method

.method public unregister(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->mObservers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
