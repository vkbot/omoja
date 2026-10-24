.class public abstract Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
.super Ljava/lang/Object;
.source "ShortIntegerDecodingState.java"

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
    .locals 3
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, "highByte":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    .line 51
    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    .line 47
    nop

    .line 57
    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    goto :goto_0

    .line 59
    :cond_2
    return-object p0
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v1, "Unexpected end of session while waiting for a short integer."

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
