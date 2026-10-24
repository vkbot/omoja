.class public Lmega/car/livedata/CarPropertyLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Lmega/car/hardware/CarPropertyValue<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DATA_STORE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lmega/car/livedata/CarPropertyLiveData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarPropertyLiveData"

.field static sCarPropHelper:Lmega/car/MegaCarProperty;

.field private static sInit:Z

.field static sWorkHandler:Landroid/os/Handler;


# instance fields
.field private final mFailCallback:Ljava/lang/Runnable;

.field private mIsRegisterCallback:Z

.field private mLastSetTime:J

.field private final mListener:Lmega/car/livedata/CarPropertyEventListener;

.field private mMaxUpdateDelay:J

.field private final mReadPropertyId:I

.field private mUpdateDelay:Z

.field private mValueMap:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mWritePropertyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmega/car/livedata/CarPropertyLiveData;->DATA_STORE:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lmega/car/livedata/CarPropertyLiveData;->sInit:Z

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseArray;)V
    .locals 2
    .param p3    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mMaxUpdateDelay:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mLastSetTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mUpdateDelay:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mIsRegisterCallback:Z

    iput p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mWritePropertyId:I

    iput p2, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    iput-object p3, p0, Lmega/car/livedata/CarPropertyLiveData;->mValueMap:Landroid/util/SparseArray;

    new-instance p1, Ls0/b;

    const/16 p2, 0xc

    invoke-direct {p1, p2, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mFailCallback:Ljava/lang/Runnable;

    new-instance p1, Lmega/car/livedata/CarPropertyEventListener;

    invoke-direct {p1, p0}, Lmega/car/livedata/CarPropertyEventListener;-><init>(Lmega/car/livedata/CarPropertyLiveData;)V

    iput-object p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mListener:Lmega/car/livedata/CarPropertyEventListener;

    return-void
.end method

.method public static synthetic a(Lmega/car/livedata/CarPropertyLiveData;)V
    .locals 0

    invoke-direct {p0}, Lmega/car/livedata/CarPropertyLiveData;->updateFromCarService()V

    return-void
.end method

.method public static getCarPropHelper()Lmega/car/MegaCarProperty;
    .locals 1

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-boolean v0, Lmega/car/livedata/CarPropertyLiveData;->sInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lmega/car/livedata/CarPropertyLiveData;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lmega/car/livedata/CarPropertyLiveData;->sWorkHandler:Landroid/os/Handler;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    sput-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    const/4 v0, 0x1

    sput-boolean v0, Lmega/car/livedata/CarPropertyLiveData;->sInit:Z

    const-string v0, "CarPropertyLiveData"

    const-string v1, "CarPropertyLiveData init"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static keyOf(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static obtain(I)Lmega/car/livedata/CarPropertyLiveData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p0}, Lmega/car/livedata/CarPropertyLiveData;->obtain(II)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(II)Lmega/car/livedata/CarPropertyLiveData;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-boolean v0, Lmega/car/livedata/CarPropertyLiveData;->sInit:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lmega/car/livedata/CarPropertyLiveData;->init()V

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->keyOf(II)J

    move-result-wide v0

    sget-object v2, Lmega/car/livedata/CarPropertyLiveData;->DATA_STORE:Ljava/util/HashMap;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/livedata/CarPropertyLiveData;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Lmega/car/livedata/CarPropertyLiveData;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lmega/car/livedata/CarPropertyLiveData;-><init>(IILandroid/util/SparseArray;)V

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3
.end method

.method private updateFromCarService()V
    .locals 4

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getCarPropertyFromCar()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lmega/car/hardware/CarPropertyValue;

    iget v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v2

    iget v3, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-virtual {v2, v3}, Lmega/car/MegaCarProperty;->getDefValueOfCarProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCarProperty()Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getCarPropertyFromCar()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyValue;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCarPropertyFromCar()Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    iget p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-virtual {v0, p0}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    return-object p0
.end method

.method public getCarPropertyStatus()I
    .locals 0

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getCarProperty()Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getDelayTime()J
    .locals 6

    iget-wide v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mLastSetTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getMaxUpdateDelay()J

    move-result-wide v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v2

    return-wide v4

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getMaxUpdateDelay()J
    .locals 2

    iget-wide v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mMaxUpdateDelay:J

    return-wide v0
.end method

.method public getReadPropertyId()I
    .locals 0

    iget p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    return p0
.end method

.method public getValueOfCarProperty()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getCarProperty()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    iget p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-virtual {v0, p0}, Lmega/car/MegaCarProperty;->getDefValueOfCarProperty(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWritePropertyId()I
    .locals 0

    iget p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mWritePropertyId:I

    return p0
.end method

.method public isRegisterCallback()Z
    .locals 0

    iget-boolean p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mIsRegisterCallback:Z

    return p0
.end method

.method public mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mValueMap:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public needUpdateDelay()Z
    .locals 0

    iget-boolean p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mUpdateDelay:Z

    return p0
.end method

.method public onActive()V
    .locals 3

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    iget-object v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mListener:Lmega/car/livedata/CarPropertyEventListener;

    iget v2, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mIsRegisterCallback:Z

    return-void
.end method

.method public onInactive()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mIsRegisterCallback:Z

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    iget-object v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mListener:Lmega/car/livedata/CarPropertyEventListener;

    iget p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    return-void
.end method

.method public readValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getValueOfCarProperty()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setCarProperty(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lmega/car/hardware/CarPropertyValue;

    iget v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-direct {v0, v1, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyUser(Lmega/car/hardware/CarPropertyValue;)V

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    .line 2
    new-instance v1, Lmega/car/hardware/CarPropertyValue;

    iget v2, p0, Lmega/car/livedata/CarPropertyLiveData;->mWritePropertyId:I

    .line 3
    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    .line 5
    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->needUpdateDelay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getMaxUpdateDelay()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyStatus(J)V

    :cond_0
    return-void
.end method

.method public setCarProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 7
    new-instance v0, Lmega/car/hardware/CarPropertyValue;

    iget v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mReadPropertyId:I

    invoke-direct {v0, v1, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p2}, Lmega/car/hardware/CarPropertyValue;->setExtension(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyUser(Lmega/car/hardware/CarPropertyValue;)V

    .line 10
    new-instance v0, Lmega/car/hardware/CarPropertyValue;

    iget v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mWritePropertyId:I

    .line 11
    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {v0, p2}, Lmega/car/hardware/CarPropertyValue;->setExtension(Ljava/lang/Object;)V

    sget-object p1, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    .line 13
    invoke-virtual {p1, v0}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    .line 14
    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->needUpdateDelay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getMaxUpdateDelay()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyStatus(J)V

    :cond_0
    return-void
.end method

.method public setCarPropertyUpdateDelay(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sCarPropHelper:Lmega/car/MegaCarProperty;

    new-instance v1, Lmega/car/hardware/CarPropertyValue;

    iget v2, p0, Lmega/car/livedata/CarPropertyLiveData;->mWritePropertyId:I

    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->needUpdateDelay()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getMaxUpdateDelay()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyStatus(J)V

    :cond_0
    return-void
.end method

.method public setMaxUpdateDelay(J)V
    .locals 0

    iput-wide p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mMaxUpdateDelay:J

    return-void
.end method

.method public setNeedUpdateDelay(Z)V
    .locals 0

    iput-boolean p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mUpdateDelay:Z

    return-void
.end method

.method public setValueMap(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lmega/car/livedata/CarPropertyLiveData;->mValueMap:Landroid/util/SparseArray;

    return-void
.end method

.method public updateCarPropertyStatus(J)V
    .locals 2

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmega/car/livedata/CarPropertyLiveData;->mFailCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lmega/car/livedata/CarPropertyLiveData;->sWorkHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmega/car/livedata/CarPropertyLiveData;->mFailCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateCarPropertyUser(Lmega/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/livedata/CarPropertyLiveData;->mLastSetTime:J

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->setCarProperty(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lmega/car/livedata/CarPropertyLiveData;->setCarProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
