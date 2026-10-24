.class public final synthetic Landroidx/emoji2/text/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i;

.field public final synthetic b:Ly1/l;

.field public final synthetic c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/i;Ly1/l;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/l;->a:Landroidx/appcompat/view/menu/i;

    iput-object p2, p0, Landroidx/emoji2/text/l;->b:Ly1/l;

    iput-object p3, p0, Landroidx/emoji2/text/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/l;->a:Landroidx/appcompat/view/menu/i;

    iget-object v1, p0, Landroidx/emoji2/text/l;->b:Ly1/l;

    iget-object p0, p0, Landroidx/emoji2/text/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ly1/l;->O(Landroid/content/Context;)Landroidx/emoji2/text/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/h;

    check-cast v2, Landroidx/emoji2/text/v;

    iget-object v3, v2, Landroidx/emoji2/text/v;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p0, v2, Landroidx/emoji2/text/v;->f:Ljava/util/concurrent/Executor;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/h;

    new-instance v2, Landroidx/emoji2/text/m;

    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/m;-><init>(Ly1/l;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, Landroidx/emoji2/text/h;->f(Ly1/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ly1/l;->W0(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_0
    return-void
.end method
