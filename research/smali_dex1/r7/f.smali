.class public final Lr7/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/g0;


# instance fields
.field public final b:Ll9/a0;

.field public c:I

.field public d:B

.field public e:I

.field public f:I

.field public g:S


# direct methods
.method public constructor <init>(Ll9/a0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr7/f;->b:Ll9/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .line 1
    return-void
.end method

.method public final read(Ll9/l;J)J
    .registers 13

    .line 1
    :goto_0
    iget v0, p0, Lr7/f;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lr7/f;->b:Ll9/a0;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    if-nez v0, :cond_72

    .line 8
    .line 9
    iget-short v0, p0, Lr7/f;->g:S

    .line 10
    .line 11
    int-to-long v4, v0

    .line 12
    invoke-virtual {v1, v4, v5}, Ll9/a0;->skip(J)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-short v0, p0, Lr7/f;->g:S

    .line 17
    .line 18
    iget-byte v4, p0, Lr7/f;->d:B

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_18

    .line 23
    .line 24
    goto :goto_7f

    .line 25
    :cond_18
    iget v2, p0, Lr7/f;->e:I

    .line 26
    .line 27
    invoke-static {v1}, Lr7/j;->a(Ll9/a0;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, p0, Lr7/f;->f:I

    .line 32
    .line 33
    iput v3, p0, Lr7/f;->c:I

    .line 34
    .line 35
    invoke-virtual {v1}, Ll9/a0;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    and-int/lit16 v3, v3, 0xff

    .line 40
    .line 41
    int-to-byte v3, v3

    .line 42
    invoke-virtual {v1}, Ll9/a0;->readByte()B

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    and-int/lit16 v4, v4, 0xff

    .line 47
    .line 48
    int-to-byte v4, v4

    .line 49
    iput-byte v4, p0, Lr7/f;->d:B

    .line 50
    .line 51
    sget-object v4, Lr7/j;->a:Ljava/util/logging/Logger;

    .line 52
    .line 53
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4a

    .line 60
    .line 61
    iget v5, p0, Lr7/f;->e:I

    .line 62
    .line 63
    iget v6, p0, Lr7/f;->c:I

    .line 64
    .line 65
    iget-byte v7, p0, Lr7/f;->d:B

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    invoke-static {v8, v5, v6, v3, v7}, Lr7/g;->a(ZIIBB)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    invoke-virtual {v1}, Ll9/a0;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const v4, 0x7fffffff

    .line 80
    .line 81
    .line 82
    and-int/2addr v1, v4

    .line 83
    iput v1, p0, Lr7/f;->e:I

    .line 84
    .line 85
    const/16 v4, 0x9

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    if-ne v3, v4, :cond_64

    .line 89
    .line 90
    if-ne v1, v2, :cond_5c

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5c
    const-string p1, "TYPE_CONTINUATION streamId changed"

    .line 94
    .line 95
    new-array p2, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw v5

    .line 101
    :cond_64
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "%s != TYPE_CONTINUATION"

    .line 110
    .line 111
    invoke-static {p2, p1}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    throw v5

    .line 115
    :cond_72
    int-to-long v4, v0

    .line 116
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide p2

    .line 120
    invoke-virtual {v1, p1, p2, p3}, Ll9/a0;->read(Ll9/l;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide p1

    .line 124
    cmp-long p3, p1, v2

    .line 125
    .line 126
    if-nez p3, :cond_80

    .line 127
    .line 128
    :goto_7f
    return-wide v2

    .line 129
    :cond_80
    iget p3, p0, Lr7/f;->f:I

    .line 130
    .line 131
    long-to-int v0, p1

    .line 132
    sub-int/2addr p3, v0

    .line 133
    iput p3, p0, Lr7/f;->f:I

    .line 134
    .line 135
    return-wide p1
.end method

.method public final timeout()Ll9/j0;
    .registers 2

    .line 1
    iget-object v0, p0, Lr7/f;->b:Ll9/a0;

    .line 2
    .line 3
    iget-object v0, v0, Ll9/a0;->b:Ll9/g0;

    .line 4
    .line 5
    invoke-interface {v0}, Ll9/g0;->timeout()Ll9/j0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
