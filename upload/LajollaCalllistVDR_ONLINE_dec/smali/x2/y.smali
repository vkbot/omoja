.class public final Lx2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m;


# instance fields
.field public final b:Lx2/k;

.field public c:Z

.field public final d:Lx2/d0;


# direct methods
.method public constructor <init>(Lx2/d0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/y;->d:Lx2/d0;

    new-instance p1, Lx2/k;

    invoke-direct {p1}, Lx2/k;-><init>()V

    iput-object p1, p0, Lx2/y;->b:Lx2/k;

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 6

    iget-boolean v0, p0, Lx2/y;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v4, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v4, v0, v2, v3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F(JLokio/ByteString;)Z
    .locals 6

    const-string p1, "bytes"

    invoke-static {p3, p1}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result p1

    iget-boolean p2, p0, Lx2/y;->c:Z

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

    invoke-virtual {p0, v4, v5}, Lx2/y;->request(J)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v4, v2, v3}, Lx2/k;->O(J)B

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
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lx2/y;->request(J)Z

    move-result v2

    iget-object v3, p0, Lx2/y;->b:Lx2/k;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lx2/k;->O(J)B

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
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/material/slider/h;->A(I)V

    invoke-static {v1}, Lcom/google/android/material/slider/h;->A(I)V

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lx2/k;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx2/y;->d:Lx2/d0;

    iget-object v1, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v1, v0}, Lx2/k;->I(Lx2/d0;)J

    invoke-virtual {v1, p1}, Lx2/k;->H(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final J()I
    .locals 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->s()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final K()Lx2/i;
    .locals 2

    new-instance v0, Lx2/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lx2/i;-><init>(Lx2/m;I)V

    return-object v0
.end method

.method public final L()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->L()B

    move-result v0

    return v0
.end method

.method public final a()Lx2/k;
    .locals 1

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lx2/y;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx2/y;->c:Z

    iget-object v0, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->z()V

    :goto_0
    return-void
.end method

.method public final d(Lx2/k;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    const/16 v4, 0x2000

    int-to-long v4, v4

    iget-object v6, p0, Lx2/y;->d:Lx2/d0;

    iget-object v7, p0, Lx2/y;->b:Lx2/k;

    invoke-interface {v6, v7, v4, v5}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lx2/k;->M()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lx2/k;->write(Lx2/k;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lx2/k;->c:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lx2/k;->write(Lx2/k;J)V

    :cond_2
    return-wide v2
.end method

.method public final f([B)V
    .locals 7

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    :try_start_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lx2/y;->y(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lx2/k;->f([B)V

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :goto_0
    iget-wide v3, v0, Lx2/k;->c:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    invoke-virtual {v0, p1, v2, v3}, Lx2/k;->R([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    throw v1
.end method

.method public final i(Lx2/v;)I
    .locals 7

    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx2/y;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-static {v0, p1, v1}, Ly2/a;->c(Lx2/k;Lx2/v;Z)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    iget-object p1, p1, Lx2/v;->c:[Lokio/ByteString;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lx2/k;->n(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    goto :goto_1

    :cond_2
    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v5, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v5, v0, v2, v3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lx2/y;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 11

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    invoke-virtual {p0, v6, v7}, Lx2/y;->request(J)Z

    move-result v8

    iget-object v9, p0, Lx2/y;->b:Lx2/k;

    if-eqz v8, :cond_4

    invoke-virtual {v9, v4, v5}, Lx2/k;->O(J)B

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
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/material/slider/h;->A(I)V

    invoke-static {v1}, Lcom/google/android/material/slider/h;->A(I)V

    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v9}, Lx2/k;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Lokio/ByteString;
    .locals 2

    iget-object v0, p0, Lx2/y;->d:Lx2/d0;

    iget-object v1, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v1, v0}, Lx2/k;->I(Lx2/d0;)J

    invoke-virtual {v1}, Lx2/k;->k()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final l(J)Lokio/ByteString;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0, p1, p2}, Lx2/k;->l(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
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

    invoke-virtual/range {v0 .. v5}, Lx2/y;->z(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object v3, v6, Lx2/y;->b:Lx2/k;

    if-eqz v2, :cond_2

    invoke-static {v3, v0, v1}, Ly2/a;->b(Lx2/k;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    cmp-long v0, v13, v9

    if-gez v0, :cond_3

    invoke-virtual {v6, v13, v14}, Lx2/y;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-long v0, v13, v11

    invoke-virtual {v3, v0, v1}, Lx2/k;->O(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    add-long/2addr v11, v13

    invoke-virtual {v6, v11, v12}, Lx2/y;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v13, v14}, Lx2/k;->O(J)B

    move-result v0

    if-ne v0, v15, :cond_3

    invoke-static {v3, v13, v14}, Ly2/a;->b(Lx2/k;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lx2/k;

    invoke-direct {v0}, Lx2/k;-><init>()V

    const-wide/16 v17, 0x0

    iget-wide v1, v3, Lx2/k;->c:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-object/from16 v16, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Lx2/k;->N(JLx2/k;J)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\\n not found: limit="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v3, Lx2/k;->c:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lx2/k;->k()Lokio/ByteString;

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

    invoke-static {v0, v7, v8}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final n(J)V
    .locals 5

    iget-boolean v0, p0, Lx2/y;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lx2/y;->b:Lx2/k;

    iget-wide v3, v2, Lx2/k;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    iget-object v3, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v3, v2, v0, v1}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-wide v0, v2, Lx2/k;->c:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lx2/k;->n(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->p()S

    move-result v0

    return v0
.end method

.method public final r(Lx2/k;J)V
    .locals 2

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    const-string v1, "sink"

    invoke-static {p1, v1}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lx2/y;->y(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Lx2/k;->r(Lx2/k;J)V

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p1, v0}, Lx2/k;->I(Lx2/d0;)J

    throw p2
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    iget-wide v1, v0, Lx2/k;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 2
    iget-object v3, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v3, v0, v1, v2}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lx2/k;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Lx2/k;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-boolean v2, p0, Lx2/y;->c:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lx2/y;->b:Lx2/k;

    iget-wide v3, v2, Lx2/k;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    .line 6
    iget-object v3, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v3, v2, v0, v1}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, v2, Lx2/k;->c:J

    .line 8
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lx2/k;->read(Lx2/k;J)J

    move-result-wide v3

    :goto_1
    return-wide v3

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 11
    invoke-static {p1, p2, p3}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
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

    iget-boolean v0, p0, Lx2/y;->c:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    iget-wide v3, v0, Lx2/k;->c:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    const/16 v3, 0x2000

    int-to-long v3, v3

    iget-object v5, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v5, v0, v3, v4}, Lx2/d0;->read(Lx2/k;J)J

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
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "byteCount < 0: "

    invoke-static {v0, p1, p2}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final s()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->s()I

    move-result v0

    return v0
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    iget-object v0, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {v0}, Lx2/d0;->timeout()Lx2/g0;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx2/y;->d:Lx2/d0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lx2/y;
    .locals 1

    new-instance v0, Lx2/w;

    invoke-direct {v0, p0}, Lx2/w;-><init>(Lx2/m;)V

    invoke-static {v0}, Lcom/google/android/material/slider/h;->r(Lx2/d0;)Lx2/y;

    move-result-object v0

    return-object v0
.end method

.method public final v()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lx2/y;->y(J)V

    iget-object v0, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lx2/y;->m(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()[B
    .locals 2

    iget-object v0, p0, Lx2/y;->d:Lx2/d0;

    iget-object v1, p0, Lx2/y;->b:Lx2/k;

    invoke-virtual {v1, v0}, Lx2/k;->I(Lx2/d0;)J

    invoke-virtual {v1}, Lx2/k;->x()[B

    move-result-object v0

    return-object v0
.end method

.method public final y(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx2/y;->request(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final z(BJJ)J
    .locals 10

    iget-boolean p2, p0, Lx2/y;->c:Z

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

    iget-object v2, p0, Lx2/y;->b:Lx2/k;

    move v3, p1

    move-wide v4, v0

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lx2/k;->P(BJJ)J

    move-result-wide p2

    cmp-long v2, p2, v8

    if-eqz v2, :cond_1

    move-wide v8, p2

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lx2/y;->b:Lx2/k;

    iget-wide v2, p2, Lx2/k;->c:J

    cmp-long p3, v2, p4

    if-gez p3, :cond_3

    const/16 p3, 0x2000

    int-to-long v4, p3

    iget-object p3, p0, Lx2/y;->d:Lx2/d0;

    invoke-interface {p3, p2, v4, v5}, Lx2/d0;->read(Lx2/k;J)J

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
    const-string p1, "fromIndex=0 toIndex="

    invoke-static {p1, p4, p5}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
