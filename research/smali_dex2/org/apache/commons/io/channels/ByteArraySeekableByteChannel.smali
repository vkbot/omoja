.class public Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final RESIZE_LIMIT:I = 0x3fffffff


# instance fields
.field private volatile closed:Z

.field private data:[B

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x2000

    .line 35
    invoke-direct {p0, v0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    if-ltz p1, :cond_16

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 19
    .line 20
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string p1, "Size must be non-negative"

    .line 24
    .line 25
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    iput-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 34
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    return-void
.end method

.method private checkOpen()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private checkRange(JLjava/lang/String;)I
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_f

    .line 6
    .line 7
    const-wide/32 v0, 0x7ffffff7

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_f

    .line 13
    .line 14
    long-to-int p1, p1

    .line 15
    return p1

    .line 16
    :cond_f
    const v0, 0x7ffffff7

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p3, v0, p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "%s must be in range [0..%,d]: %,d"

    .line 32
    .line 33
    invoke-static {p2, p1}, Ln0/b;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private resize(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_6
    const v1, 0x3fffffff    # 1.9999999f

    .line 8
    .line 9
    .line 10
    if-ge p1, v1, :cond_11

    .line 11
    .line 12
    :goto_b
    if-ge v0, p1, :cond_10

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_b

    .line 17
    :cond_10
    move p1, v0

    .line 18
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 19
    .line 20
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 25
    .line 26
    return-void
.end method

.method public static wrap([B)Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;
    .registers 2

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;-><init>([B)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->closed:Z

    .line 3
    .line 4
    return-void
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->closed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public position()J
    .registers 4

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 31
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    :try_start_8
    iget v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    int-to-long v0, v0

    .line 33
    iget-object v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    throw v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const-string v0, "position()"

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkRange(JLjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_e
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    .line 16
    .line 17
    iget-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    iget-object p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2d

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gtz v1, :cond_1a

    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    if-le v0, v1, :cond_1d

    .line 28
    .line 29
    move v0, v1

    .line 30
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 36
    .line 37
    add-int/2addr p1, v0

    .line 38
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2d

    .line 39
    .line 40
    iget-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public size()J
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_8
    iget v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    iget-object v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    return-wide v0

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    iget-object v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public toByteArray()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const-string v0, "truncate()"

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkRange(JLjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_e
    iget p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 16
    .line 17
    if-le p2, p1, :cond_17

    .line 18
    .line 19
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    goto :goto_23

    .line 24
    :cond_17
    :goto_17
    iget p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 25
    .line 26
    if-le p2, p1, :cond_1d

    .line 27
    .line 28
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_15

    .line 29
    .line 30
    :cond_1d
    iget-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :goto_23
    iget-object p2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8

    .line 1
    const-string v0, "required array size "

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->checkOpen()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_a
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 16
    .line 17
    iget v3, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-le v1, v2, :cond_4e

    .line 26
    .line 27
    iget v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 28
    .line 29
    add-int/2addr v2, v1

    .line 30
    if-ltz v2, :cond_2a

    .line 31
    .line 32
    const v3, 0x7ffffff7

    .line 33
    .line 34
    .line 35
    if-gt v2, v3, :cond_2a

    .line 36
    .line 37
    invoke-direct {p0, v2}, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->resize(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_4e

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_66

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    int-to-long v2, v2

    .line 51
    const-wide v4, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v2, v4

    .line 57
    const/16 v0, 0xa

    .line 58
    .line 59
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " too large"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->data:[B

    .line 80
    .line 81
    iget v2, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    iget p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 87
    .line 88
    add-int/2addr p1, v1

    .line 89
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->position:I

    .line 90
    .line 91
    iget v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I

    .line 92
    .line 93
    if-ge v0, p1, :cond_60

    .line 94
    .line 95
    iput p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->size:I
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_28

    .line 96
    .line 97
    :cond_60
    iget-object p1, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :goto_66
    iget-object v0, p0, Lorg/apache/commons/io/channels/ByteArraySeekableByteChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    .line 107
    .line 108
    throw p1
.end method
