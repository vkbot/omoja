.class Lorg/apache/mina/handler/stream/IoSessionInputStream;
.super Ljava/io/InputStream;
.source "IoSessionInputStream.java"


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private volatile closed:Z

.field private exception:Ljava/io/IOException;

.field private final mutex:Ljava/lang/Object;

.field private volatile released:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 49
    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    .line 145
    return-void
.end method

.method private waitForData()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 116
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while waiting for more data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    nop

    .end local p0    # "this":Lorg/apache/mina/handler/stream/IoSessionInputStream;
    throw v2

    .line 123
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/apache/mina/handler/stream/IoSessionInputStream;
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 130
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 133
    return v1

    .line 136
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 127
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 123
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 53
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    .line 70
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 72
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    monitor-exit v0

    return v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 97
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .local v1, "readBytes":I
    goto :goto_0

    .line 99
    .end local v1    # "readBytes":I
    :cond_1
    move v1, p3

    .line 102
    .restart local v1    # "readBytes":I
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    monitor-exit v0

    return v1

    .line 105
    .end local v1    # "readBytes":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public throwException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 167
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 169
    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    .line 171
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 173
    :cond_0
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2
    .param p1, "src"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 148
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 150
    monitor-exit v0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 156
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 159
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 160
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 161
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 163
    :goto_0
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
