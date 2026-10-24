.class public final synthetic Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq0/a;->a:I

    iput-object p2, p0, Lq0/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, Lq0/a;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    const-string v3, ""

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lmega/widget/ImageSwitch;

    invoke-static {p0, p1}, Lmega/widget/ImageSwitch;->a(Lmega/widget/ImageSwitch;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lk2/a;

    sget p1, Lk2/a;->f:I

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;

    sget p1, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Ln2/m;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mega/engineeringmode/ui/a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/mega/engineeringmode/ui/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ls0/e;

    invoke-direct {v1, v4, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lcom/mega/engineeringmode/ui/a;-><init>(Landroid/content/Context;Lcom/mega/engineeringmode/ui/a$c;)V

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/a;->show()V

    :goto_0
    return-void

    :pswitch_2
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;

    sget p1, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "usbMode"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/ui/LoginFragment;

    sget p1, Lcom/mega/engineeringmode/ui/LoginFragment;->f:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/ui/LoginFragment;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ln2/o;->a:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v2, v1, 0xa

    iget-object v7, p0, Lcom/mega/engineeringmode/ui/LoginFragment;->d:[I

    array-length v8, v7

    if-ge v2, v8, :cond_3

    aget v0, v7, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pwd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginFragment"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Ln2/m;->a:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    :cond_5
    :goto_1
    sput-boolean v5, Lcom/mega/engineeringmode/EngineeringModeApplication;->d:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/MainActivity;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/MainActivity;->n()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/LoginFragment;->o()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/mega/engineeringmode/ui/LoginFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/mega/engineeringmode/ui/LoginFragment;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :pswitch_4
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg2/a;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Le1/a;-><init>(Landroid/content/Context;)V

    iput-object p0, p1, Lg2/a;->d:Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object p0, p1, Le1/a;->c:Landroid/widget/TextView;

    const v0, 0x7f1200c9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Le1/a;->show()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->k:Lb2/e;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lb2/e;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lb2/e;->a(Ljava/util/ArrayList;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rlFuc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " value 4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeakerMessagePresenter"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->l:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_8

    const p1, 0x50000062

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_8
    return-void

    :pswitch_6
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/screen/MasterTouchActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/MasterTouchActivity;->i:Lcom/mega/engineeringmode/function/screen/PaintView;

    if-eqz p0, :cond_9

    iget-object p1, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_9
    return-void

    :pswitch_7
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    iget p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    array-length v1, v0

    sub-int/2addr v1, v5

    if-ge p1, v1, :cond_a

    add-int/2addr p1, v5

    iput p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->i:Landroid/view/View;

    if-eqz v1, :cond_a

    aget p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;->i:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_b

    const p1, 0x2b000001

    invoke-virtual {p0, p1, v2}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_b
    return-void

    :pswitch_9
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/presskey/PressKeyActivity;

    sget p1, Lcom/mega/engineeringmode/function/presskey/PressKeyActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/presskey/KeySimulationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :pswitch_b
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    if-eqz p1, :cond_e

    const-string v0, "getHiCarConnectionStatus in. "

    const-string v1, "l"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Lv2/l;->f()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p1, "getHiCarConnectionStatus~~mInterface is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_d
    iget-object p1, p1, Lv2/l;->c:Lv2/h;

    invoke-interface {p1}, Lv2/h;->e()I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {p0, v6}, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->n(I)V

    :cond_e
    return-void

    :pswitch_c
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

    sget p1, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DtcActivity"

    const-string v0, "clickCurrent"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    iget p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "dtc_current"

    invoke-static {p0, v6, p1}, Ln2/d;->a(IILjava/lang/String;)V

    :cond_f
    return-void

    :pswitch_d
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result p1

    const-string v0, " micInValue  "

    const-string v1, "DspActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->l:Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    if-eqz v0, :cond_10

    const/16 v1, 0xb

    :try_start_1
    invoke-interface {v0, v1, p1}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->setVolumeGain(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/dsp/DspActivity;->n(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_7
    return-void

    :pswitch_e
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/display/VideoActivity;

    sget p1, Lcom/mega/engineeringmode/function/display/VideoActivity;->p:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void

    :pswitch_f
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/display/AudioActivity;

    sget p1, Lcom/mega/engineeringmode/function/display/AudioActivity;->r:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void

    :pswitch_10
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;

    sget p1, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;->l:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lo0/d;->f(Landroid/content/Context;)Lo0/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CarLinkDeviceManager"

    const-string v1, "getCarLinkConnectStatus() status: "

    :try_start_2
    invoke-virtual {p1}, Lo0/d;->d()V

    iget-object v2, p1, Lo0/d;->c:Lo0/h;

    if-nez v2, :cond_11

    const-string p1, "getCarLinkConnectStatus mService is null"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_3
    move-exception p1

    goto :goto_8

    :cond_11
    iget-object p1, p1, Lo0/d;->c:Lo0/h;

    invoke-interface {p1}, Lo0/h;->A()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move v6, p1

    goto :goto_9

    :goto_8
    const-string v1, "getCarLinkConnectStatus error: "

    invoke-static {v0, v1, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    invoke-virtual {p0, v6}, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;->n(I)V

    return-void

    :pswitch_11
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->j:Landroid/widget/EditText;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_c

    :cond_12
    iget-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_16

    const/16 v0, 0x64

    if-le p1, v0, :cond_13

    goto :goto_b

    :cond_13
    const/4 v1, 0x2

    if-nez p1, :cond_14

    iget-object v2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->p:Ln2/i;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v1, v6}, Ln2/i;->b(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->p:Ln2/i;

    if-eqz v2, :cond_15

    iget-boolean v3, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    if-eqz v3, :cond_15

    invoke-virtual {v2, v1, v5}, Ln2/i;->b(II)Z

    move-result v1

    xor-int/2addr v1, v5

    iput-boolean v1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->q:Z

    :cond_15
    :goto_a
    mul-int/lit16 v1, p1, 0xfe

    div-int/2addr v1, v0

    iput v1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    const-string/jumbo v0, "setLight  precentValue "

    const-string v1, " mSetLightValue "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    const-string v1, "MainScreenLightActivity"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->o(I)V

    goto :goto_c

    :cond_16
    :goto_b
    const-string p1, "input 0-100"

    invoke-static {p0, p1, v6}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_17
    :goto_c
    return-void

    :pswitch_12
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/backlight/BackLightActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/backlight/BackLightActivity;->i:Lmega/car/MegaCarProperty;

    if-eqz p1, :cond_19

    const v0, 0x400000a

    invoke-virtual {p1, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result p1

    const-string v0, "checkEnvironment gear "

    const-string v1, "BackLightActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/BackLightActivity;->i:Lmega/car/MegaCarProperty;

    const v2, 0x400000b

    invoke-virtual {v0, v2}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkEnvironment speed  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ld/f;->N(FI)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0, p1}, Ld/f;->I(FI)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Ld/f;->O(I)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    :cond_19
    const p1, 0x7f120047

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_d
    return-void

    :pswitch_13
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_14
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/AdbActivity;

    sget p1, Lcom/mega/engineeringmode/function/AdbActivity;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mAdbBtn  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/AdbActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdbActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "persist.vendor.usb.mode"

    const-string v0, "device"

    invoke-static {p1, v0}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/AdbActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/AdbActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_15
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getMin()I

    move-result v0

    if-gt p1, v0, :cond_1a

    goto :goto_e

    :cond_1a
    iget v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getMin()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    :cond_1b
    :goto_e
    return-void

    :pswitch_16
    iget-object p0, p0, Lq0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    iget-object p1, p1, Ls0/d;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Ld/f;->h(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
