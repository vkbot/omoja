.class Lmega/car/CarPropertyManager$CarPropertyEventListenerToService;
.super Lmega/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarPropertyEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmega/car/CarPropertyManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmega/car/CarPropertyManager;


# direct methods
.method public constructor <init>(Lmega/car/CarPropertyManager;Lmega/car/CarPropertyManager;)V
    .locals 1
    .param p1, "this$0"    # Lmega/car/CarPropertyManager;
    .param p2, "manager"    # Lmega/car/CarPropertyManager;

    .line 483
    iput-object p1, p0, Lmega/car/CarPropertyManager$CarPropertyEventListenerToService;->this$0:Lmega/car/CarPropertyManager;

    invoke-direct {p0}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    .line 484
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmega/car/CarPropertyManager$CarPropertyEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    .line 485
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lmega/car/CarPropertyManager$CarPropertyEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/CarPropertyManager;

    .line 490
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 491
    invoke-static {v0, p1}, Lmega/car/CarPropertyManager;->access$200(Lmega/car/CarPropertyManager;Ljava/util/List;)V

    .line 493
    :cond_0
    return-void
.end method
