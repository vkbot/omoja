.class public final synthetic Lmega/car/input/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lmega/car/input/CarInputManager;

.field public final synthetic r:Lmega/car/input/CarInputManager$CallbackHolder;

.field public final synthetic x:Lmega/car/input/CustomInputEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/a;->c:Lmega/car/input/CarInputManager;

    iput-object p2, p0, Lmega/car/input/a;->r:Lmega/car/input/CarInputManager$CallbackHolder;

    iput-object p3, p0, Lmega/car/input/a;->x:Lmega/car/input/CustomInputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmega/car/input/a;->r:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object v1, p0, Lmega/car/input/a;->x:Lmega/car/input/CustomInputEvent;

    iget-object p0, p0, Lmega/car/input/a;->c:Lmega/car/input/CarInputManager;

    invoke-static {p0, v0, v1}, Lmega/car/input/CarInputManager;->b(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    return-void
.end method
