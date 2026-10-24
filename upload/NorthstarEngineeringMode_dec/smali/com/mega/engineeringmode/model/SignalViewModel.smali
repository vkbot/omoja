.class public abstract Lcom/mega/engineeringmode/model/SignalViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final a:Lmega/car/MegaCarProperty;

.field public final b:Ljava/util/HashSet;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/lifecycle/MutableLiveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->b:Ljava/util/HashSet;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->c:Landroid/util/SparseArray;

    sget-object v1, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-static {v1}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->a:Lmega/car/MegaCarProperty;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/model/SignalViewModel;->b()V

    invoke-virtual {v1, p0, v0}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public abstract b()V
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->b:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object p0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "SignalViewModel"

    const-string p1, "carPropertyValue == null"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mega/engineeringmode/model/SignalViewModel;->a:Lmega/car/MegaCarProperty;

    invoke-virtual {v1, p0, v0}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "propId = %s, zone = %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SignalViewModel"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
