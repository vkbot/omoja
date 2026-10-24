.class Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
.super Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.source "CachedBufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/buffer/CachedBufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedBuffer"
.end annotation


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private final ownerThread:Ljava/lang/Thread;

.field final synthetic this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .line 220
    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 221
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->ownerThread:Ljava/lang/Thread;

    .line 223
    iput-object p2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 224
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 225
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p2, "parent"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 227
    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .line 228
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->ownerThread:Ljava/lang/Thread;

    .line 230
    iput-object p3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 231
    return-void
.end method

.method private free(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "oldBuf"    # Ljava/nio/ByteBuffer;

    .line 285
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->isDerived()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->ownerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$100(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .local v0, "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    goto :goto_0

    .line 296
    .end local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$200(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 299
    .restart local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :goto_0
    if-nez v0, :cond_3

    .line 300
    return-void

    .line 304
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-static {v2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 305
    :cond_4
    new-instance v1, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    iget-object v2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-direct {v1, v2, p1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 307
    :cond_5
    return-void

    .line 287
    .end local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 265
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method protected asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 260
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public buf()Ljava/nio/ByteBuffer;
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer has been freed already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buf(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 243
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 244
    .local v0, "oldBuf":Ljava/nio/ByteBuffer;
    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 245
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->free(Ljava/nio/ByteBuffer;)V

    .line 246
    return-void
.end method

.method protected duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 250
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public free()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->free(Ljava/nio/ByteBuffer;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 282
    return-void
.end method

.method public hasArray()Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method protected slice0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 255
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->this$0:Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
