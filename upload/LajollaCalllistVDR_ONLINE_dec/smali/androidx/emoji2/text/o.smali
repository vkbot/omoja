.class public final synthetic Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/emoji2/text/q;

.field public final synthetic c:Lcom/google/android/material/slider/h;

.field public final synthetic d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/q;Lcom/google/android/material/slider/h;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/q;

    iput-object p2, p0, Landroidx/emoji2/text/o;->c:Lcom/google/android/material/slider/h;

    iput-object p3, p0, Landroidx/emoji2/text/o;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/q;

    iget-object v1, p0, Landroidx/emoji2/text/o;->c:Lcom/google/android/material/slider/h;

    iget-object v2, p0, Landroidx/emoji2/text/o;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Landroidx/emoji2/text/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->O(Landroid/content/Context;)Landroidx/emoji2/text/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    check-cast v3, Landroidx/emoji2/text/a0;

    iget-object v4, v3, Landroidx/emoji2/text/a0;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v3, Landroidx/emoji2/text/a0;->f:Ljava/util/concurrent/Executor;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    new-instance v3, Landroidx/emoji2/text/p;

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/p;-><init>(Lcom/google/android/material/slider/h;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v3}, Landroidx/emoji2/text/k;->a(Lcom/google/android/material/slider/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/slider/h;->T0(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_0
    return-void
.end method
