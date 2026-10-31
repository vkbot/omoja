.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->lastWasCR:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    const/16 v1, 0xd

    .line 5
    .line 6
    if-eq p1, v0, :cond_16

    .line 7
    .line 8
    if-eq p1, v1, :cond_a

    .line 9
    .line 10
    goto :goto_1f

    .line 11
    :cond_a
    const/4 p1, 0x1

    .line 12
    :try_start_b
    iput-boolean p1, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->lastWasCR:Z

    .line 13
    .line 14
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_29

    .line 23
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->lastWasCR:Z

    .line 24
    .line 25
    if-nez v0, :cond_1f

    .line 26
    .line 27
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->lastWasCR:Z

    .line 34
    .line 35
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_14

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_14

    .line 43
    throw p1
.end method

.method public declared-synchronized write([B)V
    .registers 4

    monitor-enter p0

    .line 46
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 47
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 5

    monitor-enter p0

    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_12

    add-int/lit8 p3, p2, 0x1

    .line 44
    :try_start_7
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V

    move p2, p3

    move p3, v0

    goto :goto_1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1

    .line 45
    :cond_12
    monitor-exit p0

    return-void
.end method
