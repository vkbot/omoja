.class Lmega/car/CarPropertyManager$CarPropertyListeners$1;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/CarPropertyManager$CarPropertyListeners;->onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmega/car/CarPropertyManager$CarPropertyListeners;

.field final synthetic val$event:Lmega/car/hardware/property/CarPropertyEvent;

.field final synthetic val$updateTime:J


# direct methods
.method constructor <init>(Lmega/car/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p1, "this$1"    # Lmega/car/CarPropertyManager$CarPropertyListeners;

    .line 432
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners$1;, "Lmega/car/CarPropertyManager$CarPropertyListeners$1;"
    iput-object p1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->this$1:Lmega/car/CarPropertyManager$CarPropertyListeners;

    iput-wide p2, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->val$updateTime:J

    iput-object p4, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->val$event:Lmega/car/hardware/property/CarPropertyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 435
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners$1;, "Lmega/car/CarPropertyManager$CarPropertyListeners$1;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->this$1:Lmega/car/CarPropertyManager$CarPropertyListeners;

    iget-wide v1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->val$updateTime:J

    invoke-virtual {v0, p1, v1, v2}, Lmega/car/CarPropertyManager$CarPropertyListeners;->needUpdateForSelectedListener(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$1;->val$event:Lmega/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v0}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 437
    .local v0, "value":Lmega/car/hardware/CarPropertyValue;
    instance-of v1, p1, Lmega/car/CarPropertyManager$CarPropChangeCallback;

    if-eqz v1, :cond_0

    .line 438
    move-object v1, p1

    check-cast v1, Lmega/car/CarPropertyManager$CarPropChangeCallback;

    .line 439
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    .line 440
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 438
    invoke-interface {v1, v2, v3, v4}, Lmega/car/CarPropertyManager$CarPropChangeCallback;->onChanged(ILjava/lang/Object;Z)V

    goto :goto_0

    .line 442
    :cond_0
    instance-of v1, p1, Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    if-eqz v1, :cond_1

    .line 443
    move-object v1, p1

    check-cast v1, Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    invoke-interface {v1, v0}, Lmega/car/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    .line 446
    .end local v0    # "value":Lmega/car/hardware/CarPropertyValue;
    :cond_1
    :goto_0
    return-void
.end method
