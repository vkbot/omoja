.class public final synthetic Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/input/CarInputManager$CallbackHolder;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;->f$0:Lmega/car/input/CarInputManager$CallbackHolder;

    iput-object p2, p0, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;->f$0:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object v1, p0, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lmega/car/input/CarInputManager;->lambda$dispatchKeyEvent$0(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    return-void
.end method
