.class public final Lorg/apache/commons/io/file/attribute/FileTimes;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final EPOCH:Ljava/nio/file/attribute/FileTime;

.field private static final HUNDRED:J = 0x64L

.field private static final HUNDRED_BD:Ljava/math/BigDecimal;

.field static final HUNDRED_NANOS_PER_MILLISECOND:J

.field static final HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

.field private static final HUNDRED_NANOS_PER_SECOND:J

.field private static final HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

.field private static final LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

.field private static final LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

.field private static final MATH_CONTEXT:Ljava/math/MathContext;

.field static final UNIX_TO_NTFS_OFFSET:J = -0x19db1ded53e8000L

.field private static final UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

    .line 8
    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

    .line 19
    .line 20
    new-instance v0, Ljava/math/MathContext;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->MATH_CONTEXT:Ljava/math/MathContext;

    .line 29
    .line 30
    invoke-static {}, Lc5/h;->k()Ljava/time/Instant;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/apache/commons/io/file/f;->j()Ljava/nio/file/attribute/FileTime;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 38
    .line 39
    const-wide v0, -0x19db1ded53e8000L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    .line 49
    .line 50
    const-wide/32 v0, 0x989680

    .line 51
    .line 52
    .line 53
    sput-wide v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    .line 60
    .line 61
    const-wide/16 v0, 0x2710

    .line 62
    .line 63
    sput-wide v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

    .line 70
    .line 71
    const-wide/16 v0, 0x64

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_BD:Ljava/math/BigDecimal;

    .line 78
    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromUnixTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/f;->k(J)Ljava/nio/file/attribute/FileTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static isUnixTime(J)Z
    .locals 2

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    cmp-long v0, v0, p0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-wide/32 v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    cmp-long p0, p0, v0

    .line 12
    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static isUnixTime(Ljava/nio/file/attribute/FileTime;)Z
    .locals 2

    .line 19
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(J)Z

    move-result p0

    return p0
.end method

.method public static minusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/e;->p(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static minusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/f;->B(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static minusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/f;->C(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static now()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static ntfsTimeToDate(J)Ljava/util/Date;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToDate(Ljava/math/BigDecimal;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static ntfsTimeToDate(Ljava/math/BigDecimal;)Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/io/path/f;->d(Ljava/time/Instant;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static ntfsTimeToInstant(J)Ljava/time/Instant;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    .line 8
    .line 9
    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->MATH_CONTEXT:Ljava/math/MathContext;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    aget-object v0, p0, v0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const/4 v2, 0x1

    .line 23
    aget-object p0, p0, v2

    .line 24
    .line 25
    sget-object v2, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_BD:Ljava/math/BigDecimal;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/net/util/a;->n(JJ)Ljava/time/Instant;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static plusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/f;->z(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static plusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/f;->r(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static plusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/f;->D(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/attribute/FileTimes;->now()Ljava/nio/file/attribute/FileTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/e;->t(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/Date;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/io/path/f;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lorg/apache/commons/io/file/e;->l(J)Ljava/nio/file/attribute/FileTime;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static toNtfsTime(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ltz p1, :cond_0

    .line 24
    .line 25
    const-wide p0, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    return-wide p0

    .line 31
    :cond_0
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-gtz p1, :cond_1

    .line 38
    .line 39
    const-wide/high16 p0, -0x8000000000000000L

    .line 40
    .line 41
    return-wide p0

    .line 42
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0
.end method

.method public static toNtfsTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    .line 47
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(Ljava/time/Instant;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toNtfsTime(Ljava/time/Instant;)J
    .locals 3

    .line 48
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->f(Ljava/time/Instant;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 49
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->c(Ljava/time/Instant;)I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 50
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toNtfsTime(Ljava/util/Date;)J
    .locals 2

    .line 51
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->a(Ljava/nio/file/attribute/FileTime;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method
