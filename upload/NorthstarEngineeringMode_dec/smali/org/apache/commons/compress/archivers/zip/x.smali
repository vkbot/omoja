.class public final Lorg/apache/commons/compress/archivers/zip/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# static fields
.field public static final x:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public c:[B

.field public r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const v1, 0xacc1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/x;->x:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/x;->r:[B

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/x;->c:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/x;->c:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/x;->x:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/x;->c:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final e(II[B)V
    .locals 1

    add-int v0, p1, p2

    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/x;->r:[B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/x;->c:[B

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/x;->f(II[B)V

    :cond_0
    return-void
.end method

.method public final f(II[B)V
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/x;->c:[B

    return-void
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/x;->r:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/x;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    :goto_0
    return-object p0
.end method
