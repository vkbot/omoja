.class public Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final i:Landroid/os/HandlerThread;

.field public final j:Landroid/os/Handler;

.field public k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

.field public l:Landroid/os/Handler;

.field public m:Lmega/car/input/CarInputManager;

.field public final n:Lf/c;

.field public final o:Landroidx/constraintlayout/helper/widget/a;

.field public final p:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyInputActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->i:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->j:Landroid/os/Handler;

    new-instance v0, Lf/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n:Lf/c;

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->o:Landroidx/constraintlayout/helper/widget/a;

    new-instance v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;-><init>(Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->p:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;

    return-void
.end method


# virtual methods
.method public final n(IZ)V
    .locals 3

    invoke-static {}, Ln2/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/mega/engineeringmode/function/presskey/T1GCKeyCode;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/mega/engineeringmode/function/presskey/KeyCode;

    :goto_0
    iget-object v1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->j:Landroid/os/Handler;

    new-instance v2, Lw1/b;

    invoke-direct {v2, p0, p1, v0, p2}, Lw1/b;-><init>(Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;ILjava/lang/Class;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;->b()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f12027a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->l:Landroid/os/Handler;

    new-instance p1, Lw1/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2, p1}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object p1

    const-string v0, "KeyInput"

    invoke-virtual {p1, v0}, Lmega/car/MegaCar;->getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;

    move-result-object p1

    check-cast p1, Lmega/car/input/CarInputManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->m:Lmega/car/input/CarInputManager;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->i:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->m:Lmega/car/input/CarInputManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->l:Landroid/os/Handler;

    const/16 v2, 0xc8

    const/4 v3, 0x3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->p:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;

    invoke-virtual {v0, v2, v3, v1, p0}, Lmega/car/input/CarInputManager;->requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->m:Lmega/car/input/CarInputManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->releaseInputEventCapture()V

    :cond_0
    return-void
.end method
