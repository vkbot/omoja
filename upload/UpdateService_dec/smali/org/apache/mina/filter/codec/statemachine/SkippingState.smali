.class public abstract Lorg/apache/mina/filter/codec/statemachine/SkippingState;
.super Ljava/lang/Object;
.source "SkippingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private skippedBytes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract canSkip(B)Z
.end method

.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 6
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 41
    .local v0, "beginPos":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    .line 43
    .local v1, "limit":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 44
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    .line 46
    .local v3, "b":B
    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->canSkip(B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    iget v4, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 49
    .local v4, "answer":I
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 51
    invoke-virtual {p0, v4}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v5

    return-object v5

    .line 54
    .end local v4    # "answer":I
    :cond_0
    iget v4, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 43
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 58
    return-object p0
.end method

.method protected abstract finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    return-object v0
.end method
