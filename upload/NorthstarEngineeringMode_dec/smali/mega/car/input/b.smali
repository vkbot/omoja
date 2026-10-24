.class public final synthetic Lmega/car/input/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lmega/car/input/CarInputManager$CallbackHolder;

.field public final synthetic r:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/b;->c:Lmega/car/input/CarInputManager$CallbackHolder;

    iput-object p2, p0, Lmega/car/input/b;->r:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmega/car/input/b;->c:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object p0, p0, Lmega/car/input/b;->r:Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lmega/car/input/CarInputManager;->a(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    return-void
.end method
