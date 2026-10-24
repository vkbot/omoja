.class public abstract Lorg/apache/commons/compress/archivers/zip/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# instance fields
.field public c:J

.field public r:[B

.field public x:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/a;->c:J

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->r:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->h()V

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    if-eqz p0, :cond_1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->g()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    return-object p0
.end method

.method public final d()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method public final e(II[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a;->f(II[B)V

    return-void
.end method

.method public final f(II[B)V
    .locals 3

    const/4 v0, 0x5

    if-lt p2, v0, :cond_1

    aget-byte v1, p3, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x4

    invoke-static {v1, v2, p3}, Lh4/d;->a(II[B)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->c:J

    sub-int/2addr p2, v0

    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->r:[B

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p3, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    return-void

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Unsupported version ["

    const-string p2, "] for UniCode path extra data."

    invoke-static {p1, v1, p2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "UniCode path extra data must have at least 5 bytes."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->h()V

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->r:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->c:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->r:[B

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->x:[B

    array-length v3, v0

    invoke-static {v0, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
