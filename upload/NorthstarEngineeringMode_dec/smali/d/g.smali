.class public final Ld/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ld/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final Z:Landroid/bluetooth/BluetoothDevice;

.field public b1:S

.field public final c:Landroid/content/Context;

.field public final c1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e1:Z

.field public f1:Z

.field public final g1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public h1:J

.field public i1:Z

.field public j1:Z

.field public k1:Z

.field public l1:Ljava/lang/String;

.field public final r:Landroid/bluetooth/BluetoothAdapter;

.field public final x:Ld/o;

.field public final y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/o;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/g;->d1:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/g;->i1:Z

    iput-boolean v0, p0, Ld/g;->j1:Z

    iput-boolean v0, p0, Ld/g;->k1:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ld/g;->l1:Ljava/lang/String;

    iput-object p1, p0, Ld/g;->c:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Ld/g;->x:Ld/o;

    iput-object p3, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x1

    iput-boolean p2, p0, Ld/g;->f1:Z

    invoke-virtual {p0}, Ld/g;->m()V

    invoke-virtual {p0}, Ld/g;->e()V

    const-string p0, "bluetooth_phonebook_permission"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Ld/f;->E(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-static {p3, p2}, Ld/f;->Z(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-static {p3, v2}, Ld/f;->Z(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    const-string p0, "bluetooth_message_permission"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p3}, Ld/f;->C(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_4

    invoke-static {p3, p2}, Ld/f;->Y(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    :cond_4
    if-ne p1, v2, :cond_5

    invoke-static {p3, v2}, Ld/f;->Y(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_5
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Ld/g;)I
    .locals 6

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result v0

    invoke-virtual {p0}, Ld/g;->i()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v3

    :cond_2
    sub-int v2, v0, v1

    if-eqz v2, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-wide v0, p1, Ld/g;->h1:J

    iget-wide v4, p0, Ld/g;->h1:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    cmp-long p0, v0, v4

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_5
    iget-boolean v0, p1, Ld/g;->f1:Z

    iget-boolean v1, p0, Ld/g;->f1:Z

    sub-int/2addr v0, v1

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget-short v0, p1, Ld/g;->b1:S

    iget-short v1, p0, Ld/g;->b1:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Ld/g;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/g;->h1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/g;->k1:Z

    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectAllEnabledProfiles: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p0}, Ld/f;->m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 4

    const-string v0, "disconnectAllEnabledProfiles"

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/g;->k1:Z

    iget-object v1, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v2}, Ld/f;->r(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld/g;->x:Ld/o;

    iget-object v0, v0, Ld/o;->m:Ld/t;

    if-eqz v0, :cond_1

    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ld/t;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    iget-object p0, v0, Ld/t;->a:Landroid/bluetooth/BluetoothPbap;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld/g;

    invoke-virtual {p0, p1}, Ld/g;->a(Ld/g;)I

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Ld/g;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object v0

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/g;

    move-result-object v1

    invoke-virtual {p0}, Ld/g;->h()Z

    move-result v2

    invoke-virtual {p0, v1}, Ld/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/h;->e(Ld/g;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/g$a;

    invoke-interface {v1, p0}, Ld/g$a;->a(Ld/g;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Ld/g;->x:Ld/o;

    iget-object v1, v0, Ld/o;->d:Ld/a;

    const/4 v2, 0x0

    iget-object v3, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ld/a;->a:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lb1/a;->f(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Ld/g;->i1:Z

    :cond_1
    iget-object v0, v0, Ld/o;->f:Ld/i;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ld/i;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lb1/a;->g(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ld/g;->j1:Z

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ld/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ld/g;

    iget-object p1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f120066

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/n;

    if-eqz v5, :cond_1

    iget-object v7, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v5, v7}, Ld/n;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/4 v8, 0x1

    if-eqz v7, :cond_8

    const/4 v5, 0x3

    const/4 v9, 0x2

    if-eq v7, v8, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v5, :cond_3

    goto :goto_0

    :cond_2
    move v2, v8

    goto :goto_0

    :cond_3
    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    if-eqz v7, :cond_7

    if-eq v7, v8, :cond_6

    if-eq v7, v9, :cond_5

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x7f120075

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    const v1, 0x7f12006a

    goto :goto_2

    :cond_7
    const v1, 0x7f120074

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {v5}, Ld/n;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v5, Ld/a;

    if-nez v6, :cond_b

    instance-of v6, v5, Ld/b;

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    instance-of v6, v5, Ld/i;

    if-nez v6, :cond_a

    instance-of v5, v5, Ld/j;

    if-eqz v5, :cond_0

    :cond_a
    move v4, v8

    goto :goto_0

    :cond_b
    :goto_3
    move v3, v8

    goto :goto_0

    :cond_c
    if-eqz v2, :cond_10

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    const v0, 0x7f120069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    if-eqz v3, :cond_e

    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    const v0, 0x7f120067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    if-eqz v4, :cond_f

    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    const v0, 0x7f120068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    iget-object p0, p0, Ld/g;->c:Landroid/content/Context;

    const v0, 0x7f12007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_11
    const/4 p0, 0x0

    :goto_4
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ld/g;->l1:Ljava/lang/String;

    iget-object v1, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/g;->l1:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ld/g;->l1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ld/g;->l1:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final h()Z
    .locals 6

    iget-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/n;

    if-eqz v2, :cond_1

    iget-object v3, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Ld/n;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    :cond_1
    if-eq v3, v4, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    :cond_2
    const-string v1, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isBusy: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isBusy: bondState="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v4

    :cond_4
    monitor-exit v0

    return v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 4

    iget-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/n;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Ld/n;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Ld/n;I)V
    .locals 6

    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ld/n;->c()I

    iget-object v0, p0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/g$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_3

    :try_start_0
    instance-of p2, p1, Ld/q;

    if-eqz p2, :cond_2

    iget-object p2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v2}, Ld/n;->d(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object p2, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Ld/g;->d1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of p2, p1, Ld/r;

    if-eqz p2, :cond_5

    check-cast p1, Ld/r;

    iget-object p2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Ld/r;->c:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_5

    iput-boolean v2, p0, Ld/g;->e1:Z

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ld/q;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    iget-object p2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v3}, Ld/n;->d(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Ld/g;->e1:Z

    if-eqz v1, :cond_5

    instance-of v1, p1, Ld/r;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Ld/r;

    iget-object v4, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Ld/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    if-nez p2, :cond_5

    iget-object p2, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/g;->d1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Ld/g;->e1:Z

    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ld/g;->e()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k(Ld/g$a;)V
    .locals 1

    iget-object p0, p0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final l(Ld/g$a;)Z
    .locals 0

    iget-object p0, p0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final m()V
    .locals 8

    iget-object v0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Ld/f;->G(Landroid/bluetooth/BluetoothAdapter;)[Landroid/os/ParcelUuid;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    sget-object v4, Ld/t;->c:[Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Lp2/a;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Ld/f;->E(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ld/f;->Z(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld/g;->x:Ld/o;

    iget-object v4, p0, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Ld/g;->d1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-boolean v6, p0, Ld/g;->e1:Z

    iget-object v7, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v1 .. v7}, Ld/o;->c([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updating profiles for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld/g;->l1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
