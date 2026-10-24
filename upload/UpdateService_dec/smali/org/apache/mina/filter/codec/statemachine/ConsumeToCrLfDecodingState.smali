.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToCrLfDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private lastIsCR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 8
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 60
    .local v0, "beginPos":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    .line 61
    .local v1, "limit":I
    const/4 v2, -0x1

    .line 63
    .local v2, "terminatorPos":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    .line 64
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v6

    .line 65
    .local v6, "b":B
    const/16 v7, 0xd

    if-ne v6, v7, :cond_0

    .line 66
    iput-boolean v5, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    goto :goto_1

    .line 68
    :cond_0
    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    iget-boolean v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz v7, :cond_1

    .line 69
    move v2, v3

    .line 70
    goto :goto_2

    .line 72
    :cond_1
    iput-boolean v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    .line 63
    .end local v6    # "b":B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-ltz v2, :cond_6

    .line 79
    add-int/lit8 v3, v2, -0x1

    .line 81
    .local v3, "endPos":I
    const/4 v5, 0x0

    if-ge v0, v3, :cond_4

    .line 82
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 84
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v4, :cond_3

    .line 85
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .local v4, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_3

    .line 87
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    invoke-virtual {v4, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 88
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 89
    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 92
    :goto_3
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4

    .line 95
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_4
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v6, :cond_5

    .line 96
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_4

    .line 98
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 99
    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    :goto_4
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 103
    invoke-virtual {p0, v4, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v5

    return-object v5

    .line 106
    .end local v3    # "endPos":I
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_6
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 108
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v3, :cond_7

    .line 109
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 110
    invoke-virtual {v3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 113
    :cond_7
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 115
    iget-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz v3, :cond_8

    .line 116
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 119
    :cond_8
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

    .line 129
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .local v0, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 132
    .end local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 133
    .restart local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 135
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1
.end method
