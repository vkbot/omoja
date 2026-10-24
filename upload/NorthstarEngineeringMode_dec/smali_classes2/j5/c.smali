.class public final Lj5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj5/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lj5/f;->a:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, v0, Lj5/f;->b:I

    sput-object v0, Lj5/c;->a:Lj5/f;

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lj5/c;->a:Lj5/f;

    monitor-enter v0

    :goto_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lj5/f;->a:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lj5/f;->a:Ljava/lang/Thread;

    iput v2, v0, Lj5/f;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_1

    iget v1, v0, Lj5/f;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lj5/f;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit v0

    return-void

    :cond_1
    :try_start_5
    monitor-exit v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lj5/c;->a:Lj5/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lj5/f;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget v1, v0, Lj5/f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lj5/f;->b:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lj5/f;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Thread calling release() doesn\'t own mutex"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method
