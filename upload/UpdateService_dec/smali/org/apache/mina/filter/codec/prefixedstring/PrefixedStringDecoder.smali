.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "PrefixedStringDecoder.java"


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x800

.field public static final DEFAULT_PREFIX_LENGTH:I = 0x4


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private maxDataLength:I

.field private prefixLength:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 78
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "prefixLength"    # I

    .line 69
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "prefixLength"    # I
    .param p3, "maxDataLength"    # I

    .line 56
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    .line 47
    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    .line 57
    iput-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 58
    iput p2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    .line 59
    iput p3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    .line 60
    return-void
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    iget v1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    invoke-virtual {p2, v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    iget-object v1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/String;
    invoke-interface {p3, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    .line 131
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxDataLength()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    return v0
.end method

.method public setMaxDataLength(I)V
    .locals 0
    .param p1, "maxDataLength"    # I

    .line 111
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    .line 112
    return-void
.end method

.method public setPrefixLength(I)V
    .locals 0
    .param p1, "prefixLength"    # I

    .line 87
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    .line 88
    return-void
.end method
