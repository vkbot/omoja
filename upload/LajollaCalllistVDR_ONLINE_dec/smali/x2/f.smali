.class public Lx2/f;
.super Lx2/g0;
.source "SourceFile"


# static fields
.field public static final Companion:Lx2/b;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lx2/f;


# instance fields
.field private inQueue:Z

.field private next:Lx2/f;

.field private timeoutAt:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lx2/b;

    invoke-direct {v0}, Lx2/b;-><init>()V

    sput-object v0, Lx2/f;->Companion:Lx2/b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lx2/f;->IDLE_TIMEOUT_MILLIS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lx2/f;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public static final synthetic access$getHead$cp()Lx2/f;
    .locals 1

    sget-object v0, Lx2/f;->head:Lx2/f;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    sget-wide v0, Lx2/f;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    sget-wide v0, Lx2/f;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getNext$p(Lx2/f;)Lx2/f;
    .locals 0

    iget-object p0, p0, Lx2/f;->next:Lx2/f;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutAt$p(Lx2/f;)J
    .locals 2

    iget-wide v0, p0, Lx2/f;->timeoutAt:J

    return-wide v0
.end method

.method public static final access$remainingNanos(Lx2/f;J)J
    .locals 2

    iget-wide v0, p0, Lx2/f;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(Lx2/f;)V
    .locals 0

    sput-object p0, Lx2/f;->head:Lx2/f;

    return-void
.end method

.method public static final synthetic access$setNext$p(Lx2/f;Lx2/f;)V
    .locals 0

    iput-object p1, p0, Lx2/f;->next:Lx2/f;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lx2/f;J)V
    .locals 0

    iput-wide p1, p0, Lx2/f;->timeoutAt:J

    return-void
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lx2/f;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final enter()V
    .locals 9

    iget-boolean v0, p0, Lx2/f;->inQueue:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lx2/g0;->timeoutNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Lx2/g0;->hasDeadline()Z

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lx2/f;->inQueue:Z

    sget-object v1, Lx2/f;->Companion:Lx2/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lx2/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lx2/f;->access$getHead$cp()Lx2/f;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Lx2/f;

    invoke-direct {v5}, Lx2/f;-><init>()V

    invoke-static {v5}, Lx2/f;->access$setHead$cp(Lx2/f;)V

    new-instance v5, Lx2/c;

    invoke-direct {v5}, Lx2/c;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-static {p0, v2, v3}, Lx2/f;->access$setTimeoutAt$p(Lx2/f;J)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    add-long/2addr v2, v5

    invoke-static {p0, v2, v3}, Lx2/f;->access$setTimeoutAt$p(Lx2/f;J)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lx2/f;->access$setTimeoutAt$p(Lx2/f;J)V

    :goto_0
    invoke-static {p0, v5, v6}, Lx2/f;->access$remainingNanos(Lx2/f;J)J

    move-result-wide v2

    invoke-static {}, Lx2/f;->access$getHead$cp()Lx2/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    :goto_1
    invoke-static {v0}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    invoke-static {v4, v5, v6}, Lx2/f;->access$remainingNanos(Lx2/f;J)J

    move-result-wide v7

    cmp-long v4, v2, v7

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static {v0}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v2

    invoke-static {p0, v2}, Lx2/f;->access$setNext$p(Lx2/f;Lx2/f;)V

    invoke-static {v0, p0}, Lx2/f;->access$setNext$p(Lx2/f;Lx2/f;)V

    invoke-static {}, Lx2/f;->access$getHead$cp()Lx2/f;

    move-result-object v2

    if-ne v0, v2, :cond_6

    const-class v0, Lx2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v1

    return-void

    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    const-string v0, "Unbalanced enter/exit"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final exit()Z
    .locals 4

    iget-boolean v0, p0, Lx2/f;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lx2/f;->inQueue:Z

    sget-object v0, Lx2/f;->Companion:Lx2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lx2/f;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lx2/f;->access$getHead$cp()Lx2/f;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-static {p0}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v3

    invoke-static {v2, v3}, Lx2/f;->access$setNext$p(Lx2/f;Lx2/f;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lx2/f;->access$setNext$p(Lx2/f;Lx2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v2}, Lx2/f;->access$getNext$p(Lx2/f;)Lx2/f;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v1, 0x1

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lx2/b0;)Lx2/b0;
    .locals 1
    .param p1    # Lx2/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx2/d;

    invoke-direct {v0, p0, p1}, Lx2/d;-><init>(Lx2/f;Lx2/b0;)V

    return-object v0
.end method

.method public final source(Lx2/d0;)Lx2/d0;
    .locals 1
    .param p1    # Lx2/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx2/e;

    invoke-direct {v0, p0, p1}, Lx2/e;-><init>(Lx2/f;Lx2/d0;)V

    return-object v0
.end method

.method public timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(Ls2/a;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ls2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx2/f;->enter()V

    :try_start_0
    invoke-interface {p1}, Ls2/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lx2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lx2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lx2/f;->exit()Z

    move-result v0

    throw p1
.end method
