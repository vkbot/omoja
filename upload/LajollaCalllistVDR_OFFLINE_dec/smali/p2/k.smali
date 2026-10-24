.class public final Lp2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/m;
.implements Lp2/l;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lp2/z;

.field public b:J


# virtual methods
.method public final A()J
    .locals 14

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, v0, Lp2/z;->b:I

    iget v4, v0, Lp2/z;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    const/16 v6, 0x20

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lp2/k;->w()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    invoke-virtual {p0}, Lp2/k;->w()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v7, v0, Lp2/z;->a:[B

    aget-byte v1, v7, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v12, v5

    and-long/2addr v12, v10

    const/16 v5, 0x30

    shl-long/2addr v12, v5

    or-long/2addr v8, v12

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v7, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v8, v12

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v12, v5

    and-long/2addr v12, v10

    shl-long v5, v12, v6

    or-long/2addr v5, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v7, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v5, v12

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v7, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v5, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v7, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v5, v12

    add-int/lit8 v1, v8, 0x1

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v10

    or-long/2addr v5, v7

    iget-wide v7, p0, Lp2/k;->b:J

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lp2/k;->b:J

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v1

    iput-object v1, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lp2/z;->b:I

    :goto_0
    move-wide v0, v5

    :goto_1
    return-wide v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final B(Lokio/ByteString;)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_10

    iget-wide v1, p0, Lp2/k;->b:J

    const-wide/16 v3, 0x0

    sub-long v5, v1, v3

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-gez v5, :cond_8

    :goto_0
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v0, v0, Lp2/z;->g:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v5, v0, Lp2/z;->c:I

    iget v9, v0, Lp2/z;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long/2addr v1, v9

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v5

    invoke-virtual {p1, v6}, Lokio/ByteString;->getByte(I)B

    move-result p1

    :goto_1
    iget-wide v6, p0, Lp2/k;->b:J

    cmp-long v6, v1, v6

    if-gez v6, :cond_10

    iget v6, v0, Lp2/z;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v3

    sub-long/2addr v6, v1

    long-to-int v3, v6

    iget v4, v0, Lp2/z;->c:I

    :goto_2
    if-ge v3, v4, :cond_3

    iget-object v6, v0, Lp2/z;->a:[B

    aget-byte v6, v6, v3

    if-eq v6, v5, :cond_2

    if-ne v6, p1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget p0, v0, Lp2/z;->b:I

    goto :goto_8

    :cond_3
    iget v3, v0, Lp2/z;->c:I

    iget v4, v0, Lp2/z;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    :goto_4
    iget-wide v5, p0, Lp2/k;->b:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_10

    iget v5, v0, Lp2/z;->b:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    long-to-int v3, v5

    iget v4, v0, Lp2/z;->c:I

    :goto_5
    if-ge v3, v4, :cond_7

    iget-object v5, v0, Lp2/z;->a:[B

    aget-byte v5, v5, v3

    array-length v6, p1

    move v8, v7

    :goto_6
    if-ge v8, v6, :cond_6

    aget-byte v9, p1, v8

    if-ne v5, v9, :cond_5

    :goto_7
    iget p0, v0, Lp2/z;->b:I

    :goto_8
    sub-int/2addr v3, p0

    int-to-long p0, v3

    add-long/2addr p0, v1

    goto/16 :goto_f

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iget v3, v0, Lp2/z;->c:I

    iget v4, v0, Lp2/z;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_4

    :cond_8
    move-wide v1, v3

    :goto_9
    iget v5, v0, Lp2/z;->c:I

    iget v9, v0, Lp2/z;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v1

    cmp-long v5, v9, v3

    if-lez v5, :cond_f

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v5, v8, :cond_b

    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v5

    invoke-virtual {p1, v6}, Lokio/ByteString;->getByte(I)B

    move-result p1

    :goto_a
    iget-wide v6, p0, Lp2/k;->b:J

    cmp-long v6, v1, v6

    if-gez v6, :cond_10

    iget v6, v0, Lp2/z;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v3

    sub-long/2addr v6, v1

    long-to-int v3, v6

    iget v4, v0, Lp2/z;->c:I

    :goto_b
    if-ge v3, v4, :cond_a

    iget-object v6, v0, Lp2/z;->a:[B

    aget-byte v6, v6, v3

    if-eq v6, v5, :cond_2

    if-ne v6, p1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_a
    iget v3, v0, Lp2/z;->c:I

    iget v4, v0, Lp2/z;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    :goto_c
    iget-wide v5, p0, Lp2/k;->b:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_10

    iget v5, v0, Lp2/z;->b:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    long-to-int v3, v5

    iget v4, v0, Lp2/z;->c:I

    :goto_d
    if-ge v3, v4, :cond_e

    iget-object v5, v0, Lp2/z;->a:[B

    aget-byte v5, v5, v3

    array-length v6, p1

    move v8, v7

    :goto_e
    if-ge v8, v6, :cond_d

    aget-byte v9, p1, v8

    if-ne v5, v9, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_e
    iget v3, v0, Lp2/z;->c:I

    iget v4, v0, Lp2/z;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_c

    :cond_f
    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v9

    goto :goto_9

    :cond_10
    const-wide/16 p0, -0x1

    :goto_f
    return-wide p0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lp2/k;->m(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final D()[B
    .locals 2

    iget-wide v0, p0, Lp2/k;->b:J

    invoke-virtual {p0, v0, v1}, Lp2/k;->T(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final E([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ly1/l;->z(JJJ)V

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_0

    iget v1, v0, Lp2/z;->c:I

    iget v2, v0, Lp2/z;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Lp2/z;->b:I

    add-int v2, v1, p3

    iget-object v3, v0, Lp2/z;->a:[B

    invoke-static {p2, v1, v2, v3, p1}, Lkotlin/collections/l;->L1(III[B[B)V

    iget p1, v0, Lp2/z;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lp2/z;->b:I

    iget-wide v1, p0, Lp2/k;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lp2/k;->b:J

    iget p2, v0, Lp2/z;->c:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object p1

    iput-object p1, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public final F(J)V
    .locals 2

    iget-wide v0, p0, Lp2/k;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final G(Lp2/v;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lq2/a;->c(Lp2/k;Lp2/v;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lp2/v;->b:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lp2/k;->n(J)V

    :goto_0
    return v0
.end method

.method public final bridge synthetic H(Ljava/lang/String;)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->k0(Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic I(J)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/k;->d0(J)Lp2/k;

    return-object p0
.end method

.method public final K()Z
    .locals 4

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic L(I)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->c0(I)V

    return-object p0
.end method

.method public final M(JLokio/ByteString;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lp2/k;->b:J

    sub-long/2addr v3, p1

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lp2/k;->u(J)B

    move-result v3

    add-int v4, v2, v1

    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method

.method public final N()J
    .locals 13

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    :cond_0
    iget-object v6, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v6}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v7, v6, Lp2/z;->b:I

    iget v8, v6, Lp2/z;->c:I

    :goto_0
    if-ge v7, v8, :cond_6

    iget-object v9, v6, Lp2/z;->a:[B

    aget-byte v9, v9, v7

    const/16 v10, 0x30

    int-to-byte v10, v10

    if-lt v9, v10, :cond_1

    const/16 v11, 0x39

    int-to-byte v11, v11

    if-gt v9, v11, :cond_1

    sub-int v10, v9, v10

    goto :goto_2

    :cond_1
    const/16 v10, 0x61

    int-to-byte v10, v10

    if-lt v9, v10, :cond_2

    const/16 v11, 0x66

    int-to-byte v11, v11

    if-gt v9, v11, :cond_2

    goto :goto_1

    :cond_2
    const/16 v10, 0x41

    int-to-byte v10, v10

    if-lt v9, v10, :cond_4

    const/16 v11, 0x46

    int-to-byte v11, v11

    if-gt v9, v11, :cond_4

    :goto_1
    sub-int v10, v9, v10

    add-int/lit8 v10, v10, 0xa

    :goto_2
    const-wide/high16 v11, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v11, v4

    cmp-long v11, v11, v2

    if-nez v11, :cond_3

    const/4 v9, 0x4

    shl-long/2addr v4, v9

    int-to-long v9, v10

    or-long/2addr v4, v9

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lp2/k;

    invoke-direct {p0}, Lp2/k;-><init>()V

    invoke-virtual {p0, v4, v5}, Lp2/k;->e0(J)Lp2/k;

    invoke-virtual {p0, v9}, Lp2/k;->c0(I)V

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lp2/k;->V()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Number too large: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {v9}, Ly1/l;->E1(B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    if-ne v7, v8, :cond_7

    invoke-virtual {v6}, Lp2/z;->a()Lp2/z;

    move-result-object v7

    iput-object v7, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v6}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_4

    :cond_7
    iput v7, v6, Lp2/z;->b:I

    :goto_4
    if-nez v1, :cond_8

    iget-object v6, p0, Lp2/k;->a:Lp2/z;

    if-nez v6, :cond_0

    :cond_8
    iget-wide v1, p0, Lp2/k;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lp2/k;->b:J

    return-wide v4

    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final O(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lp2/k;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lp2/k;->U(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lp2/k;)J
    .locals 4

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1, p0, v0, v1}, Lp2/k;->write(Lp2/k;J)V

    :cond_0
    return-wide v0
.end method

.method public final Q()Lp2/i;
    .locals 2

    new-instance v0, Lp2/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp2/i;-><init>(Lp2/m;I)V

    return-object v0
.end method

.method public final R()B
    .locals 8

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, v0, Lp2/z;->b:I

    iget v2, v0, Lp2/z;->c:I

    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lp2/z;->a:[B

    aget-byte v1, v4, v1

    iget-wide v4, p0, Lp2/k;->b:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lp2/k;->b:J

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v2

    iput-object v2, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_0
    iput v3, v0, Lp2/z;->b:I

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final S(Lp2/h;)V
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lp2/h;->a:Lp2/k;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p0, p1, Lp2/h;->a:Lp2/k;

    iput-boolean v1, p1, Lp2/h;->b:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final T(J)[B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lp2/k;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lp2/k;->f([B)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final U(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-wide v1, p0, Lp2/k;->b:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_4

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, v0, Lp2/z;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lp2/z;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lp2/k;->T(J)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_2
    long-to-int v2, p1

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lp2/z;->a:[B

    invoke-direct {v3, v4, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lp2/z;->b:I

    add-int/2addr p3, v2

    iput p3, v0, Lp2/z;->b:I

    iget-wide v1, p0, Lp2/k;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lp2/k;->b:J

    iget p1, v0, Lp2/z;->c:I

    if-ne p3, p1, :cond_3

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object p1

    iput-object p1, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    :cond_3
    return-object v3

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_5
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lp2/k;->b:J

    sget-object v2, Lkotlin/text/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lp2/k;->U(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final W()I
    .locals 12

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    invoke-virtual {p0, v2, v3}, Lp2/k;->u(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    move v6, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    :goto_0
    iget-wide v7, p0, Lp2/k;->b:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_9

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    invoke-virtual {p0, v7, v8}, Lp2/k;->u(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7, v8}, Lp2/k;->n(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v9, v10}, Lp2/k;->n(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_5

    goto :goto_3

    :cond_5
    const p0, 0xd800

    if-le p0, v1, :cond_6

    goto :goto_2

    :cond_6
    const p0, 0xdfff

    if-lt p0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v1, v6, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size < "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lp2/k;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly1/l;->E1(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lp2/k;->n(J)V

    :goto_3
    return v4

    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final X(I)Lokio/ByteString;
    .locals 7

    if-nez p1, :cond_0

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Ly1/l;->z(JJJ)V

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v4, v0, Lp2/z;->c:I

    iget v5, v0, Lp2/z;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lp2/k;->a:Lp2/z;

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-object v5, p0, Lp2/z;->a:[B

    aput-object v5, v0, v4

    iget v5, p0, Lp2/z;->c:I

    iget v6, p0, Lp2/z;->b:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    iget v6, p0, Lp2/z;->b:I

    aput v6, v2, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lp2/z;->d:Z

    add-int/2addr v4, v5

    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    goto :goto_1

    :cond_3
    new-instance p0, Lokio/SegmentedByteString;

    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_2
    return-object p0
.end method

.method public final Y(I)Lp2/z;
    .locals 2

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lp2/k;->a:Lp2/z;

    if-nez v1, :cond_1

    invoke-static {}, Lp2/a0;->b()Lp2/z;

    move-result-object p1

    iput-object p1, p0, Lp2/k;->a:Lp2/z;

    iput-object p1, p1, Lp2/z;->g:Lp2/z;

    iput-object p1, p1, Lp2/z;->f:Lp2/z;

    goto :goto_2

    :cond_1
    iget-object p0, v1, Lp2/z;->g:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, p0, Lp2/z;->c:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_3

    iget-boolean p1, p0, Lp2/z;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lp2/a0;->b()Lp2/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/z;->b(Lp2/z;)V

    :goto_2
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Z(Lokio/ByteString;)V
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Lokio/ByteString;->write$okio(Lp2/k;II)V

    return-void
.end method

.method public final a()Lp2/k;
    .locals 0

    return-object p0
.end method

.method public final a0([B)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lp2/k;->b0([BII)V

    return-void
.end method

.method public final bridge synthetic b([B)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->a0([B)V

    return-object p0
.end method

.method public final b0([BII)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ly1/l;->z(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lp2/z;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lp2/z;->c:I

    add-int v3, p2, v1

    iget-object v4, v0, Lp2/z;->a:[B

    invoke-static {v2, p2, v3, p1, v4}, Lkotlin/collections/l;->L1(III[B[B)V

    iget p2, v0, Lp2/z;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lp2/z;->c:I

    move p2, v3

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lp2/k;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lp2/k;->b:J

    return-void
.end method

.method public final bridge synthetic c([BII)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lp2/k;->b0([BII)V

    return-object p0
.end method

.method public final c0(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v0

    iget v1, v0, Lp2/z;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lp2/z;->c:I

    int-to-byte p1, p1

    iget-object v0, v0, Lp2/z;->a:[B

    aput-byte p1, v0, v1

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lp2/k;->g()Lp2/k;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    iget-wide v0, p0, Lp2/k;->b:J

    invoke-virtual {p0, v0, v1}, Lp2/k;->n(J)V

    return-void
.end method

.method public final d0(J)Lp2/k;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lp2/k;->c0(I)V

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lp2/k;->k0(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/32 v4, 0x5f5e100

    cmp-long v4, p1, v4

    const/16 v5, 0xa

    if-gez v4, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v4, p1, v6

    if-gez v4, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v4, p1, v6

    if-gez v4, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v3, p1, v3

    if-gez v3, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v3, p1, v3

    if-gez v3, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v3, p1, v3

    if-gez v3, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v3, p1, v3

    if-gez v3, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    if-gez v3, :cond_b

    const/16 v3, 0x9

    goto :goto_1

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d

    const/16 v3, 0xb

    goto :goto_1

    :cond_d
    const/16 v3, 0xc

    goto :goto_1

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_f

    const/16 v3, 0xd

    goto :goto_1

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_10

    const/16 v3, 0xe

    goto :goto_1

    :cond_10
    const/16 v3, 0xf

    goto :goto_1

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    const/16 v3, 0x10

    goto :goto_1

    :cond_12
    const/16 v3, 0x11

    goto :goto_1

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_14

    const/16 v3, 0x12

    goto :goto_1

    :cond_14
    const/16 v3, 0x13

    :goto_1
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    invoke-virtual {p0, v3}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v4

    iget v6, v4, Lp2/z;->c:I

    add-int/2addr v6, v3

    :goto_2
    cmp-long v7, p1, v0

    iget-object v8, v4, Lp2/z;->a:[B

    if-eqz v7, :cond_16

    int-to-long v9, v5

    rem-long v11, p1, v9

    long-to-int v7, v11

    add-int/lit8 v6, v6, -0x1

    sget-object v11, Lq2/a;->a:[B

    aget-byte v7, v11, v7

    aput-byte v7, v8, v6

    div-long/2addr p1, v9

    goto :goto_2

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    aput-byte p1, v8, v6

    :cond_17
    iget p1, v4, Lp2/z;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Lp2/z;->c:I

    iget-wide p1, p0, Lp2/k;->b:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lp2/k;->b:J

    :goto_3
    return-object p0
.end method

.method public final bridge synthetic e(Lokio/ByteString;)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->Z(Lokio/ByteString;)V

    return-object p0
.end method

.method public final e0(J)Lp2/k;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lp2/k;->c0(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v2

    iget v3, v2, Lp2/z;->c:I

    add-int v5, v3, v1

    sub-int/2addr v5, v0

    :goto_0
    if-lt v5, v3, :cond_1

    sget-object v0, Lq2/a;->a:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v0, v0, v6

    iget-object v6, v2, Lp2/z;->a:[B

    aput-byte v0, v6, v5

    ushr-long/2addr p1, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lp2/z;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lp2/z;->c:I

    iget-wide p1, p0, Lp2/k;->b:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lp2/k;->b:J

    :goto_1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1
    instance-of v3, v1, Lp2/k;

    if-nez v3, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_2
    iget-wide v5, v0, Lp2/k;->b:J

    check-cast v1, Lp2/k;

    iget-wide v7, v1, Lp2/k;->b:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lp2/k;->a:Lp2/z;

    invoke-static {v3}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-object v1, v1, Lp2/k;->a:Lp2/z;

    invoke-static {v1}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v5, v3, Lp2/z;->b:I

    iget v6, v1, Lp2/z;->b:I

    move-wide v9, v7

    :goto_2
    iget-wide v11, v0, Lp2/k;->b:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    iget v11, v3, Lp2/z;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lp2/z;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_3
    cmp-long v15, v13, v11

    if-gez v15, :cond_6

    add-int/lit8 v15, v5, 0x1

    iget-object v2, v3, Lp2/z;->a:[B

    aget-byte v2, v2, v5

    add-int/lit8 v5, v6, 0x1

    iget-object v4, v1, Lp2/z;->a:[B

    aget-byte v4, v4, v6

    if-eq v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    move v6, v5

    move v5, v15

    goto :goto_3

    :cond_6
    iget v2, v3, Lp2/z;->c:I

    if-ne v5, v2, :cond_7

    iget-object v2, v3, Lp2/z;->f:Lp2/z;

    invoke-static {v2}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v3, v2, Lp2/z;->b:I

    move v5, v3

    move-object v3, v2

    :cond_7
    iget v2, v1, Lp2/z;->c:I

    if-ne v6, v2, :cond_8

    iget-object v1, v1, Lp2/z;->f:Lp2/z;

    invoke-static {v1}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v2, v1, Lp2/z;->b:I

    move v6, v2

    :cond_8
    add-long/2addr v9, v11

    goto :goto_2

    :goto_4
    return v2
.end method

.method public final f([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lp2/k;->E([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public final f0(I)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v0

    iget v1, v0, Lp2/z;->c:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, v0, Lp2/z;->a:[B

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    iput v1, v0, Lp2/z;->c:I

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g()Lp2/k;
    .locals 6

    new-instance v0, Lp2/k;

    invoke-direct {v0}, Lp2/k;-><init>()V

    iget-wide v1, p0, Lp2/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v1}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lp2/z;->c()Lp2/z;

    move-result-object v2

    iput-object v2, v0, Lp2/k;->a:Lp2/z;

    iput-object v2, v2, Lp2/z;->g:Lp2/z;

    iput-object v2, v2, Lp2/z;->f:Lp2/z;

    iget-object v3, v1, Lp2/z;->f:Lp2/z;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v4}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-static {v3}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lp2/z;->c()Lp2/z;

    move-result-object v5

    invoke-virtual {v4, v5}, Lp2/z;->b(Lp2/z;)V

    iget-object v3, v3, Lp2/z;->f:Lp2/z;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lp2/k;->b:J

    iput-wide v1, v0, Lp2/k;->b:J

    :goto_1
    return-object v0
.end method

.method public final g0(J)V
    .locals 10

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v1

    iget v2, v1, Lp2/z;->c:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    iget-object v5, v1, Lp2/z;->a:[B

    aput-byte v4, v5, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v8, p1, v0

    and-long/2addr v8, v6

    long-to-int v0, v8

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    add-int/lit8 v0, v3, 0x1

    and-long/2addr p1, v6

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v5, v3

    iput v0, v1, Lp2/z;->c:I

    iget-wide p1, p0, Lp2/k;->b:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lp2/k;->b:J

    return-void
.end method

.method public final h()Lp2/l;
    .locals 0

    return-object p0
.end method

.method public final h0(I)V
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v0

    iget v1, v0, Lp2/z;->c:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, v0, Lp2/z;->a:[B

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    iput v1, v0, Lp2/z;->c:I

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_0
    iget v2, v0, Lp2/z;->b:I

    iget v3, v0, Lp2/z;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lp2/z;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-object v2, p0, Lp2/k;->a:Lp2/z;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final bridge synthetic i(J)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/k;->e0(J)Lp2/k;

    return-object p0
.end method

.method public final i0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lp2/k;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lkotlin/text/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Ly1/l;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3, p1}, Lp2/k;->j0(IILjava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lp2/k;->b0([BII)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "endIndex > string.length: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "endIndex < beginIndex: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p2}, La/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j()J
    .locals 14

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const-wide/16 v4, -0x7

    move v1, v0

    move-wide v5, v4

    move-wide v3, v2

    move v2, v1

    :cond_0
    iget-object v7, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v7}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v8, v7, Lp2/z;->b:I

    iget v9, v7, Lp2/z;->c:I

    :goto_0
    if-ge v8, v9, :cond_7

    iget-object v10, v7, Lp2/z;->a:[B

    aget-byte v10, v10, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    sub-int/2addr v11, v10

    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v3, v12

    if-ltz v12, :cond_2

    if-nez v12, :cond_1

    int-to-long v12, v11

    cmp-long v12, v12, v5

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0xa

    mul-long/2addr v3, v12

    int-to-long v10, v11

    add-long/2addr v3, v10

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p0, Lp2/k;

    invoke-direct {p0}, Lp2/k;-><init>()V

    invoke-virtual {p0, v3, v4}, Lp2/k;->d0(J)Lp2/k;

    invoke-virtual {p0, v10}, Lp2/k;->c0(I)V

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lp2/k;->R()B

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lp2/k;->V()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Number too large: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v11, 0x2d

    int-to-byte v11, v11

    const/4 v12, 0x1

    if-ne v10, v11, :cond_5

    if-nez v0, :cond_5

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    move v1, v12

    :goto_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    move v2, v12

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {v10}, Ly1/l;->E1(B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    if-ne v8, v9, :cond_8

    invoke-virtual {v7}, Lp2/z;->a()Lp2/z;

    move-result-object v8

    iput-object v8, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v7}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_4

    :cond_8
    iput v8, v7, Lp2/z;->b:I

    :goto_4
    if-nez v2, :cond_9

    iget-object v7, p0, Lp2/k;->a:Lp2/z;

    if-nez v7, :cond_0

    :cond_9
    iget-wide v5, p0, Lp2/k;->b:J

    int-to-long v7, v0

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lp2/k;->b:J

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final j0(IILjava/lang/String;)V
    .locals 11

    const-string v0, "string"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p2, p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p1, p2, :cond_c

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v1}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v4

    iget v5, v4, Lp2/z;->c:I

    sub-int/2addr v5, p1

    rsub-int v6, v5, 0x2000

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    iget-object v8, v4, Lp2/z;->a:[B

    aput-byte v2, v8, p1

    :goto_4
    move p1, v7

    if-ge p1, v6, :cond_4

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    aput-byte v2, v8, p1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v5, p1

    iget v2, v4, Lp2/z;->c:I

    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    iput v2, v4, Lp2/z;->c:I

    iget-wide v2, p0, Lp2/k;->b:J

    int-to-long v4, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v5

    iget v6, v5, Lp2/z;->c:I

    shr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    iget-object v8, v5, Lp2/z;->a:[B

    aput-byte v7, v8, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v8, v7

    add-int/2addr v6, v4

    iput v6, v5, Lp2/z;->c:I

    iget-wide v2, p0, Lp2/k;->b:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    goto/16 :goto_9

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_8

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v0

    :goto_6
    const v8, 0xdbff

    if-gt v2, v8, :cond_a

    const v8, 0xdc00

    if-gt v8, v7, :cond_a

    if-ge v4, v7, :cond_9

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v7, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v6

    iget v7, v6, Lp2/z;->c:I

    shr-int/lit8 v8, v2, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    iget-object v9, v6, Lp2/z;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v8

    add-int/2addr v7, v4

    iput v7, v6, Lp2/z;->c:I

    iget-wide v2, p0, Lp2/k;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_3

    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lp2/k;->c0(I)V

    move p1, v6

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v6

    iget v7, v6, Lp2/z;->c:I

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    iget-object v9, v6, Lp2/z;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v9, v8

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v5

    add-int/2addr v7, v4

    iput v7, v6, Lp2/z;->c:I

    iget-wide v2, p0, Lp2/k;->b:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "endIndex > string.length: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "endIndex < beginIndex: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p1}, La/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()Lokio/ByteString;
    .locals 2

    iget-wide v0, p0, Lp2/k;->b:J

    invoke-virtual {p0, v0, v1}, Lp2/k;->l(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lp2/k;->j0(IILjava/lang/String;)V

    return-void
.end method

.method public final l(J)Lokio/ByteString;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-wide v0, p0, Lp2/k;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const/16 v0, 0x1000

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lp2/k;->X(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lp2/k;->n(J)V

    goto :goto_1

    :cond_1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lp2/k;->T(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l0(I)V
    .locals 10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lp2/k;->c0(I)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x800

    const/16 v3, 0x3f

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v2

    iget v4, v2, Lp2/z;->c:I

    shr-int/lit8 v5, p1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    iget-object v6, v2, Lp2/z;->a:[B

    aput-byte v5, v6, v4

    add-int/lit8 v5, v4, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v5

    add-int/2addr v4, v1

    iput v4, v2, Lp2/z;->c:I

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    goto/16 :goto_1

    :cond_1
    const v2, 0xd800

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0xdfff

    if-lt v2, p1, :cond_3

    invoke-virtual {p0, v3}, Lp2/k;->c0(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v2, 0x10000

    const/4 v4, 0x3

    if-ge p1, v2, :cond_4

    invoke-virtual {p0, v4}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v1

    iget v2, v1, Lp2/z;->c:I

    shr-int/lit8 v5, p1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    iget-object v6, v1, Lp2/z;->a:[B

    aput-byte v5, v6, v2

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    add-int/lit8 v5, v2, 0x2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v5

    add-int/2addr v2, v4

    iput v2, v1, Lp2/z;->c:I

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    goto :goto_1

    :cond_4
    const v2, 0x10ffff

    const/4 v5, 0x4

    if-gt p1, v2, :cond_5

    invoke-virtual {p0, v5}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v1

    iget v2, v1, Lp2/z;->c:I

    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    iget-object v6, v1, Lp2/z;->a:[B

    aput-byte v4, v6, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v2, 0x3

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v4

    add-int/2addr v2, v5

    iput v2, v1, Lp2/z;->c:I

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp2/k;->b:J

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: 0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const/16 v2, 0x8

    new-array v3, v2, [C

    sget-object v6, Ly1/l;->j:[C

    shr-int/lit8 v7, p1, 0x1c

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    const/4 v8, 0x0

    aput-char v7, v3, v8

    shr-int/lit8 v7, p1, 0x18

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    const/4 v9, 0x1

    aput-char v7, v3, v9

    shr-int/lit8 v7, p1, 0x14

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v3, v1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    aput-char v1, v3, v4

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    aput-char v1, v3, v5

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    const/4 v4, 0x5

    aput-char v1, v3, v4

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    const/4 v4, 0x6

    aput-char v1, v3, v4

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v6, p1

    const/4 v1, 0x7

    aput-char p1, v3, v1

    :goto_2
    if-ge v8, v2, :cond_6

    aget-char p1, v3, v8

    const/16 v1, 0x30

    if-ne p1, v1, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    rsub-int/lit8 p1, v8, 0x8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v8, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_7
    const-string v1, "0"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, p1, v3

    :goto_1
    const/16 v2, 0xa

    int-to-byte v2, v2

    const-wide/16 v7, 0x0

    move-object v5, p0

    move v6, v2

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lp2/k;->v(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    invoke-static {p0, v5, v6}, Lq2/a;->b(Lp2/k;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-wide v5, p0, Lp2/k;->b:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    sub-long v3, v0, v3

    invoke-virtual {p0, v3, v4}, Lp2/k;->u(J)B

    move-result v3

    const/16 v4, 0xd

    int-to-byte v4, v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lp2/k;->u(J)B

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-static {p0, v0, v1}, Lq2/a;->b(Lp2/k;J)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance v6, Lp2/k;

    invoke-direct {v6}, Lp2/k;-><init>()V

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lp2/k;->b:J

    const/16 v0, 0x20

    int-to-long v7, v0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lp2/k;->q(JLp2/k;J)V

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: limit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lp2/k;->b:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lp2/k;->k()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "limit < 0: "

    invoke-static {p0, p1, p2}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_1

    iget v1, v0, Lp2/z;->c:I

    iget v2, v0, Lp2/z;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lp2/k;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    sub-long/2addr p1, v4

    iget v2, v0, Lp2/z;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lp2/z;->b:I

    iget v1, v0, Lp2/z;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v1

    iput-object v1, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public final o(Lp2/k;J)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lp2/k;->b:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    invoke-virtual {p1, p0, p2, p3}, Lp2/k;->write(Lp2/k;J)V

    return-void

    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lp2/k;->write(Lp2/k;J)V

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final p()J
    .locals 5

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-object p0, p0, Lp2/z;->g:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v2, p0, Lp2/z;->c:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1

    iget-boolean v3, p0, Lp2/z;->e:Z

    if-eqz v3, :cond_1

    iget p0, p0, Lp2/z;->b:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public final q(JLp2/k;J)V
    .locals 7

    const-string v0, "out"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lp2/k;->b:J

    move-wide v3, p1

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Ly1/l;->z(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p3, Lp2/k;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p3, Lp2/k;->b:J

    iget-object p0, p0, Lp2/k;->a:Lp2/z;

    :goto_0
    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v2, p0, Lp2/z;->c:I

    iget v3, p0, Lp2/z;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    sub-long/2addr p1, v2

    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v2, p4, v0

    if-lez v2, :cond_3

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp2/z;->c()Lp2/z;

    move-result-object v2

    iget v3, v2, Lp2/z;->b:I

    long-to-int p1, p1

    add-int/2addr v3, p1

    iput v3, v2, Lp2/z;->b:I

    long-to-int p1, p4

    add-int/2addr v3, p1

    iget p1, v2, Lp2/z;->c:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Lp2/z;->c:I

    iget-object p1, p3, Lp2/k;->a:Lp2/z;

    if-nez p1, :cond_2

    iput-object v2, v2, Lp2/z;->g:Lp2/z;

    iput-object v2, v2, Lp2/z;->f:Lp2/z;

    iput-object v2, p3, Lp2/k;->a:Lp2/z;

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lp2/z;->g:Lp2/z;

    invoke-static {p1}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lp2/z;->b(Lp2/z;)V

    :goto_2
    iget p1, v2, Lp2/z;->c:I

    iget p2, v2, Lp2/z;->b:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    sub-long/2addr p4, p1

    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    move-wide p1, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public final r()Lp2/l;
    .locals 0

    return-object p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lp2/z;->c:I

    iget v3, v0, Lp2/z;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    iget-object v2, v0, Lp2/z;->a:[B

    iget v3, v0, Lp2/z;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 16
    iget p1, v0, Lp2/z;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lp2/z;->b:I

    .line 17
    iget-wide v2, p0, Lp2/k;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lp2/k;->b:J

    .line 18
    iget v2, v0, Lp2/z;->c:I

    if-ne p1, v2, :cond_0

    .line 19
    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object p1

    iput-object p1, p0, Lp2/k;->a:Lp2/z;

    .line 20
    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read(Lp2/k;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-wide v2, p0, Lp2/k;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lp2/k;->write(Lp2/k;J)V

    move-wide p0, p2

    :goto_1
    return-wide p0

    :cond_3
    const-string p0, "byteCount < 0: "

    .line 3
    invoke-static {p0, p2, p3}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final request(J)Z
    .locals 2

    iget-wide v0, p0, Lp2/k;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s()S
    .locals 8

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, v0, Lp2/z;->b:I

    iget v4, v0, Lp2/z;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lp2/z;->a:[B

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lp2/k;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lp2/k;->b:J

    if-ne v7, v4, :cond_1

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v2

    iput-object v2, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_1
    iput v7, v0, Lp2/z;->b:I

    :goto_0
    int-to-short p0, v1

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic t(I)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->h0(I)V

    return-object p0
.end method

.method public final timeout()Lp2/g0;
    .locals 0

    sget-object p0, Lp2/g0;->NONE:Lp2/g0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lp2/k;->b:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lp2/k;->X(I)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lp2/k;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u(J)B
    .locals 6

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Ly1/l;->z(JJJ)V

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lp2/k;->b:J

    sub-long v3, v1, p1

    cmp-long p0, v3, p1

    if-gez p0, :cond_1

    :goto_0
    cmp-long p0, v1, p1

    if-lez p0, :cond_0

    iget-object v0, v0, Lp2/z;->g:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget p0, v0, Lp2/z;->c:I

    iget v3, v0, Lp2/z;->b:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget p0, v0, Lp2/z;->b:I

    int-to-long v3, p0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lp2/z;->a:[B

    aget-byte p0, p1, p0

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget p0, v0, Lp2/z;->c:I

    iget v3, v0, Lp2/z;->b:I

    sub-int/2addr p0, v3

    int-to-long v4, p0

    add-long/2addr v4, v1

    cmp-long p0, v4, p1

    if-lez p0, :cond_2

    int-to-long v3, v3

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lp2/z;->a:[B

    aget-byte p0, p1, p0

    :goto_2
    return p0

    :cond_2
    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v1, v4

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    throw p0
.end method

.method public final v(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, p4, p2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_c

    iget-wide v2, p0, Lp2/k;->b:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_2

    move-wide p4, v2

    :cond_2
    cmp-long v4, p2, p4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object p0, p0, Lp2/k;->a:Lp2/z;

    if-eqz p0, :cond_b

    sub-long v7, v2, p2

    cmp-long v4, v7, p2

    if-gez v4, :cond_7

    :goto_2
    cmp-long v0, v2, p2

    if-lez v0, :cond_4

    iget-object p0, p0, Lp2/z;->g:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v0, p0, Lp2/z;->c:I

    iget v1, p0, Lp2/z;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_2

    :cond_4
    :goto_3
    cmp-long v0, v2, p4

    if-gez v0, :cond_b

    iget v0, p0, Lp2/z;->c:I

    int-to-long v0, v0

    iget v4, p0, Lp2/z;->b:I

    int-to-long v7, v4

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lp2/z;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p2

    sub-long/2addr v7, v2

    long-to-int p2, v7

    :goto_4
    if-ge p2, v0, :cond_6

    iget-object p3, p0, Lp2/z;->a:[B

    aget-byte p3, p3, p2

    if-ne p3, p1, :cond_5

    iget p0, p0, Lp2/z;->b:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v5, p0, v2

    goto :goto_8

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    iget p2, p0, Lp2/z;->c:I

    iget p3, p0, Lp2/z;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide p2, v2

    goto :goto_3

    :cond_7
    :goto_5
    iget v2, p0, Lp2/z;->c:I

    iget v3, p0, Lp2/z;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v4, v2, p2

    if-lez v4, :cond_a

    :goto_6
    cmp-long v2, v0, p4

    if-gez v2, :cond_b

    iget v2, p0, Lp2/z;->c:I

    int-to-long v2, v2

    iget v4, p0, Lp2/z;->b:I

    int-to-long v7, v4

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lp2/z;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    sub-long/2addr v3, v0

    long-to-int p2, v3

    :goto_7
    if-ge p2, v2, :cond_9

    iget-object p3, p0, Lp2/z;->a:[B

    aget-byte p3, p3, p2

    if-ne p3, p1, :cond_8

    iget p0, p0, Lp2/z;->b:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v5, p0, v0

    goto :goto_8

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    iget p2, p0, Lp2/z;->c:I

    iget p3, p0, Lp2/z;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lp2/z;->f:Lp2/z;

    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_5

    :cond_b
    :goto_8
    return-wide v5

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lp2/k;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " fromIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " toIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()I
    .locals 8

    iget-wide v0, p0, Lp2/k;->b:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v1, v0, Lp2/z;->b:I

    iget v4, v0, Lp2/z;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lp2/z;->a:[B

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    add-int/lit8 v5, v7, 0x1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lp2/k;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lp2/k;->b:J

    if-ne v7, v4, :cond_1

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v2

    iput-object v2, p0, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_0

    :cond_1
    iput v7, v0, Lp2/z;->b:I

    :goto_0
    move p0, v1

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0, v2}, Lp2/k;->Y(I)Lp2/z;

    move-result-object v2

    .line 46
    iget v3, v2, Lp2/z;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 47
    iget-object v4, v2, Lp2/z;->a:[B

    iget v5, v2, Lp2/z;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 48
    iget v4, v2, Lp2/z;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lp2/z;->c:I

    goto :goto_0

    .line 49
    :cond_0
    iget-wide v1, p0, Lp2/k;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lp2/k;->b:J

    return v0
.end method

.method public final write(Lp2/k;J)V
    .locals 10

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_f

    .line 1
    iget-wide v3, p1, Lp2/k;->b:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    .line 2
    invoke-static/range {v3 .. v8}, Ly1/l;->z(JJJ)V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_e

    .line 3
    iget-object v2, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v2}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v2, v2, Lp2/z;->c:I

    iget-object v3, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v3}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v3, v3, Lp2/z;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, p2, v2

    const/16 v3, 0x2000

    if-gez v2, :cond_7

    .line 4
    iget-object v2, p0, Lp2/k;->a:Lp2/z;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lp2/z;->g:Lp2/z;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 5
    iget-boolean v4, v2, Lp2/z;->e:Z

    if-eqz v4, :cond_3

    iget v4, v2, Lp2/z;->c:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget-boolean v6, v2, Lp2/z;->d:Z

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    iget v6, v2, Lp2/z;->b:I

    :goto_3
    int-to-long v6, v6

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 6
    iget-object v0, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v2, v1}, Lp2/z;->d(Lp2/z;I)V

    .line 7
    iget-wide v0, p1, Lp2/k;->b:J

    sub-long/2addr v0, p2

    .line 8
    iput-wide v0, p1, Lp2/k;->b:J

    .line 9
    iget-wide v0, p0, Lp2/k;->b:J

    add-long/2addr v0, p2

    .line 10
    iput-wide v0, p0, Lp2/k;->b:J

    goto/16 :goto_a

    .line 11
    :cond_3
    iget-object v2, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v2}, Ly1/l;->w(Ljava/lang/Object;)V

    long-to-int v4, p2

    if-lez v4, :cond_4

    .line 12
    iget v5, v2, Lp2/z;->c:I

    iget v6, v2, Lp2/z;->b:I

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_4

    move v5, v0

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    if-eqz v5, :cond_6

    const/16 v5, 0x400

    if-lt v4, v5, :cond_5

    .line 13
    invoke-virtual {v2}, Lp2/z;->c()Lp2/z;

    move-result-object v5

    goto :goto_5

    .line 14
    :cond_5
    invoke-static {}, Lp2/a0;->b()Lp2/z;

    move-result-object v5

    .line 15
    iget v6, v2, Lp2/z;->b:I

    add-int v7, v6, v4

    .line 16
    iget-object v8, v2, Lp2/z;->a:[B

    iget-object v9, v5, Lp2/z;->a:[B

    invoke-static {v1, v6, v7, v8, v9}, Lkotlin/collections/l;->L1(III[B[B)V

    .line 17
    :goto_5
    iget v6, v5, Lp2/z;->b:I

    add-int/2addr v6, v4

    iput v6, v5, Lp2/z;->c:I

    .line 18
    iget v6, v2, Lp2/z;->b:I

    add-int/2addr v6, v4

    iput v6, v2, Lp2/z;->b:I

    .line 19
    iget-object v2, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v2}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lp2/z;->b(Lp2/z;)V

    .line 20
    iput-object v5, p1, Lp2/k;->a:Lp2/z;

    goto :goto_6

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_7
    :goto_6
    iget-object v2, p1, Lp2/k;->a:Lp2/z;

    .line 23
    invoke-static {v2}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v4, v2, Lp2/z;->c:I

    iget v5, v2, Lp2/z;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 24
    invoke-virtual {v2}, Lp2/z;->a()Lp2/z;

    move-result-object v6

    iput-object v6, p1, Lp2/k;->a:Lp2/z;

    .line 25
    iget-object v6, p0, Lp2/k;->a:Lp2/z;

    if-nez v6, :cond_8

    .line 26
    iput-object v2, p0, Lp2/k;->a:Lp2/z;

    .line 27
    iput-object v2, v2, Lp2/z;->g:Lp2/z;

    .line 28
    iput-object v2, v2, Lp2/z;->f:Lp2/z;

    goto :goto_9

    .line 29
    :cond_8
    iget-object v6, v6, Lp2/z;->g:Lp2/z;

    .line 30
    invoke-static {v6}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Lp2/z;->b(Lp2/z;)V

    .line 31
    iget-object v6, v2, Lp2/z;->g:Lp2/z;

    if-eq v6, v2, :cond_9

    move v7, v0

    goto :goto_7

    :cond_9
    move v7, v1

    :goto_7
    if-eqz v7, :cond_d

    .line 32
    invoke-static {v6}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-boolean v6, v6, Lp2/z;->e:Z

    if-nez v6, :cond_a

    goto :goto_9

    .line 33
    :cond_a
    iget v6, v2, Lp2/z;->c:I

    iget v7, v2, Lp2/z;->b:I

    sub-int/2addr v6, v7

    .line 34
    iget-object v7, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v7}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v7, v7, Lp2/z;->c:I

    sub-int/2addr v3, v7

    iget-object v7, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v7}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-boolean v7, v7, Lp2/z;->d:Z

    if-eqz v7, :cond_b

    move v7, v1

    goto :goto_8

    :cond_b
    iget-object v7, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v7}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v7, v7, Lp2/z;->b:I

    :goto_8
    add-int/2addr v3, v7

    if-le v6, v3, :cond_c

    goto :goto_9

    .line 35
    :cond_c
    iget-object v3, v2, Lp2/z;->g:Lp2/z;

    invoke-static {v3}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v6}, Lp2/z;->d(Lp2/z;I)V

    .line 36
    invoke-virtual {v2}, Lp2/z;->a()Lp2/z;

    .line 37
    invoke-static {v2}, Lp2/a0;->a(Lp2/z;)V

    .line 38
    :goto_9
    iget-wide v2, p1, Lp2/k;->b:J

    sub-long/2addr v2, v4

    .line 39
    iput-wide v2, p1, Lp2/k;->b:J

    .line 40
    iget-wide v2, p0, Lp2/k;->b:J

    add-long/2addr v2, v4

    .line 41
    iput-wide v2, p0, Lp2/k;->b:J

    sub-long/2addr p2, v4

    goto/16 :goto_1

    .line 42
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot compact"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_a
    return-void

    .line 43
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic x(I)Lp2/l;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/k;->f0(I)V

    return-object p0
.end method

.method public final y()Lp2/y;
    .locals 1

    new-instance v0, Lp2/w;

    invoke-direct {v0, p0}, Lp2/w;-><init>(Lp2/m;)V

    invoke-static {v0}, Ly1/l;->r(Lp2/d0;)Lp2/y;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lp2/d0;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {p1, p0, v2, v3}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method
