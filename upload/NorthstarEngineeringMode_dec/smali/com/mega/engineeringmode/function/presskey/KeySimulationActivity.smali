.class public Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

.field public j:Landroid/os/HandlerThread;

.field public k:Lmega/car/MegaCarProperty;

.field public l:Ln2/i;

.field public final m:Ls0/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Ls0/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->m:Ls0/e;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003a

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->b()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120280

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "KeySimulationActivity"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "initCarService"

    invoke-static {v0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->l:Ln2/i;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->k:Lmega/car/MegaCarProperty;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->m:Ls0/e;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnLongTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->b1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnLongTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->d1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->c1:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnLongTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->r:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnLongTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->y:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->Z:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBinding;->x:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setOnTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;->j:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method
