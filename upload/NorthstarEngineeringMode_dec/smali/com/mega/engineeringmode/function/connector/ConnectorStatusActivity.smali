.class public Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mega/engineeringmode/function/tbox/b$b;


# static fields
.field public static final synthetic r:I


# instance fields
.field public final i:Landroid/os/Handler;

.field public j:Lz1/d;

.field public k:Lz1/d;

.field public final l:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;

.field public final m:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;

.field public n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

.field public o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

.field public p:Landroid/os/storage/StorageManager;

.field public final q:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;-><init>(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->l:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;-><init>(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->m:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;-><init>(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->q:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;

    return-void
.end method

.method public static n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll1/d;

    invoke-direct {v0, p0, p1, p2}, Ll1/d;-><init>(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static o(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ll1/b;-><init>(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static p(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ll1/c;-><init>(ILjava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static q(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->t()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-object p0, Ln2/c;->a:Ljava/lang/String;

    const-string/jumbo p0, "ro.ecu.config.ICM_APA"

    invoke-static {p0, v0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p0

    const-string v1, " getApa "

    const-string v2, "ConnectorStatusActivity"

    invoke-static {v1, p0, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string/jumbo p0, "ro.ecu.config.ICM_AVM"

    invoke-static {p0, v0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p0

    const-string v3, "getAvm "

    invoke-static {v3, p0, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p0, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static t()I
    .locals 3

    sget-object v0, Ln2/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.ecu.config.AVM_INTER_METHOD"

    invoke-static {v1, v0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "getAvmInterMethod "

    const-string v2, "ConnectorStatusActivity"

    invoke-static {v1, v0, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final g(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->s()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1200eb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->b(Lcom/mega/engineeringmode/function/connector/ConnectorStatus;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->b1:Landroid/widget/Button;

    new-instance v0, Lw0/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/tbox/b;->a(Lcom/mega/engineeringmode/function/tbox/b$b;)V

    new-instance p1, Ll1/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, v0}, Ll1/b;-><init>(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ll1/a;

    const/4 v2, 0x1

    invoke-direct {p1, v2, p0, v0}, Ll1/a;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->q:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;

    invoke-static {p1, v0}, Ln2/d;->d(ILn0/b$a;)V

    new-instance p1, Lz1/d;

    invoke-direct {p1}, Lz1/d;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->j:Lz1/d;

    new-instance p1, Lz1/d;

    invoke-direct {p1}, Lz1/d;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->k:Lz1/d;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->j:Lz1/d;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->l:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;

    invoke-virtual {p1, v0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->k:Lz1/d;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->m:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;

    invoke-virtual {p1, v0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "ConnectorStatusActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->q:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;

    invoke-static {v0, v1}, Ln2/d;->e(ILn0/b$a;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->j:Lz1/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->l:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$a;

    invoke-virtual {v0, v1}, Lz1/d;->f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->k:Lz1/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->m:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$b;

    invoke-virtual {v0, v1}, Lz1/d;->f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_1
    sget-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r()V
    .locals 5

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    const/4 v1, 0x2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ln2/d;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->j:Lz1/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lz1/d;->e(I)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->k:Lz1/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lz1/d;->e(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->s()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->f1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lx1/a;->a()Lx1/a;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a;->b()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    const-string v0, " checkUsbStatus "

    const-string v3, "ConnectorStatusActivity"

    invoke-static {v0, v2, v3}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->i1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->g1:Ljava/lang/String;

    const/16 p0, 0x19

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->h1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->e1:Ljava/lang/String;

    const/16 p0, 0x18

    invoke-virtual {v1, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "checkTboxStatus  "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConnectorStatusActivity"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1200e4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1200ec

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
