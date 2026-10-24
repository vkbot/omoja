.class public final synthetic Lx0/b;
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

    iput p1, p0, Lx0/b;->a:I

    iput-object p2, p0, Lx0/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget v0, p0, Lx0/b;->a:I

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lx0/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lk2/a;

    iget-object p1, p0, Lk2/a;->a:Lk2/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lk2/a$a;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;

    sget p1, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;->a:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/MainActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "MainActivity"

    const-string/jumbo v0, "showEncryptionUI"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainEncryptionFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "MainUnEncryptionFragment"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    if-nez v0, :cond_1

    new-instance v0, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;

    invoke-direct {v0}, Lcom/mega/engineeringmode/ui/MainEncryptionFragment;-><init>()V

    const v4, 0x7f0a010b

    invoke-virtual {v3, v4, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hide:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iput-object v0, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/ui/LoginFragment;

    sget p1, Lcom/mega/engineeringmode/ui/LoginFragment;->f:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/LoginFragment;->o()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;

    sget p1, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->h:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;->onClick()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/upgrade/a;

    sget p1, Lcom/mega/engineeringmode/function/upgrade/a;->i:I

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/engineeringmode/function/screen/MasterTouchActivity;

    sget p1, Lcom/mega/engineeringmode/function/screen/MasterTouchActivity;->j:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void

    :pswitch_6
    check-cast p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    iget p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    if-lez p1, :cond_3

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n()V

    return-void

    :pswitch_7
    check-cast p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;->i:Lmega/car/MegaCarProperty;

    if-eqz p0, :cond_4

    const p1, 0x2b000001

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_4
    return-void

    :pswitch_8
    check-cast p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    sget p1, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->g()V

    return-void

    :pswitch_9
    check-cast p0, Lcom/mega/engineeringmode/function/radio/RadioActivity;

    sget p1, Lcom/mega/engineeringmode/function/radio/RadioActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/mega/engineeringmode/function/presskey/PressKeyActivity;

    sget p1, Lcom/mega/engineeringmode/function/presskey/PressKeyActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ln2/b;->b:Ln2/b;

    const-string v6, "TestVin"

    invoke-virtual {v5, v6, p1}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TestSn"

    invoke-virtual {v5, p1, v0}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TestIccId"

    invoke-virtual {v5, p1, v1}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TestHuId"

    invoke-virtual {v5, p1, v3}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lf/k;

    invoke-direct {v0, v4, v2, p0}, Lf/k;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_c
    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a(I)V

    return-void

    :pswitch_d
    check-cast p0, Lcom/mega/engineeringmode/function/mic/MicActivity;

    sget p1, Lcom/mega/engineeringmode/function/mic/MicActivity;->w:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/mic/MicActivity;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_e
    check-cast p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->i:Ln2/i;

    if-nez p1, :cond_5

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->i:Ln2/i;

    :cond_5
    iget-object p1, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->i:Ln2/i;

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->j:Z

    invoke-virtual {p1, v0}, Ln2/i;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->j:Z

    const-string v1, "QXDM_LOG_KEY"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->j:Z

    if-eqz p1, :cond_6

    const-string p1, "QXDMLog begin\uff0crecord will end after 5 minutes"

    goto :goto_1

    :cond_6
    const-string p1, "QXDMLog end"

    :goto_1
    invoke-static {p0, p1, v3}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/log/QXDMLogActivity;->j:Z

    const-string v0, "QXDMLog"

    if-eqz p1, :cond_7

    const-string p1, "QXDMLogActivity"

    const-string/jumbo v1, "startTimer"

    invoke-static {p1, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker;

    invoke-direct {p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    goto :goto_2

    :cond_7
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    :cond_8
    :goto_2
    return-void

    :pswitch_f
    check-cast p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result p1

    const-string v0, " builtInValue  "

    const-string v1, "DspActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->l:Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    if-eqz v0, :cond_9

    :try_start_1
    invoke-interface {v0, p1}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->setREFGain(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/dsp/DspActivity;->n(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    return-void

    :pswitch_10
    check-cast p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->q:Ljava/io/File;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->r:Ljava/io/File;

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->o:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->p(Z)V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->t:Ls0/b;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_b
    :goto_4
    const-string p1, "DisplayActivity"

    const-string v0, "mIviPng == null || mIpkPng == null"

    invoke-static {p1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v3}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->n(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v3}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->o(I)V

    :cond_d
    :goto_5
    return-void

    :pswitch_11
    check-cast p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ld/g;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "itemView click name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BondState  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  isConnected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BlueToothDataAdapter"

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "start connect"

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->b()Z

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->c:Ld/g;

    if-eqz v0, :cond_e

    iget-object v0, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_f

    :cond_e
    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->c:Ld/g;

    :cond_f
    return-void

    :pswitch_12
    check-cast p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;

    sget p1, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    const v0, 0x400000a

    invoke-virtual {p1, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkEnvironment gear "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DashboardLightActivity"

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    const v5, 0x400000b

    invoke-virtual {v0, v5}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkEnvironment speed  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ld/f;->N(FI)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {v0, p1}, Ld/f;->I(FI)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Ld/f;->O(I)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    const p1, 0x7f120047

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_9

    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->j:Landroid/widget/EditText;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_9

    :cond_12
    iget-object p1, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_16

    if-le p1, v1, :cond_13

    goto :goto_8

    :cond_13
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->o:Ln2/i;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v4, v3}, Ln2/i;->b(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->p:Z

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->o:Ln2/i;

    if-eqz v0, :cond_15

    iget-boolean v3, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->p:Z

    if-eqz v3, :cond_15

    invoke-virtual {v0, v4, v4}, Ln2/i;->b(II)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->p:Z

    :cond_15
    :goto_7
    mul-int/lit16 v0, p1, 0xfe

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->l:I

    const-string/jumbo v0, "setLight precentValue "

    const-string v1, " mSetLightValue "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->l:I

    invoke-static {p1, v0, v2}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->l:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/backlight/DashboardLightActivity;->o(I)V

    goto :goto_9

    :cond_16
    :goto_8
    const-string p1, "input 0-100"

    invoke-static {p0, p1, v3}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_17
    :goto_9
    return-void

    :pswitch_13
    check-cast p0, Lcom/mega/engineeringmode/function/SystemResetActivity;

    sget p1, Lcom/mega/engineeringmode/function/SystemResetActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk2/a;

    invoke-direct {p1, p0}, Lk2/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ls0/e;

    invoke-direct {v0, v2, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lk2/a;->a:Lk2/a$a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120318

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk2/a;->a(Ljava/lang/String;)V

    return-void

    :pswitch_14
    check-cast p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;

    sget p1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk2/a;

    invoke-direct {p1, p0}, Lk2/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lg1/y;

    invoke-direct {v0, p0, v3}, Lg1/y;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V

    iput-object v0, p1, Lk2/a;->a:Lk2/a$a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12030a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk2/a;->a(Ljava/lang/String;)V

    return-void

    :pswitch_15
    check-cast p0, Lcom/mega/engineeringmode/function/AdbActivity;

    sget p1, Lcom/mega/engineeringmode/function/AdbActivity;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mUsbBtn  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/AdbActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdbActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "persist.vendor.usb.mode"

    const-string v0, "host"

    invoke-static {p1, v0}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/AdbActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/AdbActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_16
    check-cast p0, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;

    iget p1, p0, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;->c:I

    add-int/2addr p1, v4

    if-lt p1, v4, :cond_18

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/tether/TetherEditPreference;->b(I)V

    :cond_18
    return-void

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
