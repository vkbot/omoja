.class public final Lorg/apache/commons/io/ThreadUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getNanosOfMilli(Ljava/time/Duration;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->b(Ljava/time/Duration;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0xf4240

    .line 6
    .line 7
    .line 8
    rem-int/2addr p0, v0

    .line 9
    return p0
.end method

.method public static sleep(Ljava/time/Duration;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0}, Lorg/apache/commons/io/d;->d(Ljava/time/Duration;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    move-object v2, p0

    .line 11
    :goto_0
    invoke-static {v2}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v2}, Lorg/apache/commons/io/ThreadUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long v4, v0, v2

    .line 27
    .line 28
    invoke-static {v4, v5}, Lorg/apache/commons/io/d;->n(J)Ljava/time/Duration;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    sub-long/2addr v2, v0

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long v2, v2, v5

    .line 36
    .line 37
    if-ltz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move-object v2, v4

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p0}, Lorg/apache/commons/io/d;->p(Ljava/time/Instant;Ljava/time/Duration;)Ljava/time/Instant;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_1
    invoke-static {p0}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {p0}, Lorg/apache/commons/io/ThreadUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {v1, v2, p0}, Ljava/lang/Thread;->sleep(JI)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0, v0}, Lorg/apache/commons/io/d;->o(Ljava/time/Instant;Ljava/time/Instant;)Ljava/time/Duration;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lorg/apache/commons/io/d;->B(Ljava/time/Duration;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    :goto_1
    return-void
.end method
