.class public final Lorg/apache/commons/compress/archivers/zip/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# static fields
.field public static final y:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public c:S

.field public r:Z

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const v1, 0xa11e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r;->y:Lorg/apache/commons/compress/archivers/zip/d1;

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

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->c:S

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    if-eqz p0, :cond_0

    const p0, 0x8000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/r;->x:I

    add-int/lit8 p0, p0, 0x2

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/r;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->x:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/zip/r;->c:S

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const p0, 0x8000

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    or-int/2addr p0, v1

    invoke-static {p0, v2, v0}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    return-object v0
.end method

.method public final e(II[B)V
    .locals 1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    invoke-static {p1, v0, p3}, Lh4/d;->a(II[B)J

    move-result-wide p1

    long-to-int p1, p1

    and-int/lit16 p2, p1, 0x7fff

    int-to-short p2, p2

    iput-short p2, p0, Lorg/apache/commons/compress/archivers/zip/r;->c:S

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    return-void

    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    invoke-static {p1, p2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(II[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/r;->e(II[B)V

    add-int/lit8 p2, p2, -0x2

    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/r;->x:I

    return-void
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object p0
.end method
