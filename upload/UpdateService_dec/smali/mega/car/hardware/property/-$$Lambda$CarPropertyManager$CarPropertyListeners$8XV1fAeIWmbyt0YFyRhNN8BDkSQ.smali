.class public final synthetic Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8XV1fAeIWmbyt0YFyRhNN8BDkSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lmega/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Lmega/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8XV1fAeIWmbyt0YFyRhNN8BDkSQ;->f$0:Lmega/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8XV1fAeIWmbyt0YFyRhNN8BDkSQ;->f$0:Lmega/car/hardware/CarPropertyValue;

    check-cast p1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-static {v0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->lambda$onErrorEvent$1(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
