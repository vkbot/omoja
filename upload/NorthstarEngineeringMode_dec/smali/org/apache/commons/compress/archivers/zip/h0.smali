.class public final Lorg/apache/commons/compress/archivers/zip/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final d1:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public Z:Lorg/apache/commons/compress/archivers/zip/b1;

.field public b1:Lorg/apache/commons/compress/archivers/zip/b1;

.field public c:B

.field public c1:Lorg/apache/commons/compress/archivers/zip/b1;

.field public r:Z

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x5455

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/h0;->d1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/b1;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lh4/j;->a:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>(J)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "X5455 timestamps must fit in a signed 32 bit integer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Lorg/apache/commons/compress/archivers/zip/b1;)Ljava/util/Date;
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int p0, v1

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/h0;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/h0;->g()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 5

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v1, v4

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    if-eqz v4, :cond_2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/h0;->d1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()[B
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/h0;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x5

    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v2, :cond_1

    aget-byte v5, v0, v1

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x4

    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_2

    aget-byte v2, v0, v1

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object p0

    invoke-static {p0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v0
.end method

.method public final e(II[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/h0;->i(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/h0;->f(II[B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/h0;

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    and-int/lit8 v0, v0, 0x7

    iget-byte v2, p1, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    and-int/lit8 v2, v2, 0x7

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(II[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/h0;->i(B)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    const/4 v1, 0x1

    if-lt p2, v1, :cond_3

    add-int/2addr p2, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p3, p1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/h0;->i(B)V

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, 0x5

    if-gt p1, p2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {v2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    move v1, p1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    :goto_0
    iget-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    if-eqz p1, :cond_1

    add-int/lit8 p1, v1, 0x4

    if-gt p1, p2, :cond_1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {v2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    move v1, p1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    :goto_1
    iget-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    if-eqz p1, :cond_2

    add-int/lit8 p1, v1, 0x4

    if-gt p1, p2, :cond_2

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-direct {p1, p3, v1}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "X5455_ExtendedTimestamp too short, only "

    const-string p3, " bytes"

    invoke-static {p1, p2, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    and-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, -0x7b

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int v1, v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_2

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int p0, v1

    const/16 v1, 0x16

    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public final i(B)V
    .locals 4

    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x5455 Zip Extra Field: Flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/g1;->j(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    const-string v2, "] "

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/h0;->j(Lorg/apache/commons/compress/archivers/zip/b1;)Ljava/util/Date;

    move-result-object v1

    const-string v3, " Modify:["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/h0;->j(Lorg/apache/commons/compress/archivers/zip/b1;)Ljava/util/Date;

    move-result-object v1

    const-string v3, " Access:["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/h0;->j(Lorg/apache/commons/compress/archivers/zip/b1;)Ljava/util/Date;

    move-result-object p0

    const-string v1, " Create:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
