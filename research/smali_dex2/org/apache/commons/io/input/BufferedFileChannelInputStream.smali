.class public final Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    }
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-static {p1}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 52
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->builder()Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    # getter for: Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->fileChannel:Ljava/nio/channels/FileChannel;
    invoke-static {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->access$100(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    # getter for: Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->fileChannel:Ljava/nio/channels/FileChannel;
    invoke-static {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->access$100(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_20

    .line 15
    :cond_e
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getPath()Ljava/nio/file/Path;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->g()Ljava/nio/file/StandardOpenOption;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    invoke-static {v0, v1}, Lorg/apache/commons/io/file/f;->d(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_20
    iput-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;Lorg/apache/commons/io/input/BufferedFileChannelInputStream$1;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private clean(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->cleanDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method private cleanDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/input/ByteBufferCleaner;->clean(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method private refill()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/input/Input;->checkOpen(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_2d

    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    move v2, v0

    .line 26
    :goto_19
    if-nez v2, :cond_24

    .line 27
    .line 28
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 29
    .line 30
    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_19

    .line 37
    :cond_24
    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    if-ltz v2, :cond_2c

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2c
    return v0

    .line 46
    :cond_2d
    return v1
.end method

.method private skipFromFileChannel(J)J
    .registers 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long v4, v2, v0

    .line 14
    .line 15
    cmp-long v6, p1, v4

    .line 16
    .line 17
    iget-object v7, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 18
    .line 19
    if-lez v6, :cond_18

    .line 20
    .line 21
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 22
    .line 23
    .line 24
    return-wide v4

    .line 25
    :cond_18
    add-long/2addr v0, p1

    .line 26
    invoke-virtual {v7, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 27
    .line 28
    .line 29
    return-wide p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1c

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_1c

    .line 17
    if-nez v0, :cond_14

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 27
    monitor-exit p0

    .line 28
    return v0

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .line 31
    throw v0
.end method

.method public declared-synchronized close()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    .line 5
    .line 6
    .line 7
    :try_start_6
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    goto :goto_16

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    :try_start_10
    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    .line 24
    throw v0
.end method

.method public declared-synchronized read()I
    .registers 2

    monitor-enter p0

    .line 39
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    if-nez v0, :cond_a

    .line 40
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 41
    :cond_a
    :try_start_a
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    .line 3
    .line 4
    .line 5
    if-nez p3, :cond_9

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_23

    .line 14
    if-nez v0, :cond_12

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_12
    :try_start_12
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return p3

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .line 38
    throw p1
.end method

.method public declared-synchronized skip(J)J
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-gtz v2, :cond_9

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_21

    .line 16
    int-to-long v0, v0

    .line 17
    cmp-long v0, v0, p1

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    if-ltz v0, :cond_23

    .line 22
    .line 23
    :try_start_16
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    long-to-int v2, p1

    .line 28
    add-int/2addr v0, v2

    .line 29
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-wide p1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_3b

    .line 36
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-long v0, v0

    .line 41
    sub-long/2addr p1, v0

    .line 42
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->skipFromFileChannel(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p1
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_21

    .line 57
    add-long/2addr v0, p1

    .line 58
    monitor-exit p0

    .line 59
    return-wide v0

    .line 60
    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_21

    .line 61
    throw p1
.end method
