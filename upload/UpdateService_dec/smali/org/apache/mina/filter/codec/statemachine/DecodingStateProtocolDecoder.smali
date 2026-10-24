.class public Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;
.super Ljava/lang/Object;
.source "DecodingStateProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# instance fields
.field private session:Lorg/apache/mina/core/session/IoSession;

.field private final state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

.field private final undecodedBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/statemachine/DecodingState;)V
    .locals 2
    .param p1, "state"    # Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    .line 55
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->session:Lorg/apache/mina/core/session/IoSession;

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->session:Lorg/apache/mina/core/session/IoSession;

    goto :goto_0

    .line 68
    :cond_0
    if-ne v0, p1, :cond_4

    .line 73
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 76
    :goto_1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 77
    .local v0, "b":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v0, :cond_1

    .line 78
    nop

    .line 94
    .end local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    return-void

    .line 81
    .restart local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 82
    .local v1, "oldRemaining":I
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-interface {v2, v0, p3}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 83
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 85
    .local v2, "newRemaining":I
    if-eqz v2, :cond_3

    .line 86
    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 87
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must consume at least one byte per decode()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_3
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 93
    .end local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "oldRemaining":I
    .end local v2    # "newRemaining":I
    :goto_2
    goto :goto_1

    .line 69
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a stateful decoder.  You have to create one per session."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 102
    return-void
.end method
