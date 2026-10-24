.class public final Ld/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s$a;
    }
.end annotation


# static fields
.field public static final d:[Landroid/os/ParcelUuid;


# instance fields
.field public a:Landroid/bluetooth/BluetoothPbapClient;

.field public b:Z

.field public final c:Ld/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Lp2/a;->l:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Ld/s;->d:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/s;->c:Ld/h;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance v0, Ld/s$a;

    invoke-direct {v0, p0}, Ld/s$a;-><init>(Ld/s;)V

    const/16 p0, 0x11

    invoke-virtual {p2, p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    iget-object p0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothPbapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    iget-object v0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_2

    iget-object p0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Ld/s;->b:Z

    return p0
.end method

.method public final finalize()V
    .locals 3

    const-string v0, "PbapClientProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/s;->a:Landroid/bluetooth/BluetoothPbapClient;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PbapClient"

    return-object p0
.end method
