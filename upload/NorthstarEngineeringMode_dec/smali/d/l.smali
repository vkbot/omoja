.class public final Ld/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Ld/l;


# instance fields
.field public final a:Landroid/bluetooth/BluetoothAdapter;

.field public b:Ld/o;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Ld/l;->c:I

    const/16 v0, 0xa

    iput v0, p0, Ld/l;->d:I

    iput-object p1, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Ld/f;->w(Landroid/bluetooth/BluetoothAdapter;)I

    move-result v0

    const-string v1, "connState="

    const-string v2, ", bondState="

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/l;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalBluetoothAdapter"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget p0, p0, Ld/l;->d:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isInterruptScanning = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/l;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothAdapter"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Ld/l;->e:Z

    return p0
.end method

.method public final c(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld/l;->c:I

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput p1, p0, Ld/l;->c:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xc

    const/16 v1, 0xa

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ld/l;->b:Ld/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ld/o;->b()V

    iget-object p1, p1, Ld/o;->c:Ld/e;

    invoke-virtual {p1}, Ld/e;->c()V

    :cond_1
    iput v1, p0, Ld/l;->d:I

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iput v1, p0, Ld/l;->d:I

    :cond_3
    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 2

    const-string/jumbo v0, "startScanning = true"

    const-string v1, "LocalBluetoothAdapter"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/l;->e:Z

    iget-object p0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_0
    return-void
.end method
