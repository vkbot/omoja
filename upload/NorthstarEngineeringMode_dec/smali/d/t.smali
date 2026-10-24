.class public final Ld/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t$a;
    }
.end annotation


# static fields
.field public static final c:[Landroid/os/ParcelUuid;


# instance fields
.field public a:Landroid/bluetooth/BluetoothPbap;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Lp2/a;->d:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lp2/a;->f:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lp2/a;->k:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Ld/t;->c:[Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    iget-object p0, p0, Ld/t;->a:Landroid/bluetooth/BluetoothPbap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothPbap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object p0, p0, Ld/t;->a:Landroid/bluetooth/BluetoothPbap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Ld/t;->b:Z

    return p0
.end method

.method public final finalize()V
    .locals 2

    const-string v0, "PbapServerProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/t;->a:Landroid/bluetooth/BluetoothPbap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/t;->a:Landroid/bluetooth/BluetoothPbap;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PBAP Server"

    return-object p0
.end method
