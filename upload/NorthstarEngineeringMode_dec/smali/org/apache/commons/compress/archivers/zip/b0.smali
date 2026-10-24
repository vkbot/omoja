.class public final Lorg/apache/commons/compress/archivers/zip/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;


# static fields
.field public static final Z:Lorg/apache/commons/compress/archivers/zip/d1;

.field public static final b1:Lorg/apache/commons/compress/archivers/zip/d1;

.field public static final y:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public c:Lorg/apache/commons/compress/archivers/zip/s0;

.field public r:Lorg/apache/commons/compress/archivers/zip/s0;

.field public x:Lorg/apache/commons/compress/archivers/zip/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    return-void
.end method

.method public static h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/s0;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    sget v1, Ll4/a;->b:I

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-wide v3, Ll4/a;->a:J

    mul-long/2addr v1, v3

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    int-to-long v3, p0

    add-long/2addr v1, v3

    const-wide v3, -0x19db1ded53e8000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    return-object v0
.end method

.method public static i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;
    .locals 6

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/s0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sget p0, Ll4/a;->b:I

    const-wide v2, -0x19db1ded53e8000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    sget-wide v2, Ll4/a;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b0;->d()[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 1

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object p0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/b0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final d()[B
    .locals 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/b0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/b0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final e(II[B)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b0;->f(II[B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/b0;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(II[B)V
    .locals 3

    add-int/2addr p2, p1

    add-int/lit8 p1, p1, 0x4

    :goto_0
    add-int/lit8 v0, p1, 0x4

    if-gt v0, p2, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {v0, p3, p1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>([BI)V

    add-int/lit8 v1, p1, 0x2

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/b0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/d1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p2, v1

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>([BI)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/zip/d1;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x4

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v0, p3, p2}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 p2, p1, 0xc

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {v0, p3, p2}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 p1, p1, 0x14

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p1, p3, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>([BI)V

    iget p1, p1, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b0;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    const/16 v1, -0x7b

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    const/16 v2, 0xb

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v0, 0x16

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x000A Zip Extra Field: Modify:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]  Access:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]  Create:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
