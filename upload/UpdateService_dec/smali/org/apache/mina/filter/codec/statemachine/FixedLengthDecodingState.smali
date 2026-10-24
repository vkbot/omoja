.class public abstract Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;
.super Ljava/lang/Object;
.source "FixedLengthDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    .line 46
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 4
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    if-lt v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 56
    .local v0, "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 57
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 58
    .local v1, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 61
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v2

    return-object v2

    .line 64
    .end local v0    # "limit":I
    .end local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 65
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 67
    return-object p0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 71
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 72
    .restart local v0    # "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 73
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 74
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 75
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 76
    .restart local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 78
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v2

    return-object v2

    .line 81
    .end local v0    # "limit":I
    .end local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 82
    return-object p0
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

    .line 92
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .local v0, "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 95
    .end local v0    # "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 96
    .restart local v0    # "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 99
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1
.end method
