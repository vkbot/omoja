.class public Lcom/mega/update/usb/UsbDialog;
.super Landroid/app/Activity;
.source "UsbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDialog"


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mConfirm:Landroid/widget/Button;

.field private mExitOnConfirm:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mState:I

.field private mTitle:Landroid/widget/TextView;

.field private mUsbCallback:Lcom/mega/update/usb/IUsbCallback$Stub;

.field private mUsbService:Lcom/mega/update/usb/IUsbService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/update/usb/UsbDialog;->mExitOnConfirm:Z

    .line 33
    iput v0, p0, Lcom/mega/update/usb/UsbDialog;->mState:I

    .line 35
    new-instance v0, Lcom/mega/update/usb/UsbDialog$1;

    invoke-direct {v0, p0}, Lcom/mega/update/usb/UsbDialog$1;-><init>(Lcom/mega/update/usb/UsbDialog;)V

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbCallback:Lcom/mega/update/usb/IUsbCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/usb/UsbDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbDialog;

    .line 24
    iget v0, p0, Lcom/mega/update/usb/UsbDialog;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/mega/update/usb/UsbDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbDialog;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/mega/update/usb/UsbDialog;->mState:I

    return p1
.end method

.method static synthetic access$102(Lcom/mega/update/usb/UsbDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbDialog;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/mega/update/usb/UsbDialog;->mExitOnConfirm:Z

    return p1
.end method


# virtual methods
.method public synthetic lambda$updateDialog$0$UsbDialog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "confirmText"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/mega/update/usb/UsbDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget-object v2, p0, Lcom/mega/update/usb/UsbDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/mega/update/usb/UsbDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 126
    iget-object v2, p0, Lcom/mega/update/usb/UsbDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    :goto_0
    if-nez p3, :cond_1

    .line 129
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mConfirm:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 140
    iget-boolean v0, p0, Lcom/mega/update/usb/UsbDialog;->mExitOnConfirm:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->finish()V

    goto :goto_1

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    invoke-interface {v0}, Lcom/mega/update/usb/IUsbService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    invoke-interface {v0}, Lcom/mega/update/usb/IUsbService;->triggerUpgrade()V

    .line 146
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->finish()V

    .line 156
    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "UsbDialog"

    const-string v1, "onCreate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->requestWindowFeature(I)Z

    .line 82
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->setFinishOnTouchOutside(Z)V

    .line 86
    const v0, 0x7f020004

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f020003

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mConfirm:Landroid/widget/Button;

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f020002

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mCancel:Landroid/widget/Button;

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    const-string v0, "UsbDialog"

    const-string v1, "onDestroy enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    invoke-interface {v0}, Lcom/mega/update/usb/IUsbService;->unsubcribe()V

    .line 180
    invoke-virtual {p0, p0}, Lcom/mega/update/usb/UsbDialog;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/mega/update/usb/UsbDialog;->setIntent(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 161
    :try_start_0
    invoke-static {p2}, Lcom/mega/update/usb/IUsbService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/usb/IUsbService;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    .line 162
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog;->mUsbCallback:Lcom/mega/update/usb/IUsbCallback$Stub;

    invoke-interface {v0, v1}, Lcom/mega/update/usb/IUsbService;->subcribe(Lcom/mega/update/usb/IUsbCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/usb/UsbDialog;->mUsbService:Lcom/mega/update/usb/IUsbService;

    .line 171
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 110
    const-string v0, "UsbDialog"

    const-string v1, "onStart enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/mega/update/usb/UsbService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    const/16 v1, 0x20

    invoke-virtual {p0, v0, p0, v1}, Lcom/mega/update/usb/UsbDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 115
    return-void
.end method

.method public updateDialog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "confirmText"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/mega/update/usb/-$$Lambda$UsbDialog$xIaRi6ul3XwufbLqMV_gHnKYdhI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mega/update/usb/-$$Lambda$UsbDialog$xIaRi6ul3XwufbLqMV_gHnKYdhI;-><init>(Lcom/mega/update/usb/UsbDialog;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
