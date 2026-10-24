.class public final Landroidx/emoji2/text/m;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:Ly1/l;

.field public final synthetic v:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ly1/l;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/m;->u:Ly1/l;

    iput-object p2, p0, Landroidx/emoji2/text/m;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final W0(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/m;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Landroidx/emoji2/text/m;->u:Ly1/l;

    invoke-virtual {p0, p1}, Ly1/l;->W0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method

.method public final a1(Landroidx/emoji2/text/z;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/m;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Landroidx/emoji2/text/m;->u:Ly1/l;

    invoke-virtual {p0, p1}, Ly1/l;->a1(Landroidx/emoji2/text/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method
