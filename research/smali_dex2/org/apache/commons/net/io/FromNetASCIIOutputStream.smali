.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
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
    return-void
.end method

.method private writeInt(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-eq p1, v1, :cond_1e

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    if-eq p1, v1, :cond_1a

    .line 9
    .line 10
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 11
    .line 12
    if-eqz v2, :cond_14

    .line 13
    .line 14
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 20
    .line 21
    :cond_14
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    iget-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 32
    .line 33
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 34
    .line 35
    if-eqz p1, :cond_2c

    .line 36
    .line 37
    sget-object p1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->LINE_SEPARATOR_BYTES:[B

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    goto :goto_1c

    .line 13
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 14
    .line 15
    if-eqz v0, :cond_17

    .line 16
    .line 17
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 18
    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    :cond_17
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_a

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_a

    .line 30
    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    .line 35
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 37
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    goto :goto_13

    .line 38
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_c

    .line 39
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_c

    throw p1
.end method

.method public declared-synchronized write([B)V
    .registers 4

    monitor-enter p0

    .line 33
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 34
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    .line 3
    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    :goto_e
    add-int/lit8 v0, p3, -0x1

    .line 16
    .line 17
    if-lez p3, :cond_1c

    .line 18
    .line 19
    add-int/lit8 p3, p2, 0x1

    .line 20
    .line 21
    :try_start_14
    aget-byte p2, p1, p2

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_c

    .line 24
    .line 25
    .line 26
    move p2, p3

    .line 27
    move p3, v0

    .line 28
    goto :goto_e

    .line 29
    :cond_1c
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_c

    .line 32
    throw p1
.end method
