.class public final synthetic Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg1/a;->a:I

    iput-object p2, p0, Lg1/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg1/a;->a:I

    iget-object p0, p0, Lg1/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->p:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isReady:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmcSoftwareActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p1

    const v0, 0x3300000c

    invoke-virtual {p1, v0}, Lf2/g;->b(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mcuHardWareVersion  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmcHardwareActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;

    check-cast p1, Ljava/lang/Integer;

    sget v0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usbIndex  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CertificateUSBActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/usb/CertificateUSBActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->r:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_2
    check-cast p0, Ln3/l;

    sget v0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->j:I

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/candata/SendFragment;

    check-cast p1, Lj1/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->c:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;->a(Lj1/a;)V

    :cond_2
    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->m(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
