.class public final Lorg/apache/commons/io/input/MemoryMappedFileInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x40000

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final channel:Ljava/nio/channels/FileChannel;

.field private nextBufferPosition:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getPath()Ljava/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->g()Ljava/nio/file/StandardOpenOption;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    invoke-static {p1, v0}, Lorg/apache/commons/io/file/f;->d(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 33
    .line 34
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;Lorg/apache/commons/io/input/MemoryMappedFileInputStream$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;-><init>(Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private cleanBuffer()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/io/input/ByteBufferCleaner;->clean(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method private nextBuffer()V
    .registers 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_2b

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->cleanBuffer()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 27
    .line 28
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 29
    .line 30
    iget-wide v6, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 31
    .line 32
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    iget-wide v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 39
    .line 40
    add-long/2addr v0, v8

    .line 41
    iput-wide v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    sget-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_15

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->cleanBuffer()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public getBufferSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public read()I
    .registers 3

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->checkOpen()V

    .line 49
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 51
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, -0x1

    return v0

    .line 52
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-short v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_7

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->checkOpen()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1f

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1f

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    return p1

    .line 32
    :cond_1f
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    return p3
.end method

.method public skip(J)J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-gtz v2, :cond_a

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-gtz v0, :cond_22

    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-long v1, v1

    .line 29
    add-long/2addr v1, p1

    .line 30
    long-to-int v1, v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    return-wide p1

    .line 35
    :cond_22
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 42
    .line 43
    sub-long/2addr v0, v2

    .line 44
    iget-object v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-long v2, v2

    .line 51
    iget-object v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-long v4, v4

    .line 58
    sub-long/2addr p1, v4

    .line 59
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    add-long/2addr p1, v2

    .line 64
    iget-wide v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 65
    .line 66
    iget-object v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-long v2, v2

    .line 73
    sub-long v2, p1, v2

    .line 74
    .line 75
    add-long/2addr v2, v0

    .line 76
    iput-wide v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 77
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 79
    .line 80
    .line 81
    return-wide p1
.end method
