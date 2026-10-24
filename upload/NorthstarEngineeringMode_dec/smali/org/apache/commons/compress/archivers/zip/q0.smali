.class public final Lorg/apache/commons/compress/archivers/zip/q0;
.super Lorg/apache/commons/compress/archivers/b;
.source "SourceFile"

# interfaces
.implements Lh4/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/q0$b;,
        Lorg/apache/commons/compress/archivers/zip/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/archivers/b<",
        "Lorg/apache/commons/compress/archivers/zip/o0;",
        ">;",
        "Lh4/f;"
    }
.end annotation


# static fields
.field public static final p1:[B

.field public static final q1:[B

.field public static final r1:[B

.field public static final s1:[B

.field public static final t1:Ljava/math/BigInteger;


# instance fields
.field public final Z:Ljava/util/zip/Inflater;

.field public final b1:Ljava/nio/ByteBuffer;

.field public c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

.field public d1:Z

.field public e1:Z

.field public f1:Ljava/io/ByteArrayInputStream;

.field public final g1:Z

.field public h1:J

.field public final i1:Z

.field public final j1:[B

.field public final k1:[B

.field public final l1:[B

.field public final m1:[B

.field public final n1:[B

.field public o1:I

.field public final x:Lorg/apache/commons/compress/archivers/zip/o;

.field public final y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x4034b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->p1:[B

    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->q1:[B

    const-wide/32 v0, 0x8074b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->r1:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->s1:[B

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->t1:Ljava/math/BigInteger;

    return-void

    :array_0
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/commons/compress/archivers/zip/q0;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/b;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    const/16 v0, 0x200

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->k1:[B

    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->l1:[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->m1:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->n1:[B

    .line 6
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 7
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    .line 8
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/o;

    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 10
    :try_start_0
    sget v2, Li4/a;->a:I

    .line 11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez p2, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :goto_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 14
    :try_start_1
    sget v3, Li4/a;->a:I

    .line 15
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    if-nez p2, :cond_1

    move-object v2, v3

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    .line 17
    :catch_1
    :goto_1
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/u0;->c(Ljava/lang/String;)Z

    move-result p2

    .line 19
    invoke-direct {p1, v1, p2}, Lorg/apache/commons/compress/archivers/zip/o;-><init>(Ljava/nio/charset/Charset;Z)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->x:Lorg/apache/commons/compress/archivers/zip/o;

    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/q0;->y:Z

    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/q0;->g1:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->i1:Z

    .line 20
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    return-wide v0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/q0;->e()J

    move-result-wide v0

    return-wide v0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lh4/f;

    invoke-interface {p0}, Lh4/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->h1:J

    return-wide v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->d1:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->d1:Z

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    sub-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v4, v2

    if-gez v2, :cond_4

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Truncated ZIP entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    :goto_1
    array-length p0, p0

    if-le p0, v3, :cond_1

    const/16 p0, 0xfc

    const/16 v4, 0x2e

    invoke-static {v2, p0, v3, v4}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v2

    :goto_2
    if-ge v7, v3, :cond_3

    aget-char v4, v2, v7

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    sub-long/2addr v0, v4

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final e()J
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    add-long v2, v0, v4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v6, v6, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final i()Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 17

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->h1:J

    iget-boolean v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->d1:Z

    const/4 v4, 0x0

    if-nez v0, :cond_2b

    iget-boolean v5, v1, Lorg/apache/commons/compress/archivers/zip/q0;->e1:Z

    if-eqz v5, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x8

    if-eqz v5, :cond_8

    if-nez v0, :cond_7

    iget-wide v11, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    iget-object v0, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gtz v0, :cond_1

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->d()V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v8, v9}, Lorg/apache/commons/compress/archivers/zip/q0;->skip(J)J

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->e()J

    move-result-wide v11

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v11, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    :goto_1
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v13, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    sub-long/2addr v13, v11

    long-to-int v0, v13

    if-lez v0, :cond_4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v12

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12, v0, v11}, Lorg/apache/commons/compress/archivers/zip/q0;->j(II[B)V

    iget-object v11, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    int-to-long v12, v0

    iget-wide v14, v11, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    sub-long/2addr v14, v12

    iput-wide v14, v11, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    :cond_4
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v11, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gtz v0, :cond_5

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->d()V

    :cond_5
    :goto_2
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->f1:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->l()V

    :cond_6
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iput-object v4, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iput-object v4, v1, Lorg/apache/commons/compress/archivers/zip/q0;->f1:Ljava/io/ByteArrayInputStream;

    move v0, v7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v6

    :goto_3
    iget-wide v11, v1, Lorg/apache/commons/compress/archivers/b;->r:J

    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->n()Z

    move-result v0

    if-nez v0, :cond_a

    iput-boolean v6, v1, Lorg/apache/commons/compress/archivers/zip/q0;->e1:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->r()V

    goto/16 :goto_11

    :cond_9
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    invoke-virtual {v1, v0, v7}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_a
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/4 v5, 0x4

    invoke-static {v7, v5, v0}, Lh4/d;->a(II[B)J

    move-result-wide v13

    const-wide/32 v15, 0x4034b50

    cmp-long v0, v13, v15

    if-nez v0, :cond_24

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/q0$b;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/q0$b;-><init>()V

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/4 v8, 0x2

    invoke-static {v5, v8, v0}, Lh4/d;->a(II[B)J

    move-result-wide v13

    long-to-int v0, v13

    iget-object v9, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v9, v9, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    shr-int/2addr v0, v10

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setPlatform(I)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/4 v9, 0x6

    invoke-static {v0, v9}, Lorg/apache/commons/compress/archivers/zip/l;->b([BI)Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v0

    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    if-eqz v13, :cond_b

    sget-object v14, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    goto :goto_4

    :cond_b
    iget-object v14, v1, Lorg/apache/commons/compress/archivers/zip/q0;->x:Lorg/apache/commons/compress/archivers/zip/o;

    :goto_4
    iget-object v15, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v7, v0, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    iput-boolean v7, v15, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    iget-object v7, v15, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v7, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/l;)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    invoke-static {v10, v8, v7}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v7, v9

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/zip/o0;->setMethod(I)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v7, 0xa

    invoke-static {v7, v5, v0}, Lh4/d;->a(II[B)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/compress/archivers/zip/g1;->d(J)J

    move-result-wide v9

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v7, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-nez v7, :cond_c

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v9, 0xe

    invoke-static {v9, v5, v7}, Lh4/d;->a(II[B)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v7, 0x12

    invoke-direct {v0, v5, v7}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v9, 0x16

    invoke-direct {v5, v7, v9}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    goto :goto_5

    :cond_c
    move-object v0, v4

    move-object v5, v0

    :goto_5
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v9, 0x1a

    invoke-static {v9, v8, v7}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v7, v9

    iget-object v9, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v10, 0x1c

    invoke-static {v10, v8, v9}, Lh4/d;->a(II[B)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v1, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v9, v7}, Lh4/e;->b(Ljava/io/InputStream;I)[B

    move-result-object v9

    array-length v10, v9

    int-to-long v2, v10

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    array-length v2, v9

    if-lt v2, v7, :cond_23

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v14, v9}, Lorg/apache/commons/compress/archivers/zip/o;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;[B)V

    if-eqz v13, :cond_d

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/o0$d;->r:Lorg/apache/commons/compress/archivers/zip/o0$d;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setNameSource(Lorg/apache/commons/compress/archivers/zip/o0$d;)V

    :cond_d
    iget-object v2, v1, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v2, v8}, Lh4/e;->b(Ljava/io/InputStream;I)[B

    move-result-object v2

    array-length v3, v2

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    array-length v3, v2

    if-lt v3, v8, :cond_22

    :try_start_1
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra([B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v13, :cond_e

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->y:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v2, v9, v4}, Lorg/apache/commons/compress/archivers/zip/g1;->h(Lorg/apache/commons/compress/archivers/zip/o0;[B[B)V

    :cond_e
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v2

    if-eqz v2, :cond_10

    instance-of v3, v2, Lorg/apache/commons/compress/archivers/zip/j0;

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive contains unparseable zip64 extra field"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_6
    check-cast v2, Lorg/apache/commons/compress/archivers/zip/j0;

    iget-object v3, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    if-eqz v2, :cond_11

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    :goto_7
    iput-boolean v7, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->c:Z

    iget-boolean v4, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-nez v4, :cond_1b

    const-string v4, "broken archive, entry with negative size"

    const-string v6, "broken archive, entry with negative compressed size"

    if-eqz v2, :cond_18

    instance-of v7, v0, Lorg/apache/commons/compress/archivers/zip/b1;

    const-wide v8, 0xffffffffL

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    iget-wide v13, v0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v7, v8, v13

    if-nez v7, :cond_13

    goto :goto_9

    :cond_13
    :goto_8
    instance-of v7, v5, Lorg/apache/commons/compress/archivers/zip/b1;

    if-nez v7, :cond_14

    goto :goto_a

    :cond_14
    iget-wide v13, v5, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v7, v8, v13

    if-nez v7, :cond_18

    :goto_9
    iget-object v0, v2, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v0, :cond_17

    iget-object v3, v2, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v3, :cond_17

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-ltz v0, :cond_16

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v7, v8}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-object v0, v2, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_15

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive contains corrupted zip64 extra field"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    if-eqz v0, :cond_1b

    if-eqz v5, :cond_1b

    iget-wide v7, v0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-ltz v0, :cond_1a

    iget-object v0, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v7, v8}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-wide v2, v5, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v0, v2, v9

    if-ltz v0, :cond_19

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    goto :goto_b

    :cond_19
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/compress/archivers/zip/o0;->setLocalHeaderOffset(J)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-wide v2, v1, Lorg/apache/commons/compress/archivers/b;->r:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setDataOffset(J)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setStreamContiguous(Z)V

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/c1;->a(I)Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/g1;->a(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->x:Lorg/apache/commons/compress/archivers/zip/c1;

    if-eq v0, v2, :cond_21

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/q0$a;

    iget-object v3, v1, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/q0$a;-><init>(Lorg/apache/commons/compress/archivers/zip/q0;Ljava/io/InputStream;J)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1d

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1c

    goto :goto_c

    :cond_1c
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    new-instance v3, Lf4/a;

    invoke-direct {v3, v2}, Lf4/a;-><init>(Ljava/io/FilterInputStream;)V

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    goto :goto_c

    :cond_1d
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    new-instance v3, Lg4/a;

    invoke-direct {v3, v2}, Lg4/a;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    goto :goto_c

    :cond_1e
    :try_start_2
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/e;

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v4

    iget v4, v4, Lorg/apache/commons/compress/archivers/zip/l;->Z:I

    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v5

    iget v5, v5, Lorg/apache/commons/compress/archivers/zip/l;->b1:I

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/e;-><init>(Ljava/io/FilterInputStream;II)V

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "bad IMPLODE data"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1f
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/z;

    invoke-direct {v3, v2}, Lorg/apache/commons/compress/archivers/zip/z;-><init>(Ljava/io/FilterInputStream;)V

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    goto :goto_c

    :cond_20
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->y:Lorg/apache/commons/compress/archivers/zip/c1;

    if-ne v0, v2, :cond_21

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    new-instance v2, Lg4/a;

    iget-object v3, v1, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lg4/a;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    :cond_21
    :goto_c
    iget v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->o1:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->o1:I

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    goto/16 :goto_11

    :catch_1
    move-exception v0

    new-instance v2, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid extra data in entry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_22
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_23
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_24
    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v13, v2

    if-nez v0, :cond_25

    :goto_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_25
    const-wide/32 v2, 0x8064b50

    cmp-long v0, v13, v2

    if-nez v0, :cond_26

    goto :goto_d

    :cond_26
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v3

    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x8

    int-to-long v5, v2

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/q0;->s1:[B

    array-length v7, v2

    int-to-long v11, v7

    sub-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    array-length v5, v2

    new-array v6, v5, [B

    :try_start_3
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_27

    array-length v7, v0

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v7, v10, :cond_2a

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v0, v7, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v3, v5, :cond_29

    invoke-virtual {v1, v6, v3}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    goto :goto_f

    :cond_27
    :goto_e
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/q0;->t1:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_28

    invoke-virtual {v1, v8, v9}, Lorg/apache/commons/compress/archivers/zip/q0;->q(J)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_e

    :cond_28
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/compress/archivers/zip/q0;->q(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_29
    :goto_f
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_d

    :goto_10
    iput-boolean v0, v1, Lorg/apache/commons/compress/archivers/zip/q0;->e1:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->r()V

    goto :goto_11

    :catch_2
    :cond_2a
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unexpected record signature: 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    :cond_2b
    :goto_11
    return-object v4
.end method

.method public final j(II[B)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p3, p1, p2}, Ljava/io/PushbackInputStream;->unread([BII)V

    int-to-long p1, p2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->r:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->r:J

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Negative offset %,d into buffer"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()V
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->m1:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    const-wide/32 v3, 0x8074b50

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->n1:[B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lh4/d;->a(II[B)J

    move-result-wide v4

    const-wide/32 v6, 0x2014b50    # 1.6619997E-316

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    const-string v7, "broken archive, entry with negative size"

    const-string v8, "broken archive, entry with negative compressed size"

    const-wide/16 v9, 0x0

    if-nez v6, :cond_5

    const-wide/32 v11, 0x4034b50

    cmp-long v4, v4, v11

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-ltz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1, v3, v4}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-ltz v2, :cond_3

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    invoke-direct {p0, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/zip/ZipException;

    invoke-direct {p0, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {p0, v2, v2, v0}, Lorg/apache/commons/compress/archivers/zip/q0;->j(II[B)V

    invoke-static {v1, v3, v0}, Lh4/d;->a(II[B)J

    move-result-wide v1

    cmp-long v4, v1, v9

    if-ltz v4, :cond_7

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-static {v3, v3, v0}, Lh4/d;->a(II[B)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-ltz v2, :cond_6

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    :goto_2
    return-void

    :cond_6
    new-instance p0, Ljava/util/zip/ZipException;

    invoke-direct {p0, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/util/zip/ZipException;

    invoke-direct {p0, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()Z
    .locals 15

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->j1:[B

    const/16 v1, 0x1e

    const/16 v2, 0x16

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    move v4, v3

    :goto_0
    move v5, v3

    :goto_1
    const/16 v6, 0xffc

    if-gt v4, v6, :cond_e

    add-int/lit8 v7, v1, -0x4

    if-gt v5, v7, :cond_e

    const/4 v6, 0x4

    :try_start_0
    invoke-static {v5, v6, v2}, Lh4/d;->a(II[B)J

    move-result-wide v7

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/b1;->r:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-wide v9, v9, Lorg/apache/commons/compress/archivers/zip/b1;->c:J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v9, v7, v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_2

    :cond_0
    move v9, v3

    :goto_2
    sget-object v11, Lorg/apache/commons/compress/archivers/zip/b1;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    sget-object v12, Lorg/apache/commons/compress/archivers/zip/b1;->x:Lorg/apache/commons/compress/archivers/zip/b1;

    if-nez v9, :cond_6

    :try_start_1
    iget-wide v13, v11, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v9, v7, v13

    if-nez v9, :cond_1

    move v9, v10

    goto :goto_3

    :cond_1
    move v9, v3

    :goto_3
    if-nez v9, :cond_6

    iget-wide v13, v12, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v9, v7, v13

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_4

    :cond_2
    move v9, v3

    :goto_4
    if-eqz v9, :cond_3

    goto :goto_6

    :cond_3
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/b1;

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/r0;->EOCD_SIG:[B

    invoke-direct {v6, v9, v3}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iget-wide v11, v6, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v6, v7, v11

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    move v10, v3

    :goto_5
    if-eqz v10, :cond_5

    sub-int/2addr v1, v5

    invoke-virtual {p0, v5, v1, v2}, Lorg/apache/commons/compress/archivers/zip/q0;->j(II[B)V

    return v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_6
    sub-int v4, v1, v5

    invoke-static {v2, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v3, v6, v0}, Lh4/d;->a(II[B)J

    move-result-wide v1

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/q0;->i1:Z

    if-nez v4, :cond_9

    iget-wide v4, v12, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_7

    move v4, v10

    goto :goto_7

    :cond_7
    move v4, v3

    :goto_7
    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/a0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->Z:Lorg/apache/commons/compress/archivers/zip/a0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " used in archive."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_8
    iget-wide v4, v11, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_a

    move v4, v10

    goto :goto_9

    :cond_a
    move v4, v3

    :goto_9
    if-nez v4, :cond_c

    iget-wide v4, v12, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_b

    move v1, v10

    goto :goto_a

    :cond_b
    move v1, v3

    :goto_a
    if-eqz v1, :cond_d

    :cond_c
    array-length v1, v0

    sub-int/2addr v1, v6

    invoke-static {v0, v6, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    sub-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    :cond_d
    return v10

    :cond_e
    if-ge v4, v6, :cond_f

    add-int/lit8 v5, v1, -0x3

    const/4 v6, 0x3

    :try_start_2
    invoke-static {v2, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "Cannot find zip signature within the first 4096 bytes"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "Cannot find zip signature within the file"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o([BI)V
    .locals 5

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-ltz v0, :cond_5

    if-ltz p2, :cond_5

    add-int v2, v0, p2

    array-length v3, p1

    if-gt v2, v3, :cond_5

    if-ltz v2, :cond_5

    sget-object v2, Li4/c;->a:[B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_4

    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    sub-int v3, v0, v2

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    sub-int p1, v0, v2

    :goto_2
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    if-lt p1, v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length must not be negative: "

    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final p()I
    .locals 3

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    :cond_0
    return v0
.end method

.method public final q(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    sub-long v2, p1, v0

    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/q0;->k1:[B

    array-length v6, v5

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v5

    int-to-long v2, v2

    :goto_1
    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final r()V
    .locals 7

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->o1:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x2e

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->q(J)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/q0;->p()I

    move-result v3

    if-le v3, v1, :cond_5

    :cond_1
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/r0;->EOCD_SIG:[B

    aget-byte v4, v2, v0

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/q0;->p()I

    move-result v3

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    if-eq v3, v5, :cond_2

    if-eq v3, v1, :cond_5

    aget-byte v2, v2, v0

    if-ne v3, v2, :cond_6

    :goto_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/q0;->p()I

    move-result v3

    const/4 v5, 0x2

    aget-byte v6, v2, v5

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_5

    aget-byte v2, v2, v0

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/q0;->p()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    if-ne v3, v6, :cond_4

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/q0;->q(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q0;->l1:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/q0;->o([BI)V

    invoke-static {v0, v5, v1}, Lh4/d;->a(II[B)J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_5

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/q0;->q(J)V

    return-void

    :cond_4
    aget-byte v2, v2, v0

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Truncated ZIP file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v2, v0

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-boolean v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->d1:Z

    const-string v6, "The stream is closed"

    if-nez v5, :cond_2c

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    const/4 v7, -0x1

    if-nez v5, :cond_1

    return v7

    :cond_1
    array-length v8, v1

    if-gt v2, v8, :cond_2b

    if-ltz v3, :cond_2b

    if-ltz v2, :cond_2b

    array-length v8, v1

    sub-int/2addr v8, v2

    if-lt v8, v3, :cond_2b

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/g1;->b(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v8

    iget-boolean v8, v8, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    const/16 v9, 0x9

    const/16 v10, 0x8

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lorg/apache/commons/compress/archivers/zip/q0;->g1:Z

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v8

    if-eq v8, v10, :cond_4

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v5

    sget-object v8, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    if-ne v5, v9, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/a0;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/a0$a;->y:Lorg/apache/commons/compress/archivers/zip/a0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/a0$a;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v1

    :cond_4
    :goto_0
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v8, v11, v13

    if-nez v8, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v8

    if-eq v8, v10, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v8

    sget-object v11, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    if-eq v8, v9, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v8

    iget-boolean v8, v8, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lorg/apache/commons/compress/archivers/zip/q0;->g1:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/a0;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/a0$a;->b1:Lorg/apache/commons/compress/archivers/zip/a0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/a0$a;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v1

    :cond_6
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v5

    const/4 v8, 0x1

    const/16 v11, 0xc

    const-string v12, "Truncated ZIP file"

    if-nez v5, :cond_1c

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v6, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->b:Z

    if-eqz v6, :cond_17

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->f1:Ljava/io/ByteArrayInputStream;

    if-nez v5, :cond_16

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-boolean v6, v6, Lorg/apache/commons/compress/archivers/zip/q0$b;->c:Z

    if-eqz v6, :cond_7

    const/16 v11, 0x14

    :cond_7
    move v6, v4

    move v7, v6

    :goto_2
    if-nez v6, :cond_13

    iget-object v9, v0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v10, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    rsub-int v13, v7, 0x200

    invoke-virtual {v9, v10, v7, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_12

    add-int/2addr v9, v7

    const/4 v10, 0x4

    if-ge v9, v10, :cond_8

    move v7, v9

    goto :goto_2

    :cond_8
    move v6, v4

    move v10, v6

    :goto_3
    if-nez v6, :cond_f

    add-int/lit8 v14, v9, -0x4

    if-ge v10, v14, :cond_f

    iget-object v14, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    aget-byte v15, v15, v10

    sget-object v16, Lorg/apache/commons/compress/archivers/zip/q0;->p1:[B

    aget-byte v13, v16, v4

    if-ne v15, v13, :cond_d

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    add-int/lit8 v15, v10, 0x1

    aget-byte v13, v13, v15

    aget-byte v15, v16, v8

    if-ne v13, v15, :cond_d

    const/4 v13, 0x2

    if-lt v10, v11, :cond_a

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    add-int/lit8 v17, v10, 0x2

    aget-byte v15, v15, v17

    aget-byte v8, v16, v13

    if-ne v15, v8, :cond_a

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    add-int/lit8 v15, v10, 0x3

    aget-byte v8, v8, v15

    const/4 v15, 0x3

    aget-byte v4, v16, v15

    if-eq v8, v4, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v16, v7

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v8, v10, 0x2

    aget-byte v4, v4, v8

    sget-object v15, Lorg/apache/commons/compress/archivers/zip/q0;->q1:[B

    move/from16 v16, v7

    aget-byte v7, v15, v13

    if-ne v4, v7, :cond_b

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v7, v10, 0x3

    aget-byte v4, v4, v7

    const/4 v7, 0x3

    aget-byte v15, v15, v7

    if-ne v4, v15, :cond_b

    :goto_5
    sub-int v4, v10, v11

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    aget-byte v4, v4, v8

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/q0;->r1:[B

    aget-byte v8, v7, v13

    if-ne v4, v8, :cond_c

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v8, v10, 0x3

    aget-byte v4, v4, v8

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    if-ne v4, v7, :cond_c

    move v4, v10

    goto :goto_6

    :cond_c
    move v4, v10

    :goto_7
    if-eqz v6, :cond_e

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    sub-int v8, v9, v4

    invoke-virtual {v0, v4, v8, v7}, Lorg/apache/commons/compress/archivers/zip/q0;->j(II[B)V

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/q0;->l()V

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    :cond_e
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_f
    move/from16 v16, v7

    if-nez v6, :cond_11

    sub-int v4, v9, v11

    const/4 v7, 0x3

    sub-int/2addr v4, v7

    if-lez v4, :cond_10

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    add-int/lit8 v10, v11, 0x3

    invoke-static {v8, v4, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v10

    goto :goto_9

    :cond_10
    move v7, v9

    goto :goto_9

    :cond_11
    move/from16 v7, v16

    :goto_9
    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_15

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    int-to-long v5, v5

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v7, v7, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_14

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->f1:Ljava/io/ByteArrayInputStream;

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "actual and claimed size don\'t match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See https://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "compressed and uncompressed size don\'t match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See https://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->f1:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v7

    goto/16 :goto_11

    :cond_17
    iget-object v4, v5, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v8, v6, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    cmp-long v6, v8, v4

    if-ltz v6, :cond_18

    goto/16 :goto_11

    :cond_18
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v6

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-lt v6, v8, :cond_1a

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, v0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v7, :cond_19

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v9, v8, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    add-long/2addr v9, v6

    iput-wide v9, v8, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    goto :goto_b

    :cond_19
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_b
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-wide v6, v6, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-gez v6, :cond_1b

    long-to-int v3, v4

    :cond_1b
    move v7, v3

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1, v2, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    int-to-long v4, v7

    iget-wide v8, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    add-long/2addr v8, v4

    iput-wide v8, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->d:J

    goto/16 :goto_11

    :cond_1c
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v4

    if-ne v4, v10, :cond_27

    const/4 v8, 0x0

    :cond_1d
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-boolean v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->d1:Z

    if-nez v4, :cond_20

    iget-object v4, v0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1e

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    int-to-long v9, v5

    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v10}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_c

    :cond_1e
    const/4 v11, 0x0

    :goto_c
    if-lez v4, :cond_1f

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/q0;->b1:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    int-to-long v8, v5

    iget-wide v13, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    add-long/2addr v13, v8

    iput-wide v13, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    goto :goto_d

    :cond_1f
    if-ne v4, v7, :cond_22

    move v8, v7

    goto :goto_e

    :cond_20
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v11, 0x0

    :goto_d
    :try_start_0
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v8
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_22

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_22
    :goto_e
    if-gtz v8, :cond_26

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_23

    goto/16 :goto_11

    :cond_23
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0;->Z:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-nez v3, :cond_25

    if-eq v8, v7, :cond_24

    goto :goto_f

    :cond_24
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "This archive needs a preset dictionary which is not supported by Commons Compress."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_f
    move v7, v8

    goto :goto_11

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_27
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v4

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_29

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v4

    if-eq v4, v9, :cond_29

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v4

    if-ne v4, v11, :cond_28

    goto :goto_10

    :cond_28
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/a0;

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/c1;->a(I)Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/c1;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v1

    :cond_29
    :goto_10
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/q0$b;->g:Ljava/io/InputStream;

    invoke-virtual {v4, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    :goto_11
    if-ltz v7, :cond_2a

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/zip/q0$b;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v1, v2, v7}, Ljava/util/zip/CRC32;->update([BII)V

    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/q0;->h1:J

    int-to-long v3, v7

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/q0;->h1:J

    :cond_2a
    return v7

    :cond_2b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skip(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    sub-long v2, p1, v0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/q0;->k1:[B

    array-length v5, v4

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v4

    int-to-long v2, v2

    :goto_1
    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/commons/compress/archivers/zip/q0;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-wide v0

    :cond_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-wide v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
