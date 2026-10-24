.class public final Ld/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/q$a;
    }
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothMap;

.field public b:Z

.field public final c:Ld/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lp2/a;->a:Landroid/os/ParcelUuid;

    sget-object v0, Lp2/a;->a:Landroid/os/ParcelUuid;

    sget-object v0, Lp2/a;->a:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/q;->c:Ld/h;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance v0, Ld/q$a;

    invoke-direct {v0, p0}, Ld/q$a;-><init>(Ld/q;)V

    const/16 p0, 0x9

    invoke-virtual {p2, p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    iget-object p0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    iget-object v0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_2

    iget-object p0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isProfileReady(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/q;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Ld/q;->b:Z

    return p0
.end method

.method public final finalize()V
    .locals 3

    const-string v0, "MapProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/q;->a:Landroid/bluetooth/BluetoothMap;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MAP"

    return-object p0
.end method
