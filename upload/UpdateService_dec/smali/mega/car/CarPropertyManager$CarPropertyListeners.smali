.class Lmega/car/CarPropertyManager$CarPropertyListeners;
.super Lmega/car/CarRatedFloatListeners;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarPropertyListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmega/car/CarRatedFloatListeners<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/CarPropertyManager;


# direct methods
.method constructor <init>(Lmega/car/CarPropertyManager;F)V
    .locals 0
    .param p2, "rate"    # F

    .line 416
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners;, "Lmega/car/CarPropertyManager$CarPropertyListeners<TT;>;"
    iput-object p1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/CarPropertyManager;

    .line 417
    invoke-direct {p0, p2}, Lmega/car/CarRatedFloatListeners;-><init>(F)V

    .line 418
    return-void
.end method


# virtual methods
.method onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "event"    # Lmega/car/hardware/property/CarPropertyEvent;

    .line 452
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners;, "Lmega/car/CarPropertyManager$CarPropertyListeners<TT;>;"
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 453
    .local v0, "value":Lmega/car/hardware/CarPropertyValue;
    iget-object v1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/CarPropertyManager;

    invoke-static {v1}, Lmega/car/CarPropertyManager;->access$000(Lmega/car/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 454
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    new-instance v1, Lmega/car/CarPropertyManager$CarPropertyListeners$2;

    invoke-direct {v1, p0, v0}, Lmega/car/CarPropertyManager$CarPropertyListeners$2;-><init>(Lmega/car/CarPropertyManager$CarPropertyListeners;Lmega/car/hardware/CarPropertyValue;)V

    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 477
    return-void

    .line 455
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 6
    .param p1, "event"    # Lmega/car/hardware/property/CarPropertyEvent;

    .line 422
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners;, "Lmega/car/CarPropertyManager$CarPropertyListeners<TT;>;"
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    .line 423
    .local v0, "updateTime":J
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    .line 424
    .local v2, "areaId":I
    invoke-virtual {p0, v2, v0, v1}, Lmega/car/CarPropertyManager$CarPropertyListeners;->needUpdateForAreaId(IJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 425
    invoke-static {}, Lmega/car/CarPropertyManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropping old property data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 429
    :cond_0
    iget-object v3, p0, Lmega/car/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/CarPropertyManager;

    invoke-static {v3}, Lmega/car/CarPropertyManager;->access$000(Lmega/car/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 430
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    new-instance v3, Lmega/car/CarPropertyManager$CarPropertyListeners$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lmega/car/CarPropertyManager$CarPropertyListeners$1;-><init>(Lmega/car/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v4, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 448
    return-void

    .line 431
    .end local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
