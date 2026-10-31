.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addExact(II)I
    .registers 6

    add-int v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-ltz p1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v1

    :goto_e
    if-ne v3, p1, :cond_23

    if-ltz p0, :cond_14

    move p0, v2

    goto :goto_15

    :cond_14
    move p0, v1

    :goto_15
    if-ltz v0, :cond_18

    move v1, v2

    :cond_18
    if-ne p0, v1, :cond_1b

    goto :goto_23

    .line 45
    :cond_1b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return v0
.end method

.method public static addExact(JJ)J
    .registers 10

    .line 1
    add-long v0, p0, p2

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, p0, v2

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ltz p0, :cond_c

    .line 10
    .line 11
    move v5, v4

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v5, p1

    .line 14
    :goto_d
    cmp-long p2, p2, v2

    .line 15
    .line 16
    if-ltz p2, :cond_13

    .line 17
    .line 18
    move p2, v4

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move p2, p1

    .line 21
    :goto_14
    if-ne v5, p2, :cond_2b

    .line 22
    .line 23
    if-ltz p0, :cond_1a

    .line 24
    .line 25
    move p0, v4

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p0, p1

    .line 28
    :goto_1b
    cmp-long p2, v0, v2

    .line 29
    .line 30
    if-ltz p2, :cond_20

    .line 31
    .line 32
    move p1, v4

    .line 33
    :cond_20
    if-ne p0, p1, :cond_23

    .line 34
    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 37
    .line 38
    const-string p1, "integer overflow"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method public static clamp(DDD)D
    .registers 7

    .line 1
    cmpg-double v0, p0, p2

    .line 2
    .line 3
    if-gez v0, :cond_5

    .line 4
    .line 5
    return-wide p2

    .line 6
    :cond_5
    cmpl-double p2, p0, p4

    .line 7
    .line 8
    if-lez p2, :cond_a

    .line 9
    .line 10
    return-wide p4

    .line 11
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4

    .line 12
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3

    .line 13
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7

    .line 14
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmp-long p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static decrementExact(I)I
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 19
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decrementExact(J)J
    .registers 4

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    sub-long/2addr p0, v0

    .line 10
    return-wide p0

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 12
    .line 13
    const-string p1, "integer overflow"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static incrementExact(I)I
    .registers 2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static incrementExact(J)J
    .registers 4

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    if-eqz v0, :cond_d

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    add-long/2addr p0, v0

    .line 13
    return-wide p0

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 15
    .line 16
    const-string p1, "integer overflow"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static multiplyExact(II)I
    .registers 4

    mul-int v0, p0, p1

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 35
    div-int v1, v0, p0

    if-ne v1, p1, :cond_f

    div-int p1, v0, p1

    if-ne p1, p0, :cond_f

    goto :goto_17

    .line 36
    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    return v0
.end method

.method public static multiplyExact(JJ)J
    .registers 9

    .line 1
    mul-long v0, p0, p2

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, p0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_21

    .line 8
    .line 9
    cmp-long v2, p2, v2

    .line 10
    .line 11
    if-eqz v2, :cond_21

    .line 12
    .line 13
    div-long v2, v0, p0

    .line 14
    .line 15
    cmp-long v2, v2, p2

    .line 16
    .line 17
    if-nez v2, :cond_19

    .line 18
    .line 19
    div-long p2, v0, p2

    .line 20
    .line 21
    cmp-long p0, p2, p0

    .line 22
    .line 23
    if-nez p0, :cond_19

    .line 24
    .line 25
    goto :goto_21

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 27
    .line 28
    const-string p1, "integer overflow"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_21
    :goto_21
    return-wide v0
.end method

.method public static negateExact(I)I
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    neg-int p0, p0

    return p0

    .line 17
    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static negateExact(J)J
    .registers 4

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    neg-long p0, p0

    .line 8
    return-wide p0

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 10
    .line 11
    const-string p1, "integer overflow"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static subtractExact(II)I
    .registers 6

    sub-int v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-gez p1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v1

    :goto_e
    if-eq v3, p1, :cond_23

    if-gez p0, :cond_14

    move p0, v2

    goto :goto_15

    :cond_14
    move p0, v1

    :goto_15
    if-gez v0, :cond_18

    move v1, v2

    :cond_18
    if-ne p0, v1, :cond_1b

    goto :goto_23

    .line 45
    :cond_1b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return v0
.end method

.method public static subtractExact(JJ)J
    .registers 10

    .line 1
    sub-long v0, p0, p2

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, p0, v2

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-gez p0, :cond_c

    .line 10
    .line 11
    move v5, v4

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v5, p1

    .line 14
    :goto_d
    cmp-long p2, p2, v2

    .line 15
    .line 16
    if-gez p2, :cond_13

    .line 17
    .line 18
    move p2, v4

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move p2, p1

    .line 21
    :goto_14
    if-eq v5, p2, :cond_2b

    .line 22
    .line 23
    if-gez p0, :cond_1a

    .line 24
    .line 25
    move p0, v4

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p0, p1

    .line 28
    :goto_1b
    cmp-long p2, v0, v2

    .line 29
    .line 30
    if-gez p2, :cond_20

    .line 31
    .line 32
    move p1, v4

    .line 33
    :cond_20
    if-ne p0, p1, :cond_23

    .line 34
    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 37
    .line 38
    const-string p1, "integer overflow"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method public static toIntExact(J)I
    .registers 4

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-gtz v0, :cond_10

    .line 7
    .line 8
    const-wide/32 v0, -0x80000000

    .line 9
    .line 10
    .line 11
    cmp-long v0, p0, v0

    .line 12
    .line 13
    if-ltz v0, :cond_10

    .line 14
    .line 15
    long-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 18
    .line 19
    const-string p1, "integer overflow"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method
