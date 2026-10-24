.class public Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# instance fields
.field public a:Ls0/d;

.field public final b:Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;-><init>(Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->b:Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 9

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a02c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a02c7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    iget v2, v2, Ls0/d;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    iget-object v2, v2, Ls0/d;->d:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v8, 0x7f12007c

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    iget v2, v0, Ls0/d;->b:I

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Ls0/d;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x1020027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lq0/a;

    invoke-direct {v1, v3, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    invoke-virtual {p0}, Ls0/d;->a()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0074

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0a0132

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0d006e

    invoke-static {p0, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x1020019

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x102001a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x102001b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x1020007

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ls0/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ls0/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->f()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "BluetoothPairingDialog"

    const-string v1, "on new instant"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/d;

    invoke-direct {v0, p0, p1}, Ls0/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->a:Ls0/d;

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->f()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->b:Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog;->b:Lcom/mega/carsettings/bluetooth/BluetoothPairingDialog$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1702

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
