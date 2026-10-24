.class public final Lorg/apache/commons/compress/archivers/zip/z;
.super Le4/a;
.source "SourceFile"

# interfaces
.implements Lh4/f;


# instance fields
.field public Z:I

.field public b1:B

.field public c1:I

.field public d1:I

.field public final e1:[I

.field public final f1:[B

.field public final g1:[B

.field public h1:I

.field public final i1:[Z

.field public final r:[B

.field public final x:Lh4/a;

.field public final y:I


# direct methods
.method public constructor <init>(Ljava/io/FilterInputStream;)V
    .locals 6

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->r:[B

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    const/16 v3, 0x9

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->c1:I

    new-instance v3, Lh4/a;

    invoke-direct {v3, p1, v0}, Lh4/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->x:Lh4/a;

    const/16 p1, 0x100

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    const/16 v3, 0xd

    if-gt v0, v3, :cond_2

    const/16 v0, 0x2000

    new-array v3, v0, [I

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->f1:[B

    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    aput v2, v4, v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/z;->f1:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->i1:[Z

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->i1:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->d1:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxCodeSize 13 is out of bounds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/z;->x:Lh4/a;

    iget-object p0, p0, Lh4/a;->c:Ln4/d;

    invoke-virtual {p0}, Ln4/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/z;->e()V

    return-void
.end method

.method public final d(BI)I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->d1:I

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/z;->i1:[Z

    const/16 v2, 0x2000

    if-ge v0, v2, :cond_0

    aget-boolean v3, v1, v0

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->d1:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    aput p2, v2, v0

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/z;->f1:[B

    aput-byte p1, p2, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->d1:I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    const/4 p0, 0x1

    aput-boolean p0, v1, v0

    :cond_2
    return v0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/z;->x:Lh4/a;

    invoke-virtual {p0}, Lh4/a;->close()V

    return-void
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->r:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-gez p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final j([BII)I
    .locals 11

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/z;->l(II[B)I

    move-result v1

    :goto_0
    sub-int v2, p3, v1

    if-lez v2, :cond_13

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    const-string v4, "Code size must not be bigger than 31"

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_12

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->x:Lh4/a;

    invoke-virtual {v6, v3}, Lh4/a;->a(I)J

    move-result-wide v7

    long-to-int v3, v7

    const/4 v7, -0x1

    if-gez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/z;->i1:[Z

    if-eq v3, v8, :cond_6

    aget-boolean v4, v10, v3

    if-nez v4, :cond_3

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->c1:I

    if-eq v3, v7, :cond_2

    iget-byte v4, p0, Lorg/apache/commons/compress/archivers/zip/z;->b1:B

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/compress/archivers/zip/z;->d(BI)I

    move-result v3

    move v4, v9

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The first code can\'t be a reference to its preceding code"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move v4, v0

    :goto_1
    move v5, v3

    :goto_2
    if-ltz v5, :cond_4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/z;->f1:[B

    aget-byte v10, v10, v5

    aput-byte v10, v6, v8

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    aget v5, v6, v5

    goto :goto_2

    :cond_4
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/z;->c1:I

    if-eq v5, v7, :cond_5

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    aget-byte v4, v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/z;->d(BI)I

    :cond_5
    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->c1:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    iget v7, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    aget-byte v3, v3, v7

    iput-byte v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->b1:B

    goto :goto_6

    :cond_6
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    if-gt v3, v5, :cond_11

    invoke-virtual {v6, v3}, Lh4/a;->a(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-ltz v3, :cond_10

    if-ne v3, v9, :cond_8

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->Z:I

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempt to increase code size beyond maximum"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/16 v3, 0x2000

    new-array v4, v3, [Z

    move v5, v0

    :goto_3
    array-length v6, v10

    if-ge v5, v6, :cond_a

    aget-boolean v6, v10, v5

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    aget v6, v6, v5

    if-eq v6, v7, :cond_9

    aput-boolean v9, v4, v6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    add-int/2addr v5, v9

    :goto_4
    if-ge v5, v3, :cond_c

    aget-boolean v6, v4, v5

    if-nez v6, :cond_b

    aput-boolean v0, v10, v5

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/z;->e1:[I

    aput v7, v6, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->y:I

    add-int/2addr v3, v9

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/z;->d1:I

    :goto_5
    move v7, v0

    :goto_6
    if-gez v7, :cond_e

    if-lez v1, :cond_d

    invoke-virtual {p0, v1}, Le4/a;->c(I)V

    return v1

    :cond_d
    return v7

    :cond_e
    add-int v3, p2, v1

    invoke-virtual {p0, v3, v2, p1}, Lorg/apache/commons/compress/archivers/zip/z;->l(II[B)I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid clear code subcode "

    invoke-static {p1, v3}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF;"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    invoke-virtual {p0, v1}, Le4/a;->c(I)V

    return v1
.end method

.method public final l(II[B)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/z;->g1:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    invoke-static {v0, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/z;->h1:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final bridge synthetic read()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/z;->i()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic read([BII)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/z;->j([BII)I

    move-result p0

    return p0
.end method
