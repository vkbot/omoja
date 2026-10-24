.class public Lorg/apache/poi/util/RLEDecompressingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final POWER2:[I


# instance fields
.field private final buf:[B

.field private final in:Ljava/io/InputStream;

.field private len:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Header byte 0x01 expected, received 0x%02X"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decompress([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->decompress([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompress([BII)[B
    .locals 2

    .line 2
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 3
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    .line 4
    :try_start_0
    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1, p1}, Ln4/f$a;->p(I)V

    invoke-virtual {v1, p2}, Ln4/f$a;->n(I)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance p1, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 8
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 10
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 11
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception p1

    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 12
    :goto_1
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p2

    .line 13
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 14
    :goto_3
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    .line 15
    :try_start_c
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method public static getCopyLenBits(I)I
    .locals 2

    const/16 v0, 0xb

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v1, v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    rsub-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    return p0
.end method

.method private readChunk()I
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget-object v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    and-int/lit16 v3, v1, 0xfff

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v4, v1, 0x7000

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_b

    const v4, 0x8000

    and-int/2addr v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    iget-object p0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    invoke-static {v1, p0, v0, v3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    if-lt p0, v3, :cond_1

    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Not enough bytes read, expected %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v1, v0

    move v4, v1

    :cond_3
    :goto_0
    if-ge v1, v3, :cond_a

    iget-object v5, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    if-ne v5, v2, :cond_4

    goto :goto_4

    :cond_4
    move v6, v0

    :goto_1
    const/16 v7, 0x8

    if-ge v6, v7, :cond_3

    if-lt v1, v3, :cond_5

    goto :goto_0

    :cond_5
    sget-object v7, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v8, v7, v6

    and-int/2addr v8, v5

    if-nez v8, :cond_7

    iget-object v7, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v2, :cond_6

    return v2

    :cond_6
    iget-object v8, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    add-int/lit8 v9, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, v8, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v9

    goto :goto_3

    :cond_7
    iget-object v8, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v8}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v8

    if-ne v8, v2, :cond_8

    return v2

    :cond_8
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v4, -0x1

    invoke-static {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->getCopyLenBits(I)I

    move-result v9

    shr-int v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aget v7, v7, v9

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    sub-int v8, v4, v10

    add-int/2addr v7, v8

    :goto_2
    if-ge v8, v7, :cond_9

    iget-object v9, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v11, v9, v8

    aput-byte v11, v9, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    return v4

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0xe000

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Chunksize header A should be 0x3000, received 0x%04X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    return v2
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    and-int/lit16 p0, p0, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lez v0, :cond_0

    iget p0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    if-lt v2, v0, :cond_1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 2
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 6

    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    move v2, p2

    move v0, p3

    :goto_0
    if-lez v0, :cond_3

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v3, v4, :cond_2

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v3, v1, :cond_2

    if-le v2, p2, :cond_1

    sub-int v1, v2, p2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v3, v4

    .line 5
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v5, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 6
    invoke-static {v4, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return p3
.end method

.method public readInt()I
    .locals 0

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public readShort()I
    .locals 0

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .locals 6

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    int-to-long v2, v2

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1
.end method
