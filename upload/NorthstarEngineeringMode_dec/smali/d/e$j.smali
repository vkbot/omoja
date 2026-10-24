.class public final Ld/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$j;->a:Ld/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string p1, "android.bluetooth.device.extra.RSSI"

    const/16 v0, -0x8000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p1

    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Ld/e$j;->a:Ld/e;

    iget-object p2, p0, Ld/e;->b:Ld/h;

    invoke-virtual {p2, p3}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p0, p0, Ld/e;->b:Ld/h;

    invoke-virtual {p0, p3}, Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p0

    iget-short p2, p0, Ld/g;->b1:S

    if-eq p2, p1, :cond_3

    iput-short p1, p0, Ld/g;->b1:S

    invoke-virtual {p0}, Ld/g;->d()V

    goto :goto_1

    :cond_0
    iget-short p3, p2, Ld/g;->b1:S

    if-eq p3, p1, :cond_1

    iput-short p1, p2, Ld/g;->b1:S

    invoke-virtual {p2}, Ld/g;->d()V

    :cond_1
    iget-boolean p1, p2, Ld/g;->f1:Z

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    iput-boolean p3, p2, Ld/g;->f1:Z

    invoke-virtual {p2}, Ld/g;->d()V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "DeviceFoundHandler found existing CachedBluetoothDevice:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluetoothEventManager"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/c;

    invoke-interface {p1, p2}, Ld/c;->b(Ld/g;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
