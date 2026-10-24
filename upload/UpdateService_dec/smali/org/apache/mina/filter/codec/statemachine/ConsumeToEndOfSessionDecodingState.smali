.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToEndOfSessionDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final maxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    .line 47
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 3
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 55
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    if-gt v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 62
    return-object p0

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received data exceeds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " byte(s)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 75
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v1, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 75
    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 78
    throw v1
.end method
