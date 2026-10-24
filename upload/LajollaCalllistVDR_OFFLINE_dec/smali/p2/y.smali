.class public final Lp2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/m;


# instance fields
.field public final a:Lp2/k;

.field public b:Z

.field public final c:Lp2/d0;


# direct methods
.method public constructor <init>(Lp2/d0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/y;->c:Lp2/d0;

    new-instance p1, Lp2/k;

    invoke-direct {p1}, Lp2/k;-><init>()V

    iput-object p1, p0, Lp2/y;->a:Lp2/k;

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lp2/y;->m(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final D()[B
    .locals 1

    iget-object v0, p0, Lp2/y;->c:Lp2/d0;

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0, v0}, Lp2/k;->z(Lp2/d0;)J

    invoke-virtual {p0}, Lp2/k;->D()[B

    move-result-object p0

    return-object p0
.end method

.method public final F(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/y;->request(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final G(Lp2/v;)I
    .locals 7

    const-string v0, "options"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lp2/y;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    invoke-static {v0, p1, v1}, Lq2/a;->c(Lp2/k;Lp2/v;Z)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    iget-object p0, p1, Lp2/v;->b:[Lokio/ByteString;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lp2/k;->n(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    goto :goto_1

    :cond_2
    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v5, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {v5, v0, v2, v3}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K()Z
    .locals 6

    iget-boolean v0, p0, Lp2/y;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {v0}, Lp2/k;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0, v0, v2, v3}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M(JLokio/ByteString;)Z
    .locals 6

    const-string p1, "bytes"

    invoke-static {p3, p1}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result p1

    iget-boolean p2, p0, Lp2/y;->b:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    if-ltz p1, :cond_3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_4

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lp2/y;->request(J)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {v4, v2, v3}, Lp2/k;->u(J)B

    move-result v2

    add-int v3, p2, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v0, p2

    :cond_4
    return v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lp2/y;->request(J)Z

    move-result v2

    iget-object v3, p0, Lp2/y;->a:Lp2/k;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lp2/k;->u(J)B

    move-result v2

    const/16 v4, 0x30

    int-to-byte v4, v4

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Ly1/l;->A(I)V

    invoke-static {v0}, Ly1/l;->A(I)V

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v0, v1}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lp2/k;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp2/y;->c:Lp2/d0;

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0, v0}, Lp2/k;->z(Lp2/d0;)J

    invoke-virtual {p0, p1}, Lp2/k;->O(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lp2/k;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    const/16 v4, 0x2000

    int-to-long v4, v4

    iget-object v6, p0, Lp2/y;->c:Lp2/d0;

    iget-object v7, p0, Lp2/y;->a:Lp2/k;

    invoke-interface {v6, v7, v4, v5}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lp2/k;->p()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lp2/k;->write(Lp2/k;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lp2/k;->b:J

    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lp2/k;->write(Lp2/k;J)V

    :cond_2
    return-wide v2
.end method

.method public final Q()Lp2/i;
    .locals 2

    new-instance v0, Lp2/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lp2/i;-><init>(Lp2/m;I)V

    return-object v0
.end method

.method public final R()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->R()B

    move-result p0

    return p0
.end method

.method public final a()Lp2/k;
    .locals 0

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lp2/y;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/y;->b:Z

    iget-object v0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->d()V

    :goto_0
    return-void
.end method

.method public final d(BJJ)J
    .locals 10

    iget-boolean p2, p0, Lp2/y;->b:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    :goto_1
    cmp-long p2, v0, p4

    const-wide/16 v8, -0x1

    if-gez p2, :cond_3

    iget-object v2, p0, Lp2/y;->a:Lp2/k;

    move v3, p1

    move-wide v4, v0

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lp2/k;->v(BJJ)J

    move-result-wide p2

    cmp-long v2, p2, v8

    if-eqz v2, :cond_1

    move-wide v8, p2

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lp2/y;->a:Lp2/k;

    iget-wide v2, p2, Lp2/k;->b:J

    cmp-long p3, v2, p4

    if-gez p3, :cond_3

    const/16 p3, 0x2000

    int-to-long v4, p3

    iget-object p3, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p3, p2, v4, v5}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide p2

    cmp-long p2, p2, v8

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    :goto_2
    return-wide v8

    :cond_4
    const-string p0, "fromIndex=0 toIndex="

    invoke-static {p0, p4, p5}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f([B)V
    .locals 6

    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    :try_start_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lp2/y;->F(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lp2/k;->f([B)V

    return-void

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    :goto_0
    iget-wide v2, v0, Lp2/k;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lp2/k;->E([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    throw p0
.end method

.method public final g()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->w()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lp2/y;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j()J
    .locals 11

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    invoke-virtual {p0, v6, v7}, Lp2/y;->request(J)Z

    move-result v8

    iget-object v9, p0, Lp2/y;->a:Lp2/k;

    if-eqz v8, :cond_4

    invoke-virtual {v9, v4, v5}, Lp2/k;->u(J)B

    move-result v8

    const/16 v10, 0x30

    int-to-byte v10, v10

    if-lt v8, v10, :cond_0

    const/16 v10, 0x39

    int-to-byte v10, v10

    if-le v8, v10, :cond_1

    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const/16 v5, 0x2d

    int-to-byte v5, v5

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Ly1/l;->A(I)V

    invoke-static {v0}, Ly1/l;->A(I)V

    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v0, v1}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v9}, Lp2/k;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lp2/y;->c:Lp2/d0;

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0, v0}, Lp2/k;->z(Lp2/d0;)J

    invoke-virtual {p0}, Lp2/k;->k()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final l(J)Lokio/ByteString;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0, p1, p2}, Lp2/k;->l(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final m(J)Ljava/lang/String;
    .locals 22

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_1

    move-wide v13, v9

    goto :goto_1

    :cond_1
    add-long v0, v7, v11

    move-wide v13, v0

    :goto_1
    const/16 v0, 0xa

    int-to-byte v15, v0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lp2/y;->d(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object v3, v6, Lp2/y;->a:Lp2/k;

    if-eqz v2, :cond_2

    invoke-static {v3, v0, v1}, Lq2/a;->b(Lp2/k;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    cmp-long v0, v13, v9

    if-gez v0, :cond_3

    invoke-virtual {v6, v13, v14}, Lp2/y;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-long v0, v13, v11

    invoke-virtual {v3, v0, v1}, Lp2/k;->u(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    add-long/2addr v11, v13

    invoke-virtual {v6, v11, v12}, Lp2/y;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v13, v14}, Lp2/k;->u(J)B

    move-result v0

    if-ne v0, v15, :cond_3

    invoke-static {v3, v13, v14}, Lq2/a;->b(Lp2/k;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lp2/k;

    invoke-direct {v0}, Lp2/k;-><init>()V

    const-wide/16 v17, 0x0

    iget-wide v1, v3, Lp2/k;->b:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-object/from16 v16, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Lp2/k;->q(JLp2/k;J)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\\n not found: limit="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v3, Lp2/k;->b:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lp2/k;->k()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "limit < 0: "

    invoke-static {v0, v7, v8}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final n(J)V
    .locals 5

    iget-boolean v0, p0, Lp2/y;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lp2/y;->a:Lp2/k;

    iget-wide v3, v2, Lp2/k;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    iget-object v3, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {v3, v2, v0, v1}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-wide v0, v2, Lp2/k;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lp2/k;->n(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Lp2/k;J)V
    .locals 2

    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    const-string v1, "sink"

    invoke-static {p1, v1}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lp2/y;->F(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Lp2/k;->o(Lp2/k;J)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, v0}, Lp2/k;->z(Lp2/d0;)J

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    iget-wide v1, v0, Lp2/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 2
    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0, v0, v1, v2}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lp2/k;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final read(Lp2/k;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 4
    iget-boolean v2, p0, Lp2/y;->b:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lp2/y;->a:Lp2/k;

    iget-wide v3, v2, Lp2/k;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    .line 6
    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0, v2, v0, v1}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, v2, Lp2/k;->b:J

    .line 8
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lp2/k;->read(Lp2/k;J)J

    move-result-wide v3

    :goto_1
    return-wide v3

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "byteCount < 0: "

    .line 11
    invoke-static {p0, p2, p3}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final request(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lp2/y;->b:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    iget-wide v3, v0, Lp2/k;->b:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    const/16 v3, 0x2000

    int-to-long v3, v3

    iget-object v5, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {v5, v0, v3, v4}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p1, p2}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->s()S

    move-result p0

    return p0
.end method

.method public final timeout()Lp2/g0;
    .locals 0

    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0}, Lp2/d0;->timeout()Lp2/g0;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lp2/y;->F(J)V

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    invoke-virtual {p0}, Lp2/k;->w()I

    move-result p0

    return p0
.end method

.method public final y()Lp2/y;
    .locals 1

    new-instance v0, Lp2/w;

    invoke-direct {v0, p0}, Lp2/w;-><init>(Lp2/m;)V

    invoke-static {v0}, Ly1/l;->r(Lp2/d0;)Lp2/y;

    move-result-object p0

    return-object p0
.end method
