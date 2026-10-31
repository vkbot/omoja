.class public Lorg/apache/commons/io/input/QueueInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/QueueInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/QueueInputStream;",
        "Lorg/apache/commons/io/input/QueueInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:Ljava/time/Duration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->h()Ljava/time/Duration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->timeout:Ljava/time/Duration;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/time/Duration;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->timeout:Ljava/time/Duration;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->get()Lorg/apache/commons/io/input/QueueInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/QueueInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/QueueInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;Lorg/apache/commons/io/input/QueueInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lorg/apache/commons/io/input/QueueInputStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/commons/io/input/QueueInputStream$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    goto :goto_8

    .line 4
    :cond_3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_8
    iput-object p1, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    return-object p0
.end method

.method public setTimeout(Ljava/time/Duration;)Lorg/apache/commons/io/input/QueueInputStream$Builder;
    .registers 6

    .line 1
    if-eqz p1, :cond_14

    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/io/d;->d(Ljava/time/Duration;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_d

    .line 12
    .line 13
    goto :goto_14

    .line 14
    :cond_d
    const-string p1, "timeout must not be negative"

    .line 15
    .line 16
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_14
    :goto_14
    if-eqz p1, :cond_17

    .line 22
    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->h()Ljava/time/Duration;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_1b
    iput-object p1, p0, Lorg/apache/commons/io/input/QueueInputStream$Builder;->timeout:Ljava/time/Duration;

    .line 29
    .line 30
    return-object p0
.end method
