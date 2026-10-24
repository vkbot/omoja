.class public Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public final k:Landroid/os/Handler;

.field public l:Lh1/a;

.field public m:Lh1/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo0/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lo0/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->k:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 4

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "l"

    const-string v2, "getAndroidAutoConnectionStatus in. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lv2/l;->f()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "getAndroidAutoConnectionStatus~~mInterface is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lv2/l;->c:Lv2/h;

    invoke-interface {v0}, Lv2/h;->K()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->o(I)V

    return-void
.end method

.method public final o(I)V
    .locals 2

    const-string/jumbo v0, "updateAndroidAutoState  "

    const-string v1, "AndroidAutoTestActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f1200e7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f1200e1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f120136

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f1200e2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f12019b

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f12035f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    const p1, 0x7f0a00f6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00f3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a00f2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv2/l;->e(Landroid/content/Context;)V

    new-instance p1, Lh1/a;

    invoke-direct {p1, p0}, Lh1/a;-><init>(Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->l:Lh1/a;

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->l:Lh1/a;

    invoke-virtual {p1, p0}, Lv2/l;->h(Lv2/i;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->m:Lh1/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->m:Lh1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterAndroidAutoListener --- callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "l"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lv2/l;->c:Lv2/h;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    iget-object v2, v0, Lv2/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lv2/l;->f:Lv2/o;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lv2/l;->c:Lv2/h;

    invoke-interface {v2, v1}, Lv2/h;->I(Lv2/a;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lv2/l;->f:Lv2/o;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, "unregisterAndroidAutoListener --- RemoteException"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unregisterAndroidAutoListener --- mInterface == null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->l:Lh1/a;

    if-eqz v0, :cond_2

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->l:Lh1/a;

    invoke-virtual {v0, p0}, Lv2/l;->j(Lv2/i;)V

    :cond_2
    return-void
.end method
