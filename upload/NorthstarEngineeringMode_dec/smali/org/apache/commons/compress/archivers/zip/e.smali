.class public final Lorg/apache/commons/compress/archivers/zip/e;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lh4/f;


# instance fields
.field public final Z:I

.field public b1:Lz1/d;

.field public final c:Ljava/io/InputStream;

.field public c1:Lz1/d;

.field public d1:Lz1/d;

.field public final e1:Lorg/apache/commons/compress/archivers/zip/d;

.field public f1:J

.field public g1:J

.field public r:Lorg/apache/commons/compress/archivers/zip/c;

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Ljava/io/FilterInputStream;II)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/d;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->e1:Lorg/apache/commons/compress/archivers/zip/d;

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2000

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dictionary size must be 4096 or 8192"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of trees must be 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/e;->x:I

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/e;->y:I

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/e;->Z:I

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/e;->c:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    iget-object v0, v0, Lh4/a;->c:Ln4/d;

    invoke-virtual {v0}, Ln4/d;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->g1:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->f1:J

    return-wide v0
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    if-nez v0, :cond_1

    new-instance v0, Ln4/d;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/e;->c:Ljava/io/InputStream;

    invoke-static {v1}, Ln4/b;->d(Ljava/io/InputStream;)Ln4/b;

    move-result-object v2

    invoke-direct {v0, v2}, Ln4/d;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->y:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/16 v2, 0x100

    invoke-static {v0, v2}, Lz1/d;->b(Ln4/d;I)Lz1/d;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->b1:Lz1/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v2, 0x40

    invoke-static {v0, v2}, Lz1/d;->b(Ln4/d;I)Lz1/d;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/e;->c1:Lz1/d;

    invoke-static {v0, v2}, Lz1/d;->b(Ln4/d;I)Lz1/d;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->d1:Lz1/d;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->g1:J

    invoke-virtual {v0}, Ln4/d;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->g1:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ln4/e;->close()V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/c;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lh4/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ln4/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_1
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh4/a;->a(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    const v3, 0x8000

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/e;->e1:Lorg/apache/commons/compress/archivers/zip/d;

    const/16 v5, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->b1:Lz1/d;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {v0, p0}, Lz1/d;->c(Lorg/apache/commons/compress/archivers/zip/c;)I

    move-result p0

    goto :goto_4

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {p0, v5}, Lh4/a;->a(I)J

    move-result-wide v5

    long-to-int p0, v5

    :goto_4
    if-ne p0, v2, :cond_4

    return-void

    :cond_4
    iget v0, v4, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    int-to-byte p0, p0

    iget-object v2, v4, Lorg/apache/commons/compress/archivers/zip/d;->a:[B

    aput-byte p0, v2, v0

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    iput v0, v4, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->x:I

    const/16 v6, 0x1000

    if-ne v0, v6, :cond_6

    const/4 v0, 0x6

    goto :goto_5

    :cond_6
    const/4 v0, 0x7

    :goto_5
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {v6, v0}, Lorg/apache/commons/compress/archivers/zip/c;->c(I)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/e;->d1:Lz1/d;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {v7, v8}, Lz1/d;->c(Lorg/apache/commons/compress/archivers/zip/c;)I

    move-result v7

    if-ne v7, v2, :cond_7

    if-gtz v6, :cond_7

    return-void

    :cond_7
    shl-int v0, v7, v0

    or-int/2addr v0, v6

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/e;->c1:Lz1/d;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {v2, v6}, Lz1/d;->c(Lorg/apache/commons/compress/archivers/zip/c;)I

    move-result v2

    const/16 v6, 0x3f

    if-ne v2, v6, :cond_9

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/e;->r:Lorg/apache/commons/compress/archivers/zip/c;

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/zip/c;->c(I)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_8

    return-void

    :cond_8
    invoke-static {v2, v5, v6}, Ld/f;->c(IJ)I

    move-result v2

    :cond_9
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/e;->Z:I

    add-int/2addr v2, p0

    add-int/2addr v0, v1

    iget p0, v4, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :goto_6
    if-ge p0, v2, :cond_a

    iget v0, v4, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    add-int v5, p0, v3

    rem-int/2addr v5, v3

    iget-object v6, v4, Lorg/apache/commons/compress/archivers/zip/d;->a:[B

    aget-byte v5, v6, v5

    aput-byte v5, v6, v0

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    iput v0, v4, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/e;->c:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e;->e1:Lorg/apache/commons/compress/archivers/zip/d;

    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/d;->b:I

    iget v2, v0, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/e;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/d;->b:I

    iget v2, v0, Lorg/apache/commons/compress/archivers/zip/d;->c:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/d;->a:[B

    aget-byte v2, v2, v1

    add-int/2addr v1, v3

    const v3, 0x8000

    rem-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/compress/archivers/zip/d;->b:I

    and-int/lit16 v0, v2, 0xff

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-le v0, v4, :cond_3

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/e;->f1:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/e;->f1:J

    :cond_3
    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad IMPLODE stream"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
