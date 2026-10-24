.class public Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;
.super Ljava/lang/Object;
.source "TextEncoderHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static copy(Ljava/lang/StringBuilder;ILjava/nio/CharBuffer;)I
    .locals 5
    .param p0, "source"    # Ljava/lang/StringBuilder;
    .param p1, "offset"    # I
    .param p2, "destination"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "destination"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 295
    .local v0, "length":I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    .line 296
    .local v1, "array":[C
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 297
    .local v2, "start":I
    add-int v3, p1, v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, p1, v3, v1, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 298
    add-int v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    return v0
.end method

.method private static drainIfByteBufferFull(Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p1, "temp"    # Ljava/nio/ByteBuffer;
    .param p2, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "destination",
            "temp",
            "result"
        }
    .end annotation

    .line 249
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 254
    .local v0, "destinationBuffer":Ljava/nio/ByteBuffer;
    if-eq v0, p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestinationHelper;->writeToUnsynchronized(Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 258
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 260
    :cond_0
    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 262
    .end local v0    # "destinationBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 264
    :cond_1
    return-object p1
.end method

.method private static encodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "endOfInput"    # Z
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p4, "temp"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "endOfInput",
            "destination",
            "temp"
        }
    .end annotation

    .line 224
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 225
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-static {p3, p4, v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->drainIfByteBufferFull(Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 226
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->throwException(Ljava/nio/charset/CoderResult;)V

    .line 230
    :cond_0
    return-object p4

    .line 226
    :cond_1
    goto :goto_0
.end method

.method private static encodeChunkedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 11
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "text"    # Ljava/lang/StringBuilder;
    .param p4, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "byteBuf",
            "text",
            "destination"
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "start":I
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 133
    .local v1, "result":Ljava/nio/charset/CoderResult;
    const/4 v2, 0x0

    move-object v7, v1

    move v8, v2

    .line 134
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    .local v7, "result":Ljava/nio/charset/CoderResult;
    .local v8, "endOfInput":Z
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 136
    invoke-static {p3, v0, p1}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->copy(Ljava/lang/StringBuilder;ILjava/nio/CharBuffer;)I

    move-result v1

    .line 137
    .local v1, "copied":I
    add-int/2addr v0, v1

    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v9, v10

    :goto_1
    move v8, v9

    .line 139
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p0, p1, p2, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 141
    .end local v1    # "copied":I
    goto :goto_0

    .line 142
    :cond_1
    if-eqz v8, :cond_2

    .line 143
    invoke-static {p0, p1, p2, p4, v7}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeEncodedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/charset/CoderResult;)V

    .line 144
    return-void

    .line 146
    :cond_2
    monitor-enter p4

    .line 147
    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move-object v4, p4

    move-object v5, p2

    move-object v6, v7

    :try_start_0
    invoke-static/range {v1 .. v6}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeAndEncodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object p2, v1

    .line 149
    :goto_2
    if-nez v8, :cond_5

    .line 150
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    move-object v7, v1

    .line 151
    :goto_3
    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    invoke-static {p3, v0, p1}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->copy(Ljava/lang/StringBuilder;ILjava/nio/CharBuffer;)I

    move-result v1

    .line 154
    .restart local v1    # "copied":I
    add-int/2addr v0, v1

    .line 155
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v2, v9

    goto :goto_4

    :cond_3
    move v2, v10

    :goto_4
    move v8, v2

    .line 156
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    invoke-virtual {p0, p1, p2, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    move-object v7, v2

    .line 158
    .end local v1    # "copied":I
    goto :goto_3

    .line 159
    :cond_4
    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move-object v4, p4

    move-object v5, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeAndEncodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object p2, v1

    goto :goto_2

    .line 162
    :cond_5
    invoke-static {p0, p4, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->flushRemainingBytes(Ljava/nio/charset/CharsetEncoder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)V

    .line 163
    monitor-exit p4

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static encodeText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 4
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "text"    # Ljava/lang/StringBuilder;
    .param p4, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "byteBuf",
            "text",
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 57
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeChunkedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 65
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-static {p0, p1, p2, p4, v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeEncodedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/charset/CoderResult;)V

    .line 66
    return-void
.end method

.method public static encodeText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 2
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "destination"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 173
    monitor-enter p2

    .line 174
    :try_start_0
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, p2, v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->encodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .line 176
    invoke-static {p0, p2, v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->flushRemainingBytes(Ljava/nio/charset/CharsetEncoder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)V

    .line 177
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    monitor-exit p2

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static encodeTextFallBack(Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "charset",
            "text",
            "destination"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 39
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v1}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->writeBytes([BII)V

    .line 40
    return-void
.end method

.method private static flushRemainingBytes(Ljava/nio/charset/CharsetEncoder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p2, "temp"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "charsetEncoder",
            "destination",
            "temp"
        }
    .end annotation

    .line 273
    :goto_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 274
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-static {p1, p2, v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->drainIfByteBufferFull(Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 275
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->throwException(Ljava/nio/charset/CoderResult;)V

    .line 279
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eq p2, v1, :cond_1

    .line 280
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 281
    invoke-static {p2, p1}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestinationHelper;->writeToUnsynchronized(Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 282
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 284
    :cond_1
    return-void

    .line 275
    :cond_2
    goto :goto_0
.end method

.method private static throwException(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .param p0, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 214
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 218
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeAndEncodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "endOfInput"    # Z
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p4, "temp"    # Ljava/nio/ByteBuffer;
    .param p5, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "endOfInput",
            "destination",
            "temp",
            "result"
        }
    .end annotation

    .line 199
    :goto_0
    invoke-static {p3, p4, p5}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->drainIfByteBufferFull(Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 200
    invoke-virtual {p5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    nop

    .line 205
    invoke-virtual {p5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {p5}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->throwException(Ljava/nio/charset/CoderResult;)V

    .line 208
    :cond_0
    return-object p4

    .line 203
    :cond_1
    invoke-virtual {p0, p1, p4, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p5

    goto :goto_0
.end method

.method private static writeChunkedEncodedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)V
    .locals 6
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p3, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p4, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "destination",
            "byteBuf",
            "result"
        }
    .end annotation

    .line 111
    monitor-enter p2

    .line 112
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeAndEncodeAsMuchAsPossible(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;ZLorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object p3, v0

    .line 114
    invoke-static {p0, p2, p3}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->flushRemainingBytes(Ljava/nio/charset/CharsetEncoder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)V

    .line 115
    monitor-exit p2

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static writeEncodedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/charset/CoderResult;)V
    .locals 1
    .param p0, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charBuf"    # Ljava/nio/CharBuffer;
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .param p4, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "charsetEncoder",
            "charBuf",
            "byteBuf",
            "destination",
            "result"
        }
    .end annotation

    .line 78
    invoke-virtual {p4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p0, p1, p3, p2, p4}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->writeChunkedEncodedText(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;Ljava/nio/charset/CoderResult;)V

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p4

    .line 83
    invoke-virtual {p4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    monitor-enter p3

    .line 85
    :try_start_0
    invoke-static {p0, p3, p2}, Lorg/apache/logging/log4j/core/layout/TextEncoderHelper;->flushRemainingBytes(Ljava/nio/charset/CharsetEncoder;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;Ljava/nio/ByteBuffer;)V

    .line 86
    monitor-exit p3

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_1
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eq p2, v0, :cond_2

    .line 95
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    invoke-interface {p3, p2}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 97
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 99
    :cond_2
    return-void
.end method
