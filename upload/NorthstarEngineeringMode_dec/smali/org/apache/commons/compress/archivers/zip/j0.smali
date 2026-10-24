.class public final Lorg/apache/commons/compress/archivers/zip/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# static fields
.field public static final b1:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public Z:[B

.field public c:Lorg/apache/commons/compress/archivers/zip/s0;

.field public r:Lorg/apache/commons/compress/archivers/zip/s0;

.field public x:Lorg/apache/commons/compress/archivers/zip/s0;

.field public y:Lorg/apache/commons/compress/archivers/zip/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/j0;->g()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/j0;->h([B)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x8

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object p0

    const/4 v2, 0x4

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lh4/d;->a:[B

    return-object p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/j0;->h([B)I

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(II[B)V
    .locals 2

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    const/4 v1, 0x0

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/j0;->f(II[B)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 p2, p1, 0x8

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v0, p3, p2}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 p1, p1, 0x10

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, p2, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b1;

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    invoke-direct {v0, p3, p1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(II[B)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-lt p2, v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v0, p3, p1}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 v0, p1, 0x8

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v1, p3, v0}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p2, -0x10

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v1, p3, v0}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 v0, p1, 0x18

    add-int/lit8 v1, p2, -0x18

    :cond_1
    const/4 p1, 0x4

    if-lt v1, p1, :cond_2

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {p1, p3, v0}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 5

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v1, v2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_3

    const/4 v3, 0x4

    :cond_3
    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final h([B)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method
