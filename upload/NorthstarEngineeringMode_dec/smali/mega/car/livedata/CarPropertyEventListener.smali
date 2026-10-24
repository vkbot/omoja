.class public Lmega/car/livedata/CarPropertyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field private final mLiveData:Lmega/car/livedata/CarPropertyLiveData;


# direct methods
.method public constructor <init>(Lmega/car/livedata/CarPropertyLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/livedata/CarPropertyEventListener;->mLiveData:Lmega/car/livedata/CarPropertyLiveData;

    return-void
.end method


# virtual methods
.method public onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 4

    iget-object v0, p0, Lmega/car/livedata/CarPropertyEventListener;->mLiveData:Lmega/car/livedata/CarPropertyLiveData;

    invoke-virtual {v0}, Lmega/car/livedata/CarPropertyLiveData;->getDelayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lmega/car/livedata/CarPropertyEventListener;->mLiveData:Lmega/car/livedata/CarPropertyLiveData;

    invoke-virtual {p0}, Lmega/car/livedata/CarPropertyLiveData;->getDelayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyStatus(J)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmega/car/livedata/CarPropertyEventListener;->mLiveData:Lmega/car/livedata/CarPropertyLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    iget-object p0, p0, Lmega/car/livedata/CarPropertyEventListener;->mLiveData:Lmega/car/livedata/CarPropertyLiveData;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lmega/car/livedata/CarPropertyLiveData;->updateCarPropertyStatus(J)V

    return-void
.end method
