.class public final Lp2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lokio/ByteString;
    .locals 14

    const-string v0, "$this$decodeBase64"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp2/a;->a:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_0

    if-eq v6, v4, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v2, :cond_0

    if-eq v6, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v5, v5

    new-array v6, v5, [B

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_2
    const/4 v11, 0x0

    if-ge v7, v0, :cond_d

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-le v13, v12, :cond_2

    goto :goto_3

    :cond_2
    const/16 v13, 0x5a

    if-lt v13, v12, :cond_3

    add-int/lit8 v12, v12, -0x41

    goto :goto_8

    :cond_3
    :goto_3
    const/16 v13, 0x61

    if-le v13, v12, :cond_4

    goto :goto_4

    :cond_4
    const/16 v13, 0x7a

    if-lt v13, v12, :cond_5

    add-int/lit8 v12, v12, -0x47

    goto :goto_8

    :cond_5
    :goto_4
    const/16 v13, 0x30

    if-le v13, v12, :cond_6

    goto :goto_5

    :cond_6
    const/16 v13, 0x39

    if-lt v13, v12, :cond_7

    add-int/lit8 v12, v12, 0x4

    goto :goto_8

    :cond_7
    :goto_5
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_b

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_8

    goto :goto_7

    :cond_8
    const/16 v13, 0x2f

    if-eq v12, v13, :cond_a

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_9

    goto :goto_6

    :cond_9
    if-eq v12, v4, :cond_c

    if-eq v12, v3, :cond_c

    if-eq v12, v2, :cond_c

    if-ne v12, v1, :cond_11

    goto :goto_9

    :cond_a
    :goto_6
    const/16 v12, 0x3f

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v12, 0x3e

    :goto_8
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v11, v8, 0x4

    if-nez v11, :cond_c

    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v9, 0x10

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    add-int/lit8 v10, v11, 0x1

    shr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    add-int/lit8 v11, v10, 0x1

    int-to-byte v12, v9

    aput-byte v12, v6, v10

    move v10, v11

    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_d
    rem-int/lit8 v8, v8, 0x4

    const/4 p0, 0x1

    if-eq v8, p0, :cond_11

    const/4 p0, 0x2

    if-eq v8, p0, :cond_f

    const/4 p0, 0x3

    if-eq v8, p0, :cond_e

    goto :goto_a

    :cond_e
    shl-int/lit8 p0, v9, 0x6

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, v6, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, v6, v0

    goto :goto_a

    :cond_f
    shl-int/lit8 p0, v9, 0xc

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, v6, v10

    move v10, v0

    :goto_a
    if-ne v10, v5, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string p0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v6, p0}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move-object v6, v11

    :goto_b
    if-eqz v6, :cond_12

    new-instance v11, Lokio/ByteString;

    invoke-direct {v11, v6}, Lokio/ByteString;-><init>([B)V

    :cond_12
    return-object v11
.end method

.method public static b(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    const-string v0, "$this$decodeHex"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    :goto_1
    if-ge v1, v0, :cond_1

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ly1/l;->g(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ly1/l;->g(C)I

    move-result v4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_2
    const-string v0, "Unexpected hex string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lokio/ByteString;
    .locals 3

    const-string v0, "$this$encodeUtf8"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    sget-object v1, Lkotlin/text/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Lp2/n;[B)Lokio/ByteString;
    .locals 7

    array-length v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, p1

    int-to-long v1, p0

    const/4 p0, 0x0

    int-to-long v3, p0

    int-to-long v5, v0

    invoke-static/range {v1 .. v6}, Ly1/l;->z(JJJ)V

    new-instance v1, Lokio/ByteString;

    add-int/2addr v0, p0

    invoke-static {p1, p0, v0}, Lkotlin/collections/l;->M1([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static e(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 4

    const-string v0, "$this$readByteString"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    new-array v1, p1, [B

    :goto_1
    if-ge v0, p1, :cond_2

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p1}, La/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
