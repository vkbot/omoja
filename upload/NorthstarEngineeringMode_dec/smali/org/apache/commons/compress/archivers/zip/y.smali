.class public final Lorg/apache/commons/compress/archivers/zip/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# instance fields
.field public c:Lorg/apache/commons/compress/archivers/zip/d1;

.field public r:[B

.field public x:[B


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/y;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final e(II[B)V
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    :cond_0
    return-void
.end method

.method public final f(II[B)V
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    return-void
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/y;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    return-object p0
.end method
