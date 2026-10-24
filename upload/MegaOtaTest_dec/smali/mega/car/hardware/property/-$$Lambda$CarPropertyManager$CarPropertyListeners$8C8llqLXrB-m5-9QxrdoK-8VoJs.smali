.class public final synthetic Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lmega/car/hardware/property/CarPropertyEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$0:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-wide p2, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$1:J

    iput-object p4, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$2:Lmega/car/hardware/property/CarPropertyEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$0:Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-wide v1, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$1:J

    iget-object v3, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;->f$2:Lmega/car/hardware/property/CarPropertyEvent;

    check-cast p1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->lambda$onPropertyChanged$0$CarPropertyManager$CarPropertyListeners(JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
