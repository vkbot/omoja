.class public abstract Lc9/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static final f:Lc9/f;

.field public static final g:Lc9/i;

.field public static final h:Lc9/i;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 2
    .line 3
    sget v1, La9/x;->a:I

    .line 4
    .line 5
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-nez v0, :cond_e

    .line 12
    .line 13
    const-string v0, "DefaultDispatcher"

    .line 14
    .line 15
    :cond_e
    sput-object v0, Lc9/k;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    const-wide v5, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide/32 v1, 0x186a0

    .line 25
    .line 26
    .line 27
    const-string v7, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, La9/a;->h(JJJLjava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    sput-wide v0, Lc9/k;->b:J

    .line 34
    .line 35
    sget v0, La9/x;->a:I

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, La9/a;->i(IILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput v0, Lc9/k;->c:I

    .line 51
    .line 52
    const v0, 0x1ffffe

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    const-string v2, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, La9/a;->i(IILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sput v0, Lc9/k;->d:I

    .line 63
    .line 64
    const-wide/16 v1, 0x3c

    .line 65
    .line 66
    const-string v7, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 67
    .line 68
    invoke-static/range {v1 .. v7}, La9/a;->h(JJJLjava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    sput-wide v0, Lc9/k;->e:J

    .line 79
    .line 80
    sget-object v0, Lc9/f;->a:Lc9/f;

    .line 81
    .line 82
    sput-object v0, Lc9/k;->f:Lc9/f;

    .line 83
    .line 84
    new-instance v0, Lc9/i;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, v1}, Lc9/i;-><init>(I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lc9/k;->g:Lc9/i;

    .line 91
    .line 92
    new-instance v0, Lc9/i;

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-direct {v0, v1}, Lc9/i;-><init>(I)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lc9/k;->h:Lc9/i;

    .line 99
    .line 100
    return-void
.end method
