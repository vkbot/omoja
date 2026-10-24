.class public final Lorg/apache/commons/compress/archivers/zip/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/t0;


# static fields
.field public static final c:[B

.field public static final d:Ljava/lang/String;

.field public static final e:[C


# instance fields
.field public final a:Ljava/nio/charset/Charset;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o;->c:[B

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o;->d:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o;->e:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o;->a:Ljava/nio/charset/Charset;

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/o;->b:Z

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->b:Z

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/u0;->b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    const/4 v6, 0x6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v7

    mul-float/2addr v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-le v5, v7, :cond_6

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    move v7, v3

    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-ge v5, v8, :cond_5

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v8

    invoke-virtual {p0, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    int-to-float v5, v7

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v7

    mul-float/2addr v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/zip/u0;->b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_6
    if-nez v1, :cond_7

    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :cond_7
    move v5, v3

    :goto_4
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v7

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    const/16 v8, 0x55

    invoke-virtual {v1, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0xf

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/o;->e:[C

    aget-char v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    shr-int/lit8 v8, v7, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v9, v7

    invoke-virtual {v1, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_8
    :goto_5
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0, v1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v0, v7}, Lorg/apache/commons/compress/archivers/zip/u0;->b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    invoke-virtual {p0, p1, v0, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public final c()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->b:Z

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o;->c:[B

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method
