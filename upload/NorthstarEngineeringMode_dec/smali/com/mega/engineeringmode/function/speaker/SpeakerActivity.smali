.class public Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Lb2/a;


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lb2/e;

.field public l:Lmega/car/MegaCarProperty;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1202de

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1202dd

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0048

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201dc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-static {p0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->l:Lmega/car/MegaCarProperty;

    const p1, 0x7f0a036b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a0369

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a0363

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb2/c;-><init>(Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0365

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb2/d;

    invoke-direct {v0, p0, v1}, Lb2/d;-><init>(Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0367

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lq0/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0366

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb2/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lb2/c;-><init>(Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0368

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb2/d;

    invoke-direct {v0, p0, v1}, Lb2/d;-><init>(Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance p1, Lb2/e;

    invoke-direct {p1, p0}, Lb2/e;-><init>(Lb2/a;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    iget-object v0, p1, Lb2/e;->d:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lb2/e;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lb2/e;->e:Lb2/e$a;

    invoke-interface {v0, v1, p1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    iget-object p1, p0, Lb2/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lb2/e;->a(Ljava/util/ArrayList;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "viewInfo"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpeakerMessagePresenter"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb2/e;->d:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb2/e;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lb2/e;->e:Lb2/e$a;

    invoke-interface {v0, v1, p0}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
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
