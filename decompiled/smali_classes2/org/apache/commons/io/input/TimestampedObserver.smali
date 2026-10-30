.class public Lorg/apache/commons/io/input/TimestampedObserver;
.super Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private volatile closeInstant:Ljava/time/Instant;

.field private final openInstant:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public closed()V
    .locals 1

    .line 1
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    .line 6
    .line 7
    return-void
.end method

.method public getCloseInstant()Ljava/time/Instant;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenInstant()Ljava/time/Instant;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenToCloseDuration()Ljava/time/Duration;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/f;->l(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getOpenToNowDuration()Ljava/time/Duration;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    .line 2
    .line 3
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lc5/h;->j(Ljava/time/temporal/Temporal;Ljava/time/Instant;)Ljava/time/Duration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimestampedObserver [openInstant="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", closeInstant="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
