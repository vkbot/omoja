.class public abstract Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;
.super Ljava/lang/Object;
.source "IntegerDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    const/4 v0, 0x0

    .line 41
    .local v0, "firstByte":I
    const/4 v1, 0x0

    .line 42
    .local v1, "secondByte":I
    const/4 v2, 0x0

    .line 44
    .local v2, "thirdByte":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 59
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    .line 60
    shl-int/lit8 v3, v0, 0x18

    shl-int/lit8 v4, v1, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v3, p2}, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v3

    return-object v3

    .line 63
    :cond_0
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v2

    .line 56
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v1

    .line 52
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    .line 48
    nop

    .line 66
    :goto_1
    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    goto :goto_0

    .line 69
    :cond_4
    return-object p0
.end method

.method protected abstract finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
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

    .line 77
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v1, "Unexpected end of session while waiting for an integer."

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
