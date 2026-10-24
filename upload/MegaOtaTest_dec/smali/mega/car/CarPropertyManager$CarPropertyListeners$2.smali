.class Lmega/car/CarPropertyManager$CarPropertyListeners$2;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
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

.field final synthetic val$value:Lmega/car/hardware/CarPropertyValue;


# direct methods
.method constructor <init>(Lmega/car/CarPropertyManager$CarPropertyListeners;Lmega/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p1, "this$1"    # Lmega/car/CarPropertyManager$CarPropertyListeners;

    .line 456
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners$2;, "Lmega/car/CarPropertyManager$CarPropertyListeners$2;"
    iput-object p1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->this$1:Lmega/car/CarPropertyManager$CarPropertyListeners;

    iput-object p2, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->val$value:Lmega/car/hardware/CarPropertyValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 465
    .local p0, "this":Lmega/car/CarPropertyManager$CarPropertyListeners$2;, "Lmega/car/CarPropertyManager$CarPropertyListeners$2;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lmega/car/CarPropertyManager$CarPropChangeCallback;

    if-eqz v0, :cond_0

    .line 466
    move-object v0, p1

    check-cast v0, Lmega/car/CarPropertyManager$CarPropChangeCallback;

    iget-object v1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->val$value:Lmega/car/hardware/CarPropertyValue;

    .line 467
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    iget-object v2, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->val$value:Lmega/car/hardware/CarPropertyValue;

    .line 468
    invoke-virtual {v2}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    .line 466
    invoke-interface {v0, v1, v2, v3}, Lmega/car/CarPropertyManager$CarPropChangeCallback;->onChanged(ILjava/lang/Object;Z)V

    goto :goto_0

    .line 470
    :cond_0
    instance-of v0, p1, Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    if-eqz v0, :cond_1

    .line 471
    move-object v0, p1

    check-cast v0, Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    iget-object v1, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->val$value:Lmega/car/hardware/CarPropertyValue;

    .line 472
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    iget-object v2, p0, Lmega/car/CarPropertyManager$CarPropertyListeners$2;->val$value:Lmega/car/hardware/CarPropertyValue;

    .line 473
    invoke-virtual {v2}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    .line 471
    invoke-interface {v0, v1, v2}, Lmega/car/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    .line 475
    :cond_1
    :goto_0
    return-void
.end method
