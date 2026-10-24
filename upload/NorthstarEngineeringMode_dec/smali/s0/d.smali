.class public final Ls0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothDevice;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Ls0/d;->a:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ls0/d;->b:I

    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p1, p1, Ld/m;->b:Ld/h;

    invoke-virtual {p1, v0}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ls0/d;->d:Ljava/lang/String;

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%04d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%06d"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ls0/d;->c:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find BluetoothDevice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not obtain LocalBluetoothManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothDevice PAIRING_VARIANT = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ls0/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Ls0/d;->a:Landroid/bluetooth/BluetoothDevice;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 p0, 0x7

    if-eq v1, p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Incorrect pairing type received"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls0/d;->c:Ljava/lang/String;

    invoke-static {p0}, Ld/f;->n(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    :cond_2
    :goto_0
    return-void
.end method
