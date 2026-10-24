.class public Lcom/mega/engineeringmode/function/carplay/CarplayActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public i:Lv2/l;

.field public j:Z

.field public k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

.field public final l:Landroid/os/Handler;

.field public final m:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;

.field public final n:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo0/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lo0/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;-><init>(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->m:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;-><init>(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->n:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 2

    const-string/jumbo v0, "updateView  "

    const-string v1, "CarplayActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    const p1, 0x7f1200b5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->b(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120214

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    if-nez p1, :cond_1

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->m:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;

    invoke-virtual {p1, v0}, Lv2/l;->h(Lv2/i;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lv2/l;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarplayActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->j:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterCarPlayLinkMgrListener --- callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->n:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "l"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lv2/l;->c:Lv2/h;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_1

    iget-object v2, v0, Lv2/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lv2/l;->d:Lv2/m;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lv2/l;->c:Lv2/h;

    invoke-interface {v3, v2}, Lv2/h;->G(Lv2/c;)V

    iput-object v5, v0, Lv2/l;->d:Lv2/m;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, "unRegisterCarPlayLinkMgrListener --- RemoteException"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unRegisterCarPlayLinkMgrListener --- mInterface == null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->m:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;

    invoke-virtual {v0, v2}, Lv2/l;->j(Lv2/i;)V

    :try_start_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    invoke-virtual {v0}, Lv2/l;->i()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v5, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    :cond_2
    return-void
.end method
