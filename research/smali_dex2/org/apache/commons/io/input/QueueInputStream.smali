.class public Lorg/apache/commons/io/input/QueueInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/QueueInputStream$Builder;
    }
.end annotation


# instance fields
.field private final blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutNanos:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {}, Lorg/apache/commons/io/input/QueueInputStream;->builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    # getter for: Lorg/apache/commons/io/input/QueueInputStream$Builder;->blockingQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->access$100(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/util/concurrent/BlockingQueue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "blockingQueue"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 14
    .line 15
    # getter for: Lorg/apache/commons/io/input/QueueInputStream$Builder;->timeout:Ljava/time/Duration;
    invoke-static {p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->access$200(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/time/Duration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "timeout"

    .line 20
    .line 21
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/f;->j(Ljava/lang/Object;)Ljava/time/Duration;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lorg/apache/commons/io/d;->d(Ljava/time/Duration;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    .line 33
    .line 34
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;Lorg/apache/commons/io/input/QueueInputStream$1;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/QueueInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/QueueInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getBlockingQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeout()Ljava/time/Duration;
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/apache/commons/io/d;->n(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public newQueueOutputStream()Lorg/apache/commons/io/output/QueueOutputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/QueueOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public read()I
    .registers 5

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/4 v0, -0x1

    return v0

    .line 87
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_17

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_17
    move-exception v0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([BII)I
    .registers 9

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_7

    .line 6
    .line 7
    return v0

    .line 8
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 24
    .line 25
    invoke-interface {v2, v1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_37

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/io/input/QueueInputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    if-ne v2, v3, :cond_29

    .line 40
    .line 41
    return v3

    .line 42
    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    .line 51
    add-int/lit8 p3, p3, -0x1

    .line 52
    .line 53
    invoke-interface {v2, v1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 54
    .line 55
    .line 56
    :cond_37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    move v2, v0

    .line 61
    :goto_3c
    if-ge v2, p3, :cond_54

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    check-cast v3, Ljava/lang/Integer;

    .line 70
    .line 71
    add-int v4, p2, v0

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    and-int/lit16 v3, v3, 0xff

    .line 78
    .line 79
    int-to-byte v3, v3

    .line 80
    aput-byte v3, p1, v4

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_3c

    .line 85
    :cond_54
    return v0
.end method
