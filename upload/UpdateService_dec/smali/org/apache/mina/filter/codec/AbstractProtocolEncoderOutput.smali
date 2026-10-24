.class public abstract Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.super Ljava/lang/Object;
.source "AbstractProtocolEncoderOutput.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;


# instance fields
.field private buffersOnly:Z

.field private final messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getMessageQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public mergeAll()V
    .locals 5

    .line 75
    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 81
    .local v0, "size":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 83
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    .local v1, "sum":I
    iget-object v2, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 89
    .local v3, "b":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    add-int/2addr v1, v4

    .line 90
    .end local v3    # "b":Ljava/lang/Object;
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 97
    .local v2, "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    iget-object v3, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 98
    .local v3, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v3, :cond_2

    .line 99
    nop

    .line 106
    .end local v3    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 107
    iget-object v3, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 108
    return-void

    .line 102
    .restart local v3    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 103
    .end local v3    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_1

    .line 76
    .end local v0    # "size":I
    .end local v1    # "sum":I
    .end local v2    # "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the encoded message list contains a non-buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 3
    .param p1, "encodedMessage"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 62
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buf is empty. Forgot to call flip()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    .line 68
    :goto_0
    return-void
.end method
