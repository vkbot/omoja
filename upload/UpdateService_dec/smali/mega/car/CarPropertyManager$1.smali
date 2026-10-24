.class Lmega/car/CarPropertyManager$1;
.super Lmega/car/utils/SingleMessageHandler;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lmega/car/CarPropertyManager;


# direct methods
.method constructor <init>(Lmega/car/CarPropertyManager;Landroid/os/Looper;I)V
    .locals 0
    .param p1, "this$0"    # Lmega/car/CarPropertyManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "handledMessage"    # I

    .line 139
    iput-object p1, p0, Lmega/car/CarPropertyManager$1;->this$0:Lmega/car/CarPropertyManager;

    invoke-direct {p0, p2, p3}, Lmega/car/utils/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lmega/car/hardware/property/CarPropertyEvent;

    invoke-virtual {p0, p1}, Lmega/car/CarPropertyManager$1;->handleEvent(Lmega/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method protected handleEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "event"    # Lmega/car/hardware/property/CarPropertyEvent;

    .line 143
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 144
    .local v0, "value":Lmega/car/hardware/CarPropertyValue;
    iget-object v1, p0, Lmega/car/CarPropertyManager$1;->this$0:Lmega/car/CarPropertyManager;

    invoke-static {v1}, Lmega/car/CarPropertyManager;->access$000(Lmega/car/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lmega/car/CarPropertyManager$1;->this$0:Lmega/car/CarPropertyManager;

    invoke-static {v2}, Lmega/car/CarPropertyManager;->access$000(Lmega/car/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmega/car/CarPropertyManager$CarPropertyListeners;

    .line 146
    .local v2, "listeners":Lmega/car/CarPropertyManager$CarPropertyListeners;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 153
    invoke-virtual {v2, p1}, Lmega/car/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 150
    :cond_1
    invoke-virtual {v2, p1}, Lmega/car/CarPropertyManager$CarPropertyListeners;->onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V

    .line 159
    :cond_2
    :goto_0
    return-void

    .line 146
    .end local v2    # "listeners":Lmega/car/CarPropertyManager$CarPropertyListeners;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
