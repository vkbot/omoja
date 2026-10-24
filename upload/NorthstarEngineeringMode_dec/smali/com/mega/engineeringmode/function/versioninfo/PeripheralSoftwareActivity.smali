.class public Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public final n:Landroid/os/Handler;

.field public final o:I

.field public final p:I

.field public q:Ln0/a;

.field public final r:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;

.field public final s:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;

.field public final t:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;

.field public u:Lz1/d;

.field public v:Lz1/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->n:Landroid/os/Handler;

    const/4 v0, 0x2

    iput v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->o:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->p:I

    new-instance v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;-><init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->r:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;-><init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->s:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;-><init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->t:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;

    return-void
.end method


# virtual methods
.method public final n(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " updateView  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeripheralSoftwareActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->n:Landroid/os/Handler;

    new-instance v1, Lf2/d;

    invoke-direct {v1, p0, p1, p2}, Lf2/d;-><init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0080

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120394

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a01c8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a01f6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a03a9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a005e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a005d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a00e0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->l:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p1

    iget-object p1, p1, Lf2/g;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->q:Ln0/a;

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "PeripheralSoftwareActivity"

    const-string v0, " register callback "

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->q:Ln0/a;

    iget v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->o:I

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->r:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;

    invoke-interface {p1, v0, v1}, Ln0/a;->B(ILn0/b;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p1, Lz1/d;

    invoke-direct {p1}, Lz1/d;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->v:Lz1/d;

    new-instance p1, Lz1/d;

    invoke-direct {p1}, Lz1/d;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->u:Lz1/d;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->v:Lz1/d;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->s:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;

    invoke-virtual {p1, v0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->u:Lz1/d;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->t:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;

    invoke-virtual {p1, p0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "PeripheralSoftwareActivity"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->q:Ln0/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->o:I

    iget-object v2, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->r:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$a;

    invoke-interface {v0, v1, v2}, Ln0/a;->H(ILn0/b$a;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object v0

    iget-object v0, v0, Lf2/g;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->v:Lz1/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->s:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$b;

    invoke-virtual {v0, v1}, Lz1/d;->f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->u:Lz1/d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->t:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;

    invoke-virtual {v0, p0}, Lz1/d;->f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    const-string v0, "PeripheralSoftwareActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->v:Lz1/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lz1/d;->e(I)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->u:Lz1/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz1/d;->e(I)V

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->v:Lz1/d;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, Ln2/i;

    const-string v1, "car_engineering_mode/general_ctrl/req"

    invoke-virtual {p0, v1, v0}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    const-string/jumbo v0, "reqApaVersionInfo "

    const-string v1, "ScreenInfoManager"

    invoke-static {v0, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2
    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p0

    const v0, 0x9000054

    const-string/jumbo v1, "tboxversion"

    invoke-virtual {p0, v0, v1}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " tboxVersion  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "g"

    invoke-static {v3, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lf2/g;->a:Lmega/car/MegaCarProperty;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lf2/g;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
