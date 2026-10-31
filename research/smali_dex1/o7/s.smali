.class public final Lo7/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:J

.field public final synthetic c:Lo7/t;


# direct methods
.method public constructor <init>(Lo7/t;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/s;->c:Lo7/t;

    .line 5
    .line 6
    iput-wide p2, p0, Lo7/s;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    new-instance v0, Li7/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Li7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lo7/s;->c:Lo7/t;

    .line 8
    .line 9
    iget-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 10
    .line 11
    invoke-interface {v2, v0}, Lo7/u;->e(Li7/i;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lo7/s;->b:J

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/32 v6, 0x3b9aca00

    .line 21
    .line 22
    .line 23
    div-long/2addr v4, v6

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    rem-long/2addr v8, v6

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v7, "deadline exceeded after "

    .line 32
    .line 33
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v10, 0x0

    .line 37
    .line 38
    cmp-long v2, v2, v10

    .line 39
    .line 40
    if-gez v2, :cond_2e

    .line 41
    .line 42
    const/16 v2, 0x2d

    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2e
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, ".%09d"

    .line 61
    .line 62
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "s. "

    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lo7/t;->k:Ln7/c;

    .line 75
    .line 76
    sget-object v4, Ln7/e;->a:La9/w;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ln7/c;->a(La9/w;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/Long;

    .line 83
    .line 84
    if-nez v3, :cond_58

    .line 85
    .line 86
    const-wide/16 v3, 0x0

    .line 87
    .line 88
    goto :goto_60

    .line 89
    :cond_58
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    long-to-double v3, v3

    .line 94
    sget-wide v7, Lo7/t;->t:D

    .line 95
    .line 96
    div-double/2addr v3, v7

    .line 97
    :goto_60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "Name resolution delay %.9f seconds. "

    .line 106
    .line 107
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v0, v1, Lo7/t;->l:Lo7/u;

    .line 118
    .line 119
    sget-object v1, Ln7/f1;->h:Ln7/f1;

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lo7/u;->h(Ln7/f1;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
