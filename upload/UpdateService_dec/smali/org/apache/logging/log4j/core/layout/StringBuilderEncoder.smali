.class public Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;
.super Ljava/lang/Object;
.source "StringBuilderEncoder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/layout/Encoder<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private final byteBufferSize:I

.field private final charBufferSize:I

.field private final charset:Ljava/nio/charset/Charset;

.field private final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 52
    sget v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_CHAR_BUFFER_SIZE:I

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;-><init>(Ljava/nio/charset/Charset;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "charBufferSize"    # I
    .param p3, "byteBufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "charset",
            "charBufferSize",
            "byteBufferSize"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->threadLocal:Ljava/lang/ThreadLocal;

    .line 56
    iput p2, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->charBufferSize:I

    .line 57
    iput p3, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->byteBufferSize:I

    .line 58
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->charset:Ljava/nio/charset/Charset;

    .line 59
    return-void
.end method

.method private getThreadLocalState()[Ljava/lang/Object;
    .locals 7

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 77
    .local v0, "threadLocalState":[Ljava/lang/Object;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 78
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->charset:Ljava/nio/charset/Charset;

    .line 79
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 80
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->charBufferSize:I

    .line 81
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    aput-object v3, v4, v2

    iget v2, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->byteBufferSize:I

    .line 82
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v0, v4

    .line 84
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    aget-object v3, v0, v3

    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 87
    aget-object v2, v0, v2

    check-cast v2, Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    aget-object v1, v0, v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    :goto_0
    return-object v0
.end method

.method private logEncodeTextException(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "text"    # Ljava/lang/StringBuilder;
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ex",
            "text",
            "destination"
        }
    .end annotation

    .line 95
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v1, "Recovering from StringBuilderEncoder.encode(\'{}\') error: {}"

    invoke-virtual {v0, v1, p2, p1, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .line 32
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->encode(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    return-void
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->getThreadLocalState()[Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "threadLocalState":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    .line 66
    .local v1, "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 67
    .local v2, "charBuffer":Ljava/nio/CharBuffer;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 68
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v1, v2, v3, p1, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "threadLocalState":[Ljava/lang/Object;
    .end local v1    # "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    .end local v2    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->logEncodeTextException(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 71
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, p1, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeTextFallBack(Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 73
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
