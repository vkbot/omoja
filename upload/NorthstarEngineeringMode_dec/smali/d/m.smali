.class public final Ld/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ld/m;


# instance fields
.field public final a:Ld/l;

.field public final b:Ld/h;

.field public final c:Ld/o;

.field public final d:Ld/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Ld/m;->a:Ld/l;

    new-instance v0, Ld/h;

    invoke-direct {v0, p1, p0}, Ld/h;-><init>(Landroid/content/Context;Ld/m;)V

    iput-object v0, p0, Ld/m;->b:Ld/h;

    new-instance v1, Ld/e;

    invoke-direct {v1, p2, v0, p1}, Ld/e;-><init>(Ld/l;Ld/h;Landroid/content/Context;)V

    iput-object v1, p0, Ld/m;->d:Ld/e;

    new-instance v2, Ld/o;

    invoke-direct {v2, p1, p2, v0, v1}, Ld/o;-><init>(Landroid/content/Context;Ld/l;Ld/h;Ld/e;)V

    iput-object v2, p0, Ld/m;->c:Ld/o;

    invoke-virtual {v2}, Ld/o;->b()V

    invoke-virtual {v1}, Ld/e;->c()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/m;
    .locals 1

    const-class v0, Ld/m;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ld/m;->b(Landroid/content/Context;)Ld/m;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ld/m;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Ld/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/m;->e:Ld/m;

    if-nez v1, :cond_2

    const-class v1, Ld/l;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Ld/l;->f:Ld/l;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ld/l;

    invoke-direct {v3, v2}, Ld/l;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v3, Ld/l;->f:Ld/l;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Ld/l;->f:Ld/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_3
    new-instance v1, Ld/m;

    invoke-direct {v1, p0, v2}, Ld/m;-><init>(Landroid/content/Context;Ld/l;)V

    sput-object v1, Ld/m;->e:Ld/m;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    monitor-exit v1

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Ld/m;->e:Ld/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0

    throw p0
.end method
