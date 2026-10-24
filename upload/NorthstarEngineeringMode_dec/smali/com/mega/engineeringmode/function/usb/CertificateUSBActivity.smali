.class public Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

.field public j:Le2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f12037e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Le2/a;

    invoke-direct {p1}, Le2/a;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->j:Le2/a;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->b(Le2/a;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->j:Le2/a;

    iget-object p1, p1, Le2/a;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->j:Le2/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method
