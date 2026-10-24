.class public final synthetic Lmega/car/hardware/property/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field public final synthetic b:J

.field public final synthetic c:Lmega/car/hardware/property/CarPropertyEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/hardware/property/b;->a:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-wide p2, p0, Lmega/car/hardware/property/b;->b:J

    iput-object p4, p0, Lmega/car/hardware/property/b;->c:Lmega/car/hardware/property/CarPropertyEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lmega/car/hardware/property/b;->c:Lmega/car/hardware/property/CarPropertyEvent;

    check-cast p1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    iget-object v1, p0, Lmega/car/hardware/property/b;->a:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-wide v2, p0, Lmega/car/hardware/property/b;->b:J

    invoke-static {v1, v2, v3, v0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->b(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
