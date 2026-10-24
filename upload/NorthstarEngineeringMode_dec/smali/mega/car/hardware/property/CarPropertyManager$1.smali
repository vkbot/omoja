.class Lmega/car/hardware/property/CarPropertyManager$1;
.super Lmega/car/utils/SingleMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/hardware/property/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmega/car/utils/SingleMessageHandler<",
        "Lmega/car/hardware/property/CarPropertyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/hardware/property/CarPropertyManager;


# direct methods
.method public constructor <init>(Lmega/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager$1;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-direct {p0, p2, p3}, Lmega/car/utils/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lmega/car/hardware/property/CarPropertyEvent;

    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager$1;->handleEvent(Lmega/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method public handleEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager$1;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    .line 3
    invoke-static {v1}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager$1;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    .line 4
    invoke-static {p0}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
