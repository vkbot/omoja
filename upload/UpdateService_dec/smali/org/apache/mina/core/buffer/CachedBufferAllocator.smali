.class public Lorg/apache/mina/core/buffer/CachedBufferAllocator;
.super Ljava/lang/Object;
.source "CachedBufferAllocator.java"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHED_BUFFER_SIZE:I = 0x40000

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x8


# instance fields
.field private final directBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final heapBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final maxCachedBufferSize:I

.field private final maxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    const/16 v0, 0x8

    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;-><init>(II)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxPoolSize"    # I
    .param p2, "maxCachedBufferSize"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-ltz p1, :cond_1

    .line 96
    if-ltz p2, :cond_0

    .line 100
    iput p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    .line 101
    iput p2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    .line 103
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    .line 116
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCachedBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "requestedCapacity"    # I
    .param p2, "direct"    # Z

    .line 153
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v0

    .line 156
    .local v0, "actualCapacity":I
    iget v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-eqz v1, :cond_1

    if-le v0, v1, :cond_1

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_1

    .line 160
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_1

    .line 165
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    if-eqz p2, :cond_2

    .line 166
    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .local v1, "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    goto :goto_0

    .line 168
    .end local v1    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 172
    .restart local v1    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 174
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 176
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 177
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v1, v2

    goto :goto_1

    .line 179
    :cond_3
    if-eqz p2, :cond_4

    .line 180
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 182
    :cond_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    move-object v1, v2

    .line 187
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 188
    return-object v1
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "direct"    # Z

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .line 213
    return-void
.end method

.method public getMaxCachedBufferSize()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method

.method newPoolMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "poolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 139
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v0
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .line 204
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
