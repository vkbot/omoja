.class public final Lorg/apache/commons/compress/archivers/zip/f0;
.super Lorg/apache/commons/compress/archivers/zip/p;
.source "SourceFile"


# static fields
.field public static final Z:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/f0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public static i(Ljava/lang/String;III)V
    .locals 3

    add-int v0, p2, p1

    if-gt v0, p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid X0017_StrongEncryptionHeader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t fit into "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " bytes of data at position "

    invoke-static {v1, p3, p0, p2}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final e(II[B)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/p;->e(II[B)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    const/4 v0, 0x2

    invoke-static {p1, v0, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v1, p1, 0x2

    invoke-static {v1, v0, p3}, Lh4/d;->a(II[B)J

    move-result-wide v1

    long-to-int v1, v1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/p$a;->r:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/p$a;

    add-int/lit8 v1, p1, 0x4

    invoke-static {v1, v0, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v1, p1, 0x6

    invoke-static {v1, v0, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x4

    invoke-static {v1, v2, p3}, Lh4/d;->a(II[B)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/lit8 p2, p1, 0xc

    invoke-static {p2, v0, p3}, Lh4/d;->a(II[B)J

    move-result-wide v1

    long-to-int p2, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/p$b;->r:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/p$b;

    add-int/lit8 p1, p1, 0xe

    invoke-static {p1, v0, p3}, Lh4/d;->a(II[B)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    :cond_0
    return-void
.end method

.method public final f(II[B)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/p;->f(II[B)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    const/4 v1, 0x2

    invoke-static {p1, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "ivSize"

    invoke-static {v3, v2, v0, p2}, Lorg/apache/commons/compress/archivers/zip/f0;->i(Ljava/lang/String;III)V

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    invoke-static {p3, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/lit8 v3, v2, 0x10

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/2addr p1, v2

    add-int/lit8 v4, p1, 0x6

    invoke-static {v4, v1, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v4, p1, 0x8

    invoke-static {v4, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v4

    long-to-int v4, v4

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/p$a;->r:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/p$a;

    add-int/lit8 v4, p1, 0xa

    invoke-static {v4, v1, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v4, p1, 0xc

    invoke-static {v4, v1, p3}, Lh4/d;->a(II[B)J

    add-int/lit8 v4, p1, 0xe

    invoke-static {v4, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "erdSize"

    invoke-static {v5, v4, v3, p2}, Lorg/apache/commons/compress/archivers/zip/f0;->i(Ljava/lang/String;III)V

    add-int/lit8 v3, p1, 0x10

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    invoke-static {p3, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/lit8 v5, v2, 0x14

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/2addr v3, v4

    invoke-static {v3, v0, p3}, Lh4/d;->a(II[B)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    const-string v6, " is too small to hold CRC"

    const-string v7, "Invalid X0017_StrongEncryptionHeader: vSize "

    const-string/jumbo v8, "vSize"

    if-nez v3, :cond_1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/lit8 v3, p1, 0x14

    add-int/2addr v3, v4

    invoke-static {v3, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v1, v9

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v4

    invoke-static {v8, v1, v2, p2}, Lorg/apache/commons/compress/archivers/zip/f0;->i(Ljava/lang/String;III)V

    if-lt v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x16

    add-int/2addr p1, v4

    add-int/lit8 p2, v1, -0x4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    invoke-static {v7, v1, v6}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v5, v5, 0x6

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/lit8 v3, p1, 0x14

    add-int/2addr v3, v4

    invoke-static {v3, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v3, v9

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/p$b;->r:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/p$b;

    add-int/lit8 v3, p1, 0x16

    add-int/2addr v3, v4

    invoke-static {v3, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v5, v9

    iput v5, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    add-int/lit8 v5, p1, 0x18

    add-int/2addr v5, v4

    invoke-static {v5, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    if-lt v9, v10, :cond_3

    add-int/lit8 v10, v2, 0x18

    add-int/2addr v10, v4

    const-string/jumbo v11, "resize"

    invoke-static {v11, v9, v10, p2}, Lorg/apache/commons/compress/archivers/zip/f0;->i(Ljava/lang/String;III)V

    iget v10, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    invoke-static {p3, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    iget v10, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    add-int/2addr v5, v10

    sub-int v10, v9, v10

    invoke-static {p3, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/lit8 v5, v2, 0x1a

    add-int/2addr v5, v4

    add-int/2addr v5, v9

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    add-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, v4

    add-int/2addr p1, v9

    invoke-static {p1, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide p0

    long-to-int p0, p0

    if-lt p0, v0, :cond_2

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v4

    add-int/2addr v2, v9

    invoke-static {v8, p0, v2, p2}, Lorg/apache/commons/compress/archivers/zip/f0;->i(Ljava/lang/String;III)V

    add-int/2addr v3, v9

    add-int/lit8 p1, p0, -0x4

    invoke-static {p3, v3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/2addr v3, p0

    sub-int/2addr v3, v0

    invoke-static {p3, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    invoke-static {v7, p0, v6}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "Invalid X0017_StrongEncryptionHeader: resize "

    const-string p3, " is too small to hold hashSize"

    invoke-static {p2, v9, p3}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/f0;->y:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
