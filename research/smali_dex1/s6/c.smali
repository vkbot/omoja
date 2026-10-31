.class public final Ls6/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf6/b;

.field public final b:Lz5/o;

.field public final c:Lz5/o;

.field public final d:Lz5/o;

.field public final e:Lz5/o;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lf6/b;Lz5/o;Lz5/o;Lz5/o;Lz5/o;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_c

    .line 7
    .line 8
    if-nez p3, :cond_a

    .line 9
    .line 10
    goto :goto_c

    .line 11
    :cond_a
    move v2, v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    :goto_c
    move v2, v1

    .line 14
    :goto_d
    if-eqz p4, :cond_11

    .line 15
    .line 16
    if-nez p5, :cond_12

    .line 17
    .line 18
    :cond_11
    move v0, v1

    .line 19
    :cond_12
    if-eqz v2, :cond_1a

    .line 20
    .line 21
    if-nez v0, :cond_17

    .line 22
    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1a
    :goto_1a
    if-eqz v2, :cond_2c

    .line 28
    .line 29
    new-instance p2, Lz5/o;

    .line 30
    .line 31
    iget p3, p4, Lz5/o;->b:F

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p2, v0, p3}, Lz5/o;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    new-instance p3, Lz5/o;

    .line 38
    .line 39
    iget v1, p5, Lz5/o;->b:F

    .line 40
    .line 41
    invoke-direct {p3, v0, v1}, Lz5/o;-><init>(FF)V

    .line 42
    .line 43
    .line 44
    goto :goto_44

    .line 45
    :cond_2c
    if-eqz v0, :cond_44

    .line 46
    .line 47
    new-instance p4, Lz5/o;

    .line 48
    .line 49
    iget p5, p1, Lf6/b;->b:I

    .line 50
    .line 51
    add-int/lit8 v0, p5, -0x1

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    iget v2, p2, Lz5/o;->b:F

    .line 55
    .line 56
    invoke-direct {p4, v0, v2}, Lz5/o;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lz5/o;

    .line 60
    .line 61
    sub-int/2addr p5, v1

    .line 62
    int-to-float p5, p5

    .line 63
    iget v1, p3, Lz5/o;->b:F

    .line 64
    .line 65
    invoke-direct {v0, p5, v1}, Lz5/o;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    move-object p5, v0

    .line 69
    :cond_44
    :goto_44
    iput-object p1, p0, Ls6/c;->a:Lf6/b;

    .line 70
    .line 71
    iput-object p2, p0, Ls6/c;->b:Lz5/o;

    .line 72
    .line 73
    iput-object p3, p0, Ls6/c;->c:Lz5/o;

    .line 74
    .line 75
    iput-object p4, p0, Ls6/c;->d:Lz5/o;

    .line 76
    .line 77
    iput-object p5, p0, Ls6/c;->e:Lz5/o;

    .line 78
    .line 79
    iget p1, p2, Lz5/o;->a:F

    .line 80
    .line 81
    iget v0, p3, Lz5/o;->a:F

    .line 82
    .line 83
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    float-to-int p1, p1

    .line 88
    iput p1, p0, Ls6/c;->f:I

    .line 89
    .line 90
    iget p1, p4, Lz5/o;->a:F

    .line 91
    .line 92
    iget v0, p5, Lz5/o;->a:F

    .line 93
    .line 94
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    float-to-int p1, p1

    .line 99
    iput p1, p0, Ls6/c;->g:I

    .line 100
    .line 101
    iget p1, p2, Lz5/o;->b:F

    .line 102
    .line 103
    iget p2, p4, Lz5/o;->b:F

    .line 104
    .line 105
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    float-to-int p1, p1

    .line 110
    iput p1, p0, Ls6/c;->h:I

    .line 111
    .line 112
    iget p1, p3, Lz5/o;->b:F

    .line 113
    .line 114
    iget p2, p5, Lz5/o;->b:F

    .line 115
    .line 116
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    float-to-int p1, p1

    .line 121
    iput p1, p0, Ls6/c;->i:I

    .line 122
    .line 123
    return-void
.end method

.method public constructor <init>(Ls6/c;)V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-object v0, p1, Ls6/c;->a:Lf6/b;

    iput-object v0, p0, Ls6/c;->a:Lf6/b;

    .line 126
    iget-object v0, p1, Ls6/c;->b:Lz5/o;

    iput-object v0, p0, Ls6/c;->b:Lz5/o;

    .line 127
    iget-object v0, p1, Ls6/c;->c:Lz5/o;

    iput-object v0, p0, Ls6/c;->c:Lz5/o;

    .line 128
    iget-object v0, p1, Ls6/c;->d:Lz5/o;

    iput-object v0, p0, Ls6/c;->d:Lz5/o;

    .line 129
    iget-object v0, p1, Ls6/c;->e:Lz5/o;

    iput-object v0, p0, Ls6/c;->e:Lz5/o;

    .line 130
    iget v0, p1, Ls6/c;->f:I

    iput v0, p0, Ls6/c;->f:I

    .line 131
    iget v0, p1, Ls6/c;->g:I

    iput v0, p0, Ls6/c;->g:I

    .line 132
    iget v0, p1, Ls6/c;->h:I

    iput v0, p0, Ls6/c;->h:I

    .line 133
    iget p1, p1, Ls6/c;->i:I

    iput p1, p0, Ls6/c;->i:I

    return-void
.end method
