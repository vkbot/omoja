.class public final synthetic Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/input/CarInputManager;

.field public final synthetic f$1:Lmega/car/input/CarInputManager$CallbackHolder;

.field public final synthetic f$2:Lmega/car/input/CustomInputEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$0:Lmega/car/input/CarInputManager;

    iput-object p2, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    iput-object p3, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$2:Lmega/car/input/CustomInputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$0:Lmega/car/input/CarInputManager;

    iget-object v1, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object v2, p0, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;->f$2:Lmega/car/input/CustomInputEvent;

    invoke-virtual {v0, v1, v2}, Lmega/car/input/CarInputManager;->lambda$dispatchCustomInputEvent$1$CarInputManager(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    return-void
.end method
