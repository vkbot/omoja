.class public final Ly1/f;
.super Ly1/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly1/f;->g:Landroid/graphics/Path;

    .line 10
    .line 11
    const/high16 p1, 0x41800000    # 16.0f

    .line 12
    .line 13
    iget v0, p0, Ly1/b;->b:F

    .line 14
    .line 15
    mul-float/2addr p1, v0

    .line 16
    invoke-virtual {p0, p1}, Ly1/b;->h(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f;->g:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x3e3851ec    # 0.18f

    .line 6
    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Ly1/b;->c:Lw1/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lw1/e;->getPadding()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    add-float/2addr v0, v1

    .line 20
    return v0
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f;->g:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, p0, Ly1/b;->d:F

    .line 22
    .line 23
    sub-float/2addr v1, v2

    .line 24
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const v3, 0x3eae147b    # 0.34f

    .line 29
    .line 30
    .line 31
    mul-float/2addr v2, v3

    .line 32
    iget-object v4, p0, Ly1/b;->c:Lw1/i;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lw1/e;->getPadding()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    int-to-float v4, v4

    .line 42
    add-float/2addr v2, v4

    .line 43
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const v6, 0x3e3851ec    # 0.18f

    .line 52
    .line 53
    .line 54
    mul-float/2addr v5, v6

    .line 55
    iget-object v6, p0, Ly1/b;->c:Lw1/i;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lw1/e;->getPadding()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    int-to-float v6, v6

    .line 65
    add-float/2addr v5, v6

    .line 66
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget v2, p0, Ly1/b;->d:F

    .line 74
    .line 75
    add-float/2addr v1, v2

    .line 76
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    mul-float/2addr v2, v3

    .line 81
    iget-object v3, p0, Ly1/b;->c:Lw1/i;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lw1/e;->getPadding()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    add-float/2addr v2, v3

    .line 92
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v1, p0, Ly1/b;->e:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
