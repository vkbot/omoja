.class public abstract Lorg/apache/commons/compress/archivers/zip/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x210000

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/g1;->d(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/g1;->a:J

    return-void
.end method

.method public static a(Lorg/apache/commons/compress/archivers/zip/o0;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->i(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->i(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/c1;->a(I)Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/a0$a;->x:Lorg/apache/commons/compress/archivers/zip/a0$a;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/a0$a;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/a0;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/c1;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/a0$a;->r:Lorg/apache/commons/compress/archivers/zip/a0$a;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/a0$a;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw v0
.end method

.method public static c([B)[B
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(J)J
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x15

    shr-long v3, p0, v1

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v1, v3

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x10

    shr-long v3, p0, v1

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    shr-long v4, p0, v1

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    shr-long v3, p0, v3

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    shl-long/2addr p0, v2

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x3e

    const/16 p1, 0xd

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Lorg/apache/commons/compress/archivers/zip/a;[B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/a;->c:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    :try_start_0
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->r:[B

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static f(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    const/16 v0, 0x7bc

    if-ge p1, v0, :cond_0

    const-wide/32 p0, 0x210000

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x19

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    shl-int/lit8 v0, v0, 0xb

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static g([B)V
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    sub-int v3, v0, v1

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h(Lorg/apache/commons/compress/archivers/zip/o0;[B[B)V
    .locals 3

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/v;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/v;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/g1;->e(Lorg/apache/commons/compress/archivers/zip/a;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/o0$d;->x:Lorg/apache/commons/compress/archivers/zip/o0$d;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setNameSource(Lorg/apache/commons/compress/archivers/zip/o0$d;)V

    :cond_1
    if-eqz p2, :cond_3

    array-length p1, p2

    if-lez p1, :cond_3

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/u;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/u;

    if-eqz v0, :cond_2

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/u;

    :cond_2
    invoke-static {v2, p2}, Lorg/apache/commons/compress/archivers/zip/g1;->e(Lorg/apache/commons/compress/archivers/zip/a;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/o0$b;->r:Lorg/apache/commons/compress/archivers/zip/o0$b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setCommentSource(Lorg/apache/commons/compress/archivers/zip/o0$b;)V

    :cond_3
    return-void
.end method

.method public static i(Lorg/apache/commons/compress/archivers/zip/o0;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static j(I)B
    .locals 3

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    if-ltz p0, :cond_1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x100

    int-to-byte p0, p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only convert non-negative integers between [0,255] to byte: ["

    const-string v2, "]"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
