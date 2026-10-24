.class public final Lorg/apache/commons/compress/archivers/zip/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final Z:Lorg/apache/commons/compress/archivers/zip/d1;

.field public static final b1:Ljava/math/BigInteger;

.field public static final y:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public c:I

.field public r:Ljava/math/BigInteger;

.field public x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x7875

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i0;->b1:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/i0;->b1:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    return-void
.end method

.method public static h([B)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v3, p0, v1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v0, p0

    sub-int/2addr v0, v2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [B

    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int v3, v0, v3

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final a()[B
    .locals 0

    sget-object p0, Lh4/d;->a:[B

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/i0;->h([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/i0;->h([B)[B

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p0

    :goto_1
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object p0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/i0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()[B
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/i0;->h([B)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/i0;->h([B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/lit8 v5, v3, 0x3

    add-int v6, v5, v4

    new-array v6, v6, [B

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->g([B)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/g1;->g([B)V

    :cond_3
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->j(I)B

    move-result p0

    aput-byte p0, v6, v2

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/g1;->j(I)B

    move-result p0

    const/4 v7, 0x1

    aput-byte p0, v6, v7

    const/4 p0, 0x2

    if-eqz v0, :cond_4

    invoke-static {v0, v2, v6, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr p0, v3

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/g1;->j(I)B

    move-result v0

    aput-byte v0, v6, p0

    if-eqz v1, :cond_5

    invoke-static {v1, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v6
.end method

.method public final e(II[B)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/i0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/i0;

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    iget v2, p1, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(II[B)V
    .locals 6

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/i0;->b1:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    const/4 v0, 0x3

    const-string v1, " bytes"

    if-lt p2, v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p3, p1

    sget v3, Lorg/apache/commons/compress/archivers/zip/g1;->b:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 v2, v2, 0x100

    :goto_0
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v0, v0, 0x100

    :goto_1
    add-int/lit8 v2, v0, 0x3

    const-string v3, " doesn\'t fit into "

    if-gt v2, p2, :cond_4

    add-int/2addr v0, p1

    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->g([B)V

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p3, v0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit16 v0, v0, 0x100

    :goto_2
    add-int/2addr v2, v0

    if-gt v2, p2, :cond_3

    add-int/2addr v0, p1

    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance p2, Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->g([B)V

    invoke-direct {p2, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    return-void

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "X7875_NewUnix invalid: gidSize "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "X7875_NewUnix invalid: uidSize "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "X7875_NewUnix length is too short, only "

    invoke-static {p1, p2, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/i0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    const v0, -0x12d687

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/i0;->c:I

    mul-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x7875 Zip Extra Field: UID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/i0;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " GID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/i0;->x:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
