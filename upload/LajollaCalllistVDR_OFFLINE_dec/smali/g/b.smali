.class public final Lg/b;
.super Lg/e;
.source "SourceFile"


# static fields
.field public static volatile b:Lg/b;

.field public static final c:Lg/a;


# instance fields
.field public final a:Lg/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a;

    invoke-direct {v0}, Lg/a;-><init>()V

    sput-object v0, Lg/b;->c:Lg/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/e;-><init>()V

    new-instance v0, Lg/d;

    invoke-direct {v0}, Lg/d;-><init>()V

    iput-object v0, p0, Lg/b;->a:Lg/d;

    return-void
.end method

.method public static a()Lg/b;
    .locals 2

    sget-object v0, Lg/b;->b:Lg/b;

    if-eqz v0, :cond_0

    sget-object v0, Lg/b;->b:Lg/b;

    return-object v0

    :cond_0
    const-class v0, Lg/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/b;->b:Lg/b;

    if-nez v1, :cond_1

    new-instance v1, Lg/b;

    invoke-direct {v1}, Lg/b;-><init>()V

    sput-object v1, Lg/b;->b:Lg/b;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lg/b;->b:Lg/b;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object p0, p0, Lg/b;->a:Lg/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lg/b;->a:Lg/d;

    iget-object v0, p0, Lg/d;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/d;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lg/d;->c:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lg/d;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
