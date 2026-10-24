.class public Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;
.super Ljava/lang/Object;
.source "LockingStringBuilderEncoder.java"

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


# instance fields
.field private final cachedCharBuffer:Ljava/nio/CharBuffer;

.field private final charset:Ljava/nio/charset/Charset;

.field private final charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 38
    sget v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_CHAR_BUFFER_SIZE:I

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;-><init>(Ljava/nio/charset/Charset;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "charBufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "charset",
            "charBufferSize"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->charset:Ljava/nio/charset/Charset;

    .line 43
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 44
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 45
    new-array v0, p2, [C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->cachedCharBuffer:Ljava/nio/CharBuffer;

    .line 46
    return-void
.end method

.method private getCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->cachedCharBuffer:Ljava/nio/CharBuffer;

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

    .line 69
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v1, "Recovering from LockingStringBuilderEncoder.encode(\'{}\') error"

    invoke-virtual {v0, v1, p2, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
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

    .line 31
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->encode(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    return-void
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 3
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

    .line 56
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->cachedCharBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 59
    monitor-exit p2

    .line 63
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;
    .end local p1    # "source":Ljava/lang/StringBuilder;
    .end local p2    # "destination":Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;
    .restart local p1    # "source":Ljava/lang/StringBuilder;
    .restart local p2    # "destination":Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->logEncodeTextException(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 62
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LockingStringBuilderEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, p1, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeTextFallBack(Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 65
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
