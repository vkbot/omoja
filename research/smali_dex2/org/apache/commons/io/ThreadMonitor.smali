.class final Lorg/apache/commons/io/ThreadMonitor;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final timeout:Ljava/time/Duration;


# direct methods
.method private constructor <init>(Ljava/lang/Thread;Ljava/time/Duration;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    .line 7
    .line 8
    return-void
.end method

.method public static start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;
    .registers 4

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/d;->x(Ljava/time/Duration;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_21

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/d;->B(Ljava/time/Duration;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_21

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v1, Lorg/apache/commons/io/ThreadMonitor;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lorg/apache/commons/io/ThreadMonitor;-><init>(Ljava/lang/Thread;Ljava/time/Duration;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "ThreadMonitor"

    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    :goto_21
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static start(Ljava/time/Duration;)Ljava/lang/Thread;
    .registers 2

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/ThreadMonitor;->start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static stop(Ljava/lang/Thread;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    .line 5
    .line 6
    :cond_5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_a

    .line 9
    .line 10
    .line 11
    :catch_a
    return-void
.end method
