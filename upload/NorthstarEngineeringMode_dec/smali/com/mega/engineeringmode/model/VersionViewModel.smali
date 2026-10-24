.class public Lcom/mega/engineeringmode/model/VersionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final a:Lmega/car/MegaCarProperty;

.field public final b:Ln2/i;

.field public final c:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/lifecycle/MutableLiveData;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/mega/engineeringmode/model/VersionViewModel$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->f:Ljava/util/HashSet;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->g:Landroid/util/SparseArray;

    new-instance v3, Lcom/mega/engineeringmode/model/VersionViewModel$a;

    invoke-direct {v3, p0}, Lcom/mega/engineeringmode/model/VersionViewModel$a;-><init>(Lcom/mega/engineeringmode/model/VersionViewModel;)V

    iput-object v3, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->h:Lcom/mega/engineeringmode/model/VersionViewModel$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->a:Lmega/car/MegaCarProperty;

    const v5, 0x3300006b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4, p0, v1}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->obtainDmcUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->c:Lcom/mega/update/sdk/MegaOtaUpdateInterface;

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->b:Ln2/i;

    const-string/jumbo p0, "uartrpc_svc/upgrade/resp"

    invoke-virtual {p1, p0, v3}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lmega/car/hardware/CarPropertyValue;
    .locals 1

    iget-object p0, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->a:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getValue "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VersionViewModel"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1

    iget-object p0, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onCleared()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->b:Ln2/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->h:Lcom/mega/engineeringmode/model/VersionViewModel$a;

    const-string/jumbo v2, "uartrpc_svc/upgrade/resp"

    invoke-virtual {v0, v2, v1}, Ln2/i;->h(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->a:Lmega/car/MegaCarProperty;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/model/VersionViewModel;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p0, v1}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public final onErrorEvent(II)V
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

    const-string p1, "VersionViewModel"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
