.class public final synthetic Lw0/d;
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

    iput p1, p0, Lw0/d;->a:I

    iput-object p2, p0, Lw0/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lw0/d;->a:I

    const/4 v0, 0x1

    const-string/jumbo v1, "this$0"

    iget-object p0, p0, Lw0/d;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;

    sget p1, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.mega.carsettings"

    const-string v1, "com.mega.carsettings.CarSettingActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p1, "tab_index"

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/ui/LoginFragment;

    sget p1, Lcom/mega/engineeringmode/ui/LoginFragment;->f:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/LoginFragment;->o()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg2/b;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Le1/a;-><init>(Landroid/content/Context;)V

    iput-object p0, p1, Lg2/b;->d:Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object p0, p1, Le1/a;->c:Landroid/widget/TextView;

    const v0, 0x7f1200fd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Le1/a;->show()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;

    sget p1, Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;

    sget p1, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;->j:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;->i:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_0

    const p1, 0x2b000001

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_0
    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    sget p1, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    invoke-static {p0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->g()V

    return-void

    :pswitch_6
    check-cast p0, Lcom/mega/engineeringmode/function/radio/RadioActivity;

    sget p1, Lcom/mega/engineeringmode/function/radio/RadioActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.car.radio"

    const-string v2, "com.android.car.radio.RadioActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RadioActivity"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_7
    check-cast p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;

    sget p1, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->k:I

    invoke-static {p0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_8
    check-cast p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;

    sget p1, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->j:I

    invoke-static {p0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    const v1, 0x670000cd

    invoke-virtual {p1, v1, v0}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    const p1, 0x7f120186

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1388

    invoke-static {p0, p1, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

    sget p1, Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DtcActivity"

    const-string v0, "clickHistory"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    iget v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    iget p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->j:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "dtc_history"

    invoke-static {v0, p0, p1}, Ln2/d;->a(IILjava/lang/String;)V

    :cond_2
    return-void

    :pswitch_a
    check-cast p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    sget p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;->v:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->p(Z)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    sget p1, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r()V

    return-void

    :pswitch_c
    check-cast p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;

    sget p1, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->m:I

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    :cond_3
    return-void

    :pswitch_d
    check-cast p0, Lcom/mega/engineeringmode/function/backlight/BackLightActivity;

    sget p1, Lcom/mega/engineeringmode/function/backlight/BackLightActivity;->j:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_e
    check-cast p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;

    sget p1, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->n:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->n()V

    return-void

    :pswitch_f
    check-cast p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    invoke-static {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->f(Lcom/mega/engineeringmode/function/BaseFunctionActivity;)V

    return-void

    :pswitch_10
    check-cast p0, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;

    iget p1, p0, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;->c:I

    sub-int/2addr p1, v0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;->b(I)V

    :cond_4
    return-void

    :pswitch_11
    check-cast p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_0
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
    .end packed-switch
.end method
