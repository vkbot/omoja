.class public final Ld/e$g;
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
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$g;->a:Ld/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Ld/e$g;->a:Ld/e;

    iget-object v1, v0, Ld/e;->a:Ld/l;

    iput p1, v1, Ld/l;->d:I

    iget-object v0, v0, Ld/e;->b:Ld/h;

    invoke-virtual {v0, p3}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got bonding state changed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but we have no record of that device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/e$g;->a:Ld/e;

    iget-object v0, v0, Ld/e;->b:Ld/h;

    invoke-virtual {v0, p3}, Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object v0

    :cond_1
    iget-object p3, p0, Ld/e$g;->a:Ld/e;

    iget-object p3, p3, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/c;

    invoke-interface {v1, v0, p1}, Ld/c;->i(Ld/g;I)V

    goto :goto_0

    :cond_2
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    iget-object v1, v0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ld/f;->Z(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2}, Ld/f;->Y(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Ld/f;->b0(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ld/g;->d()V

    iget-object v1, v0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/g$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_5

    const-string v1, "CachedBluetoothDevice"

    const-class v2, Ld/m;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "isAutoConnectOnBonded=true"

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Ld/m;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Ld/f;->J(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ld/g;->b()Z

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_5
    :goto_3
    if-ne p1, p3, :cond_6

    iget-object p0, p0, Ld/e$g;->a:Ld/e;

    iget-object p0, p0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/c;

    invoke-interface {p1, v0, p2}, Ld/c;->c(Ld/g;I)V

    goto :goto_4

    :cond_6
    return-void
.end method
