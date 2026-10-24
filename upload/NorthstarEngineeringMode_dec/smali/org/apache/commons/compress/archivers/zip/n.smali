.class public final Lorg/apache/commons/compress/archivers/zip/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# static fields
.field public static final c:Lorg/apache/commons/compress/archivers/zip/d1;

.field public static final r:Lorg/apache/commons/compress/archivers/zip/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/n;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/n;->r:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 0

    sget-object p0, Lh4/d;->a:[B

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/n;->r:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/n;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 0

    sget-object p0, Lh4/d;->a:[B

    return-object p0
.end method

.method public final e(II[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/n;->f(II[B)V

    return-void
.end method

.method public final f(II[B)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "JarMarker doesn\'t expect any data"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/n;->r:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method
