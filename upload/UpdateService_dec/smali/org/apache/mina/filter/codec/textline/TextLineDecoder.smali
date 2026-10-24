.class public Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
.super Ljava/lang/Object;
.source "TextLineDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    }
.end annotation


# static fields
.field private static final CONTEXT:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private bufferLength:I

.field private final charset:Ljava/nio/charset/Charset;

.field private delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field private maxLineLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 74
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 94
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "delimiter"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "delimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 57
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    .line 116
    if-eqz p1, :cond_2

    .line 120
    if-eqz p2, :cond_1

    .line 124
    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    .line 125
    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 128
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 132
    .local v0, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 137
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 138
    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 140
    .end local v0    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delimiter parameter should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset parameter shuld not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1
    .param p1, "delimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 84
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .line 42
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method private decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 11
    .param p1, "ctx"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p4, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v0

    .line 250
    .local v0, "matchCount":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 251
    .local v1, "oldPos":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 253
    .local v2, "oldLimit":I
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    .line 255
    .local v3, "b":B
    const/4 v4, 0x0

    .line 257
    .local v4, "matched":Z
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v5, 0xd

    if-eq v3, v5, :cond_0

    .line 271
    const/4 v0, 0x0

    goto :goto_1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 262
    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 267
    const/4 v4, 0x1

    .line 268
    nop

    .line 274
    :goto_1
    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v5

    .line 277
    .local v5, "pos":I
    invoke-virtual {p3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 278
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 280
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 282
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 283
    invoke-virtual {p3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 285
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v6

    if-nez v6, :cond_2

    .line 286
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v6

    .line 287
    .local v6, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 291
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    new-array v7, v7, [B

    .line 292
    .local v7, "data":[B
    invoke-virtual {v6, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 293
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v8

    .line 295
    .local v8, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v9

    .line 296
    .local v9, "buffer":Ljava/nio/CharBuffer;
    invoke-virtual {v9}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {p0, p2, v10, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v7    # "data":[B
    .end local v8    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v9    # "buffer":Ljava/nio/CharBuffer;
    .end local v10    # "str":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 300
    nop

    .line 301
    .end local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    nop

    .line 307
    move v1, v5

    .line 308
    const/4 v0, 0x0

    goto :goto_2

    .line 299
    .restart local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 300
    throw v7

    .line 302
    .end local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v6

    .line 303
    .local v6, "overflowPosition":I
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 304
    new-instance v7, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Line is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 310
    .end local v3    # "b":B
    .end local v4    # "matched":Z
    .end local v5    # "pos":I
    .end local v6    # "overflowPosition":I
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 313
    :cond_4
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 314
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 316
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 317
    return-void
.end method

.method private decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p4, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .line 324
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v0

    .line 327
    .local v0, "matchCount":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 328
    .local v1, "oldPos":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 330
    .local v2, "oldLimit":I
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    .line 333
    .local v3, "b":B
    iget-object v4, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v4, v3, :cond_1

    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 336
    iget-object v4, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 338
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 339
    .local v4, "pos":I
    invoke-virtual {p3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 340
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 342
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 344
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 345
    invoke-virtual {p3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 347
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v5

    if-nez v5, :cond_0

    .line 348
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 349
    .local v5, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 350
    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 353
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v6, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 356
    nop

    .line 357
    .end local v5    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    nop

    .line 363
    move v1, v4

    .line 364
    const/4 v0, 0x0

    .line 365
    .end local v4    # "pos":I
    goto :goto_1

    .line 355
    .restart local v4    # "pos":I
    .restart local v5    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 356
    throw v6

    .line 358
    .end local v5    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v5

    .line 359
    .local v5, "overflowPosition":I
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 360
    new-instance v6, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Line is too long: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 368
    .end local v4    # "pos":I
    .end local v5    # "overflowPosition":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 369
    const/4 v0, 0x0

    .line 371
    .end local v3    # "b":B
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 374
    :cond_3
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 375
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 377
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 378
    return-void
.end method

.method private getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 212
    sget-object v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    .line 214
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    if-nez v0, :cond_0

    .line 215
    new-instance v1, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    iget v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;-><init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;ILorg/apache/mina/filter/codec/textline/TextLineDecoder$1;)V

    move-object v0, v1

    .line 216
    sget-object v1, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    move-result-object v0

    .line 198
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 203
    :goto_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    sget-object v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    .line 237
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    if-eqz v0, :cond_0

    .line 238
    sget-object v1, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_0
    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    return-void
.end method

.method public getBufferLength()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method public setBufferLength(I)V
    .locals 3
    .param p1, "bufferLength"    # I

    .line 175
    if-lez p1, :cond_0

    .line 180
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    .line 181
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be a positive value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxLineLength(I)V
    .locals 3
    .param p1, "maxLineLength"    # I

    .line 161
    if-lez p1, :cond_0

    .line 165
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 166
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxLineLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be a positive value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    .line 390
    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    .line 391
    return-void
.end method
