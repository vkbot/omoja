.class public final synthetic Lmega/car/input/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lmega/car/input/CustomRotaryEvent;

.field public final synthetic r:Lmega/car/input/CarInputManager$CallbackHolder;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/c;->c:Lmega/car/input/CustomRotaryEvent;

    iput-object p2, p0, Lmega/car/input/c;->r:Lmega/car/input/CarInputManager$CallbackHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmega/car/input/c;->c:Lmega/car/input/CustomRotaryEvent;

    iget-object p0, p0, Lmega/car/input/c;->r:Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-static {v0, p0}, Lmega/car/input/CarInputManager;->c(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    return-void
.end method
