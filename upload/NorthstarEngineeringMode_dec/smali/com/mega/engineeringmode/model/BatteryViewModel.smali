.class public Lcom/mega/engineeringmode/model/BatteryViewModel;
.super Lcom/mega/engineeringmode/model/SignalViewModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/model/SignalViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const v0, 0x5000044

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x5000043

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x5000003

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x67000085

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x67000083

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x67000084

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x500005f

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    const v0, 0x67000086

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/model/SignalViewModel;->c(I)V

    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mega/engineeringmode/model/SignalViewModel;->onErrorEvent(II)V

    const p2, 0x5000003

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const p1, 0x4197fe00    # 18.999023f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const p2, 0x5000043

    if-eq p1, p2, :cond_1

    const p2, 0x5000044

    if-ne p1, p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/16 p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
