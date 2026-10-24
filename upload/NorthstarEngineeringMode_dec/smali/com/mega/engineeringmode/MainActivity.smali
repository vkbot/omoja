.class public Lcom/mega/engineeringmode/MainActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Landroidx/fragment/app/Fragment;

.field public j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    return-void
.end method

.method public final n()V
    .locals 4

    const-string v0, "MainActivity"

    const-string/jumbo v1, "showUnEncryptionUI"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/MainActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainUnEncryptionFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;

    invoke-direct {v0}, Lcom/mega/engineeringmode/ui/MainUnEncryptionFragment;-><init>()V

    const v3, 0x7f0a010b

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    if-eq v2, v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "LoginFragment"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iput-object v0, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d009b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const-string p1, "MainActivity"

    const-string v0, "initView"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/engineeringmode/MainActivity;->j:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    sget-boolean v1, Lcom/mega/engineeringmode/EngineeringModeApplication;->d:Z

    if-nez v1, :cond_7

    sget-boolean v1, Ln2/m;->a:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    sput-boolean p1, Lcom/mega/engineeringmode/EngineeringModeApplication;->d:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/MainActivity;->n()V

    goto/16 :goto_2

    :cond_1
    const-string v1, "login"

    invoke-static {p1, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ln2/c;->a:Ljava/lang/String;

    const-string v2, "T28"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {}, Ln2/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lb1/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mega/engineeringmode/MainActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v1, "showLoginFragment"

    invoke-static {p1, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoginFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    if-nez v1, :cond_3

    new-instance v1, Lcom/mega/engineeringmode/ui/LoginFragment;

    invoke-direct {v1}, Lcom/mega/engineeringmode/ui/LoginFragment;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    :cond_3
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    if-eq v2, v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hide:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iput-object v1, p0, Lcom/mega/engineeringmode/MainActivity;->i:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/mega/engineeringmode/ui/a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "can not input pwd now!"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/mega/engineeringmode/ui/a;

    new-instance v0, Ld1/b;

    invoke-direct {v0, p0}, Ld1/b;-><init>(Lcom/mega/engineeringmode/MainActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/mega/engineeringmode/ui/a;-><init>(Landroid/content/Context;Lcom/mega/engineeringmode/ui/a$c;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/a;->show()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/mega/engineeringmode/MainActivity;->n()V

    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string/jumbo v0, "onDestroy"

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo1/d;->b()Lo1/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ExcelReader"

    const-string/jumbo v2, "release"

    invoke-static {v0, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setLoginSuccess(false"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->d:Z

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string p0, "MainActivity"

    const-string/jumbo v0, "onPause"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    const-string p0, "MainActivity"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string p0, "MainActivity"

    const-string/jumbo v0, "onStop"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
