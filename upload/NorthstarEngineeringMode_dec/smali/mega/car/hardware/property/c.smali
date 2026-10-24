.class public final synthetic Lmega/car/hardware/property/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lmega/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Lmega/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/hardware/property/c;->a:Lmega/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/property/c;->a:Lmega/car/hardware/CarPropertyValue;

    check-cast p1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-static {p0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->a(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
