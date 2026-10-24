.class public final Landroidx/emoji2/text/p;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:Lcom/google/android/material/slider/h;

.field public final synthetic y:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/h;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/p;->x:Lcom/google/android/material/slider/h;

    iput-object p2, p0, Landroidx/emoji2/text/p;->y:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final T0(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/p;->y:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/p;->x:Lcom/google/android/material/slider/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/slider/h;->T0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p1
.end method

.method public final X0(Landroidx/emoji2/text/e0;)V
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/p;->y:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/p;->x:Lcom/google/android/material/slider/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/slider/h;->X0(Landroidx/emoji2/text/e0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p1
.end method
