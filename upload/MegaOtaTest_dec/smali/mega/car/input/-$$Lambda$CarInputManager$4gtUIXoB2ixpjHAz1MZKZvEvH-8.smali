.class public final synthetic Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/input/CustomRotaryEvent;

.field public final synthetic f$1:Lmega/car/input/CarInputManager$CallbackHolder;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;->f$0:Lmega/car/input/CustomRotaryEvent;

    iput-object p2, p0, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;->f$0:Lmega/car/input/CustomRotaryEvent;

    iget-object v1, p0, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-static {v0, v1}, Lmega/car/input/CarInputManager;->lambda$dispatchCustomRotaryEvent$2(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    return-void
.end method
