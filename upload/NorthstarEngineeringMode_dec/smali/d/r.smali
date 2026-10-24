.class public final Ld/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/r$a;
    }
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothPan;

.field public b:Z

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/r;->c:Ljava/util/HashMap;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Ld/r$a;

    invoke-direct {v1, p0}, Ld/r$a;-><init>(Ld/r;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p1, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    iget-object p0, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothPan;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x5

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

    iget-boolean p0, p0, Ld/r;->b:Z

    return p0
.end method

.method public final finalize()V
    .locals 3

    const-string v0, "PanProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PAN"

    return-object p0
.end method
