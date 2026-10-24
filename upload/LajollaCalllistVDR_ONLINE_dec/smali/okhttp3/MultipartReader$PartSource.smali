.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/MultipartReader$PartSource;",
        "Lx2/d0;",
        "Ln2/b;",
        "close",
        "Lx2/k;",
        "sink",
        "",
        "byteCount",
        "read",
        "Lx2/g0;",
        "timeout",
        "Lx2/g0;",
        "<init>",
        "(Lokhttp3/MultipartReader;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Lx2/g0;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lx2/g0;

    invoke-direct {p1}, Lx2/g0;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lx2/g0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/slider/h;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public read(Lx2/k;J)J
    .locals 12
    .param p1    # Lx2/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_e

    iget-object v2, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v2}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/material/slider/h;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v2}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lx2/m;

    move-result-object v2

    invoke-interface {v2}, Lx2/d0;->timeout()Lx2/g0;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lx2/g0;

    invoke-virtual {v2}, Lx2/g0;->timeoutNanos()J

    move-result-wide v4

    sget-object v6, Lx2/g0;->Companion:Lx2/f0;

    invoke-virtual {v3}, Lx2/g0;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v2}, Lx2/g0;->timeoutNanos()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v6, v7, v0

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v0, v9, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-wide v7, v9

    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v0}, Lx2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lx2/g0;

    invoke-virtual {v2}, Lx2/g0;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v3}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lx2/g0;->deadlineNanoTime(J)Lx2/g0;

    :cond_4
    :try_start_0
    iget-object v1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v1, p2, p3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide p2

    const-wide/16 v8, 0x0

    cmp-long v1, p2, v8

    if-nez v1, :cond_5

    const-wide/16 p1, -0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v1}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lx2/m;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {v2, v4, v5, v0}, Lx2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lx2/g0;

    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v2, v6, v7}, Lx2/g0;->deadlineNanoTime(J)Lx2/g0;

    :cond_6
    return-wide p1

    :catchall_0
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, p2}, Lx2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lx2/g0;

    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v2, v6, v7}, Lx2/g0;->deadlineNanoTime(J)Lx2/g0;

    :cond_7
    throw p1

    :cond_8
    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lx2/g0;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lx2/g0;->deadlineNanoTime(J)Lx2/g0;

    :cond_9
    :try_start_1
    iget-object v1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v1, p2, p3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide p2

    const-wide/16 v6, 0x0

    cmp-long v1, p2, v6

    if-nez v1, :cond_a

    const-wide/16 p1, -0x1

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v1}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lx2/m;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    invoke-virtual {v2, v4, v5, v0}, Lx2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lx2/g0;

    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {v2}, Lx2/g0;->clearDeadline()Lx2/g0;

    :cond_b
    return-wide p1

    :catchall_1
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, p2}, Lx2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lx2/g0;

    invoke-virtual {v3}, Lx2/g0;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v2}, Lx2/g0;->clearDeadline()Lx2/g0;

    :cond_c
    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeout()Lx2/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lx2/g0;

    return-object v0
.end method
