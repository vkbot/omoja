.class public abstract Lorg/apache/commons/compress/archivers/zip/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/p$b;,
        Lorg/apache/commons/compress/archivers/zip/p$a;
    }
.end annotation


# instance fields
.field public final c:Lorg/apache/commons/compress/archivers/zip/d1;

.field public r:[B

.field public x:[B


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->x:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

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

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/p;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e(II[B)V
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/p;->x:[B

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

    :cond_0
    return-void
.end method

.method public f(II[B)V
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->r:[B

    return-void
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->x:[B

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/p;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    return-object p0
.end method

.method public final h(II)V
    .locals 2

    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is too short, only "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes, expected at least "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
