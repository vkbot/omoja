.class public Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public final s:I

.field public final t:Landroid/os/Handler;

.field public u:Ln0/a;

.field public final v:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->s:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->t:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;-><init>(Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->v:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getData id 2 type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DashboardStatusActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0, v1, p1, v0}, Ln0/a;->D(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1200f6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->v:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ln0/a;->B(ILn0/b;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const p1, 0x7f0a0149

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a014b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0a0146

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a014f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f0a014d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a01ae

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f0a0083

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a035e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f0a038c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a0147

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->r:Landroid/widget/TextView;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->v:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity$a;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0}, Ln0/a;->H(ILn0/b$a;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_3
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_4
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_5
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_6
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_7
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_8
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->u:Ln0/a;

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n(I)V

    :cond_9
    return-void
.end method
