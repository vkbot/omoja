.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final LAST_WAS_CR_STATE:I = 0x1

.field private static final LAST_WAS_NL_STATE:I = 0x2

.field private static final NOTHING_SPECIAL_STATE:I


# instance fields
.field private output:Ljava/io/Writer;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 5
    .line 6
    if-nez v1, :cond_b

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v1

    .line 11
    goto :goto_2f

    .line 12
    :cond_b
    iget v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v2, v3, :cond_16

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    const/4 v3, 0x2

    .line 24
    if-eq v2, v3, :cond_1e

    .line 25
    .line 26
    const-string v2, "\r\n"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 32
    .line 33
    const-string v2, ".\r\n"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_9

    .line 49
    throw v1
.end method

.method public flush()V
    .registers 3

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw v1
.end method

.method public write(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0xd

    .line 7
    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    if-eq p1, v4, :cond_31

    .line 11
    .line 12
    if-eq p1, v3, :cond_28

    .line 13
    .line 14
    const/16 v1, 0x2e

    .line 15
    .line 16
    if-eq p1, v1, :cond_12

    .line 17
    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    :try_start_12
    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 20
    .line 21
    if-ne v3, v2, :cond_1e

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_43

    .line 31
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 33
    .line 34
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_28
    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 42
    .line 43
    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_31
    iget p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 51
    .line 52
    if-eq p1, v1, :cond_3a

    .line 53
    .line 54
    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 62
    .line 63
    .line 64
    iput v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_12 .. :try_end_44} :catchall_1c

    .line 69
    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([C)V
    .registers 4

    const/4 v0, 0x0

    .line 73
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .registers 6

    .line 70
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_13

    add-int/lit8 p3, p2, 0x1

    .line 71
    :try_start_9
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_3

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 72
    :cond_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_11

    throw p1
.end method
