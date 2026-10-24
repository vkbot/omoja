.class public Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBinding;

.field public j:Lz1/d;

.field public k:I

.field public final l:Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    new-instance v0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;-><init>(Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->l:Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;

    return-void
.end method


# virtual methods
.method public final n(Lcom/mega/engineeringmode/function/screen/ScreenStatus;)V
    .locals 2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindScreenStatus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmStatusActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBinding;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBinding;->b(Lcom/mega/engineeringmode/function/screen/ScreenStatus;)V

    const-string v0, "0"

    iget-object v1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->fuctionStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0x00"

    iget-object p1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->fuctionStatus:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->j:Lz1/d;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lz1/d;->e(I)V

    :cond_1
    iget p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBinding;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1200f6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Lz1/d;

    invoke-direct {p1}, Lz1/d;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->j:Lz1/d;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->l:Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;

    invoke-virtual {p1, v0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->j:Lz1/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz1/d;->e(I)V

    iget p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->k:I

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->j:Lz1/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;->l:Lcom/mega/engineeringmode/function/screen/IcmStatusActivity$a;

    invoke-virtual {v0, p0}, Lz1/d;->f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    :cond_0
    return-void
.end method
