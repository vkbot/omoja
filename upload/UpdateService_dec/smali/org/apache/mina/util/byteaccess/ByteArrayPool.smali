.class public Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    }
.end annotation


# instance fields
.field private final MAX_BITS:I

.field private final direct:Z

.field private freeBufferCount:I

.field private freeBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Stack<",
            "Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private freeMemory:J

.field private freed:Z

.field private final maxFreeBuffers:I

.field private final maxFreeMemory:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "direct"    # Z
    .param p2, "maxFreeBuffers"    # I
    .param p3, "maxFreeMemory"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->MAX_BITS:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    .line 64
    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    iput p2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    .line 70
    iput p3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    .line 71
    iput-boolean v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    .param p1, "x1"    # I

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return v0
.end method

.method static synthetic access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    .param p1, "x1"    # J

    .line 35
    iput-wide p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 35
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    return v0
.end method

.method private bits(I)I
    .locals 2
    .param p1, "index"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "bits":I
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return v0
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5
    .param p1, "size"    # I

    .line 81
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    move-result v1

    .line 85
    .local v1, "bits":I
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    .line 88
    .local v0, "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    .line 89
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 90
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0    # "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    shl-int/2addr v0, v1

    .line 95
    .local v0, "bbSize":I
    iget-boolean v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    invoke-static {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 96
    .local v2, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 97
    new-instance v4, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    invoke-direct {v4, p0, v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 98
    .local v4, "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    invoke-virtual {v4, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    .line 99
    return-object v4

    .line 92
    .end local v0    # "bbSize":I
    .end local v2    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 82
    .end local v1    # "bits":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size must be at least 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public free()V
    .locals 2

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    .line 120
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already freed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    throw v0

    .line 122
    .restart local p0    # "this":Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
