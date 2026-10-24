.class public final Ld/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ld/a;


# direct methods
.method public constructor <init>(Ld/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a$a;->a:Ld/a;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iget-object p0, p0, Ld/a$a;->a:Ld/a;

    iput-object p2, p0, Ld/a;->a:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Ld/a;->c:Ld/h;

    invoke-virtual {v0, p2}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A2dpProfile found new device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/a;->c:Ld/h;

    invoke-virtual {v0, p2}, Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object v0

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {v0, p0, p2}, Ld/g;->j(Ld/n;I)V

    invoke-virtual {v0}, Ld/g;->d()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/a;->b:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Ld/a$a;->a:Ld/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/a;->b:Z

    return-void
.end method
