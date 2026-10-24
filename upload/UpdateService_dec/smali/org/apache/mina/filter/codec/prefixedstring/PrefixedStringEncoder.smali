.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "PrefixedStringEncoder.java"


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x800

.field public static final DEFAULT_PREFIX_LENGTH:I = 0x4


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private maxDataLength:I

.field private prefixLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 78
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "prefixLength"    # I

    .line 69
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "prefixLength"    # I
    .param p3, "maxDataLength"    # I

    .line 56
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    .line 47
    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    .line 57
    iput-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 58
    iput p2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    .line 59
    iput p3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    .line 60
    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 140
    .local v1, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    iget v2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    iget-object v3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 141
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    if-gt v2, v3, :cond_0

    .line 144
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 145
    invoke-interface {p3, v1}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    .line 146
    return-void

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMaxDataLength()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    return v0
.end method

.method public setMaxDataLength(I)V
    .locals 0
    .param p1, "maxDataLength"    # I

    .line 121
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    .line 122
    return-void
.end method

.method public setPrefixLength(I)V
    .locals 3
    .param p1, "prefixLength"    # I

    .line 94
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefixLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    .line 98
    return-void
.end method
