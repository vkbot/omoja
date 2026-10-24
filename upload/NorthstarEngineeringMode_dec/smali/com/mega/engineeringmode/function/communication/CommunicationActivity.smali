.class public Lcom/mega/engineeringmode/function/communication/CommunicationActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Lk1/e;


# instance fields
.field public i:Lk1/d;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public final m:Lf/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lf/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->m:Lf/c;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201cb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a0109

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a0344

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a0310

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->l:Landroid/widget/TextView;

    new-instance p1, Lk1/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk1/d$a;

    invoke-direct {v0, p1}, Lk1/d$a;-><init>(Lk1/d;)V

    iput-object v0, p1, Lk1/d;->c:Lk1/d$a;

    iput-object p0, p1, Lk1/d;->a:Lk1/e;

    :try_start_0
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v1

    iput-object v1, p1, Lk1/d;->b:Lvendor/mega/message_center/V1_0/IMessageCenter;

    const-string v2, "car_engineering_mode/communication"

    invoke-interface {v1, v2, v0}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lk1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lk1/a;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "CommunicationPresenter"

    const-string v1, "get message center service error"

    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lk1/d;->a:Lk1/e;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lk1/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lk1/a;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->i:Lk1/d;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->m:Lf/c;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->i:Lk1/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Lk1/d;->b:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lk1/d;->c:Lk1/d$a;

    const-string v2, "car_engineering_mode/communication"

    invoke-interface {v1, v2, v0}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->m:Lf/c;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
