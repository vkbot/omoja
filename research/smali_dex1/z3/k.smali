.class public Lz3/k;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Lz3/z;


# static fields
.field public static final G:Landroid/graphics/Paint;

.field public static final H:[Lz3/j;


# instance fields
.field public A:Lz3/o;

.field public B:Landroidx/dynamicanimation/animation/SpringForce;

.field public final C:[Landroidx/dynamicanimation/animation/SpringAnimation;

.field public D:[F

.field public E:[F

.field public F:Lz3/i;

.field public final b:Lz3/g;

.field public c:Lz3/h;

.field public final d:[Lz3/x;

.field public final e:[Lz3/x;

.field public final f:Ljava/util/BitSet;

.field public g:Z

.field public h:Z

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Region;

.field public final o:Landroid/graphics/Region;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Ly3/a;

.field public final s:Lz3/g;

.field public final t:Lz3/q;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public w:I

.field public final x:Landroid/graphics/RectF;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lz3/k;->G:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Lz3/j;

    .line 25
    .line 26
    sput-object v0, Lz3/k;->H:[Lz3/j;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_1c
    sget-object v1, Lz3/k;->H:[Lz3/j;

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    if-ge v0, v2, :cond_2b

    .line 33
    .line 34
    new-instance v2, Lz3/j;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lz3/j;-><init>(I)V

    .line 37
    .line 38
    .line 39
    aput-object v2, v1, v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_1c

    .line 44
    :cond_2b
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 171
    new-instance v0, Lz3/o;

    invoke-direct {v0}, Lz3/o;-><init>()V

    invoke-direct {p0, v0}, Lz3/k;-><init>(Lz3/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 169
    invoke-static {p1, p2, p3, p4}, Lz3/o;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Lz3/n;

    move-result-object p1

    invoke-virtual {p1}, Lz3/n;->a()Lz3/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lz3/k;-><init>(Lz3/o;)V

    return-void
.end method

.method public constructor <init>(Lz3/h;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz3/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lz3/g;-><init>(Lz3/k;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz3/k;->b:Lz3/g;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v1, v0, [Lz3/x;

    .line 13
    .line 14
    iput-object v1, p0, Lz3/k;->d:[Lz3/x;

    .line 15
    .line 16
    new-array v1, v0, [Lz3/x;

    .line 17
    .line 18
    iput-object v1, p0, Lz3/k;->e:[Lz3/x;

    .line 19
    .line 20
    new-instance v1, Ljava/util/BitSet;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lz3/k;->f:Ljava/util/BitSet;

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lz3/k;->i:Landroid/graphics/Matrix;

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lz3/k;->j:Landroid/graphics/Path;

    .line 42
    .line 43
    new-instance v1, Landroid/graphics/Path;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lz3/k;->k:Landroid/graphics/Path;

    .line 49
    .line 50
    new-instance v1, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lz3/k;->l:Landroid/graphics/RectF;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lz3/k;->m:Landroid/graphics/RectF;

    .line 63
    .line 64
    new-instance v1, Landroid/graphics/Region;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lz3/k;->n:Landroid/graphics/Region;

    .line 70
    .line 71
    new-instance v1, Landroid/graphics/Region;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lz3/k;->o:Landroid/graphics/Region;

    .line 77
    .line 78
    new-instance v1, Landroid/graphics/Paint;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lz3/k;->p:Landroid/graphics/Paint;

    .line 85
    .line 86
    new-instance v3, Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 92
    .line 93
    new-instance v4, Ly3/a;

    .line 94
    .line 95
    invoke-direct {v4}, Ly3/a;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v4, p0, Lz3/k;->r:Ly3/a;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-ne v4, v5, :cond_74

    .line 113
    .line 114
    sget-object v4, Lz3/p;->a:Lz3/q;

    .line 115
    .line 116
    goto :goto_79

    .line 117
    :cond_74
    new-instance v4, Lz3/q;

    .line 118
    .line 119
    invoke-direct {v4}, Lz3/q;-><init>()V

    .line 120
    .line 121
    .line 122
    :goto_79
    iput-object v4, p0, Lz3/k;->t:Lz3/q;

    .line 123
    .line 124
    new-instance v4, Landroid/graphics/RectF;

    .line 125
    .line 126
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v4, p0, Lz3/k;->x:Landroid/graphics/RectF;

    .line 130
    .line 131
    iput-boolean v2, p0, Lz3/k;->y:Z

    .line 132
    .line 133
    iput-boolean v2, p0, Lz3/k;->z:Z

    .line 134
    .line 135
    new-array v0, v0, [Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 136
    .line 137
    iput-object v0, p0, Lz3/k;->C:[Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 138
    .line 139
    iput-object p1, p0, Lz3/k;->c:Lz3/h;

    .line 140
    .line 141
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 142
    .line 143
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lz3/k;->w()Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lz3/k;->u([I)Z

    .line 159
    .line 160
    .line 161
    new-instance p1, Lz3/g;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Lz3/g;-><init>(Lz3/k;)V

    .line 164
    .line 165
    .line 166
    iput-object p1, p0, Lz3/k;->s:Lz3/g;

    .line 167
    .line 168
    return-void
.end method

.method public constructor <init>(Lz3/o;)V
    .registers 3

    .line 170
    new-instance v0, Lz3/h;

    invoke-direct {v0, p1}, Lz3/h;-><init>(Lz3/o;)V

    invoke-direct {p0, v0}, Lz3/k;-><init>(Lz3/h;)V

    return-void
.end method

.method public static c(Landroid/graphics/RectF;Lz3/o;[F)F
    .registers 6

    .line 1
    if-nez p2, :cond_f

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lz3/o;->f(Landroid/graphics/RectF;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_2d

    .line 8
    .line 9
    iget-object p1, p1, Lz3/o;->e:Lz3/d;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    array-length p0, p2

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-gt p0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_24

    .line 22
    :cond_15
    aget p0, p2, v0

    .line 23
    .line 24
    :goto_17
    array-length v2, p2

    .line 25
    if-ge v1, v2, :cond_24

    .line 26
    .line 27
    aget v2, p2, v1

    .line 28
    .line 29
    cmpl-float v2, v2, p0

    .line 30
    .line 31
    if-eqz v2, :cond_21

    .line 32
    .line 33
    goto :goto_2d

    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_17

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lz3/o;->e()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2d

    .line 42
    .line 43
    aget p0, p2, v0

    .line 44
    .line 45
    return p0

    .line 46
    :cond_2d
    :goto_2d
    const/high16 p0, -0x40800000    # -1.0f

    .line 47
    .line 48
    return p0
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v2, v0, Lz3/h;->a:Lz3/o;

    .line 4
    .line 5
    iget-object v3, p0, Lz3/k;->D:[F

    .line 6
    .line 7
    iget v4, v0, Lz3/h;->j:F

    .line 8
    .line 9
    iget-object v6, p0, Lz3/k;->s:Lz3/g;

    .line 10
    .line 11
    iget-object v1, p0, Lz3/k;->t:Lz3/q;

    .line 12
    .line 13
    move-object v5, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-virtual/range {v1 .. v7}, Lz3/q;->a(Lz3/o;[FFLandroid/graphics/RectF;Lz3/g;Landroid/graphics/Path;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lz3/k;->c:Lz3/h;

    .line 19
    .line 20
    iget p1, p1, Lz3/h;->i:F

    .line 21
    .line 22
    const/high16 p2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float p1, p1, p2

    .line 25
    .line 26
    if-eqz p1, :cond_36

    .line 27
    .line 28
    iget-object p1, p0, Lz3/k;->i:Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lz3/k;->c:Lz3/h;

    .line 34
    .line 35
    iget p2, p2, Lz3/h;->i:F

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v1, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v0, v1

    .line 44
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    div-float/2addr v2, v1

    .line 49
    invoke-virtual {p1, p2, p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 53
    .line 54
    .line 55
    :cond_36
    iget-object p1, p0, Lz3/k;->x:Landroid/graphics/RectF;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final d(I)I
    .registers 8

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v1, v0, Lz3/h;->n:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    iget v3, v0, Lz3/h;->m:F

    .line 8
    .line 9
    add-float/2addr v1, v3

    .line 10
    iget-object v0, v0, Lz3/h;->c:Lp3/a;

    .line 11
    .line 12
    if-eqz v0, :cond_62

    .line 13
    .line 14
    iget-boolean v3, v0, Lp3/a;->a:Z

    .line 15
    .line 16
    if-eqz v3, :cond_62

    .line 17
    .line 18
    const/16 v3, 0xff

    .line 19
    .line 20
    invoke-static {p1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v5, v0, Lp3/a;->d:I

    .line 25
    .line 26
    if-ne v4, v5, :cond_62

    .line 27
    .line 28
    iget v4, v0, Lp3/a;->e:F

    .line 29
    .line 30
    cmpg-float v5, v4, v2

    .line 31
    .line 32
    if-lez v5, :cond_3d

    .line 33
    .line 34
    cmpg-float v5, v1, v2

    .line 35
    .line 36
    if-gtz v5, :cond_26

    .line 37
    .line 38
    goto :goto_3d

    .line 39
    :cond_26
    div-float/2addr v1, v4

    .line 40
    float-to-double v4, v1

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    double-to-float v1, v4

    .line 46
    const/high16 v4, 0x40900000    # 4.5f

    .line 47
    .line 48
    mul-float/2addr v1, v4

    .line 49
    const/high16 v4, 0x40000000    # 2.0f

    .line 50
    .line 51
    add-float/2addr v1, v4

    .line 52
    const/high16 v4, 0x42c80000    # 100.0f

    .line 53
    .line 54
    div-float/2addr v1, v4

    .line 55
    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    :goto_3d
    move v1, v2

    .line 63
    :goto_3e
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {p1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget v3, v0, Lp3/a;->b:I

    .line 72
    .line 73
    invoke-static {v1, p1, v3}, Lm3/a;->c(FII)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    cmpl-float v1, v1, v2

    .line 78
    .line 79
    if-lez v1, :cond_5e

    .line 80
    .line 81
    iget v0, v0, Lp3/a;->c:I

    .line 82
    .line 83
    if-eqz v0, :cond_5e

    .line 84
    .line 85
    sget v1, Lp3/a;->f:I

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    :cond_5e
    invoke-static {p1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    :cond_62
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lz3/k;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget-object v3, v0, Lz3/k;->p:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iget-object v2, v0, Lz3/k;->c:Lz3/h;

    .line 17
    .line 18
    iget v2, v2, Lz3/h;->l:I

    .line 19
    .line 20
    ushr-int/lit8 v4, v2, 0x7

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    mul-int/2addr v2, v7

    .line 24
    ushr-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lz3/k;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 30
    .line 31
    iget-object v8, v0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lz3/k;->c:Lz3/h;

    .line 37
    .line 38
    iget v2, v2, Lz3/h;->k:F

    .line 39
    .line 40
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    iget-object v2, v0, Lz3/k;->c:Lz3/h;

    .line 48
    .line 49
    iget v2, v2, Lz3/h;->l:I

    .line 50
    .line 51
    ushr-int/lit8 v4, v2, 0x7

    .line 52
    .line 53
    add-int/2addr v2, v4

    .line 54
    mul-int/2addr v2, v9

    .line 55
    ushr-int/lit8 v2, v2, 0x8

    .line 56
    .line 57
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v0, Lz3/k;->c:Lz3/h;

    .line 61
    .line 62
    iget-object v2, v2, Lz3/h;->q:Landroid/graphics/Paint$Style;

    .line 63
    .line 64
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    if-eq v2, v4, :cond_4d

    .line 69
    .line 70
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 71
    .line 72
    if-ne v2, v4, :cond_4a

    .line 73
    .line 74
    goto :goto_4d

    .line 75
    :cond_4a
    move-object v2, v3

    .line 76
    goto/16 :goto_134

    .line 77
    .line 78
    :cond_4d
    :goto_4d
    iget-boolean v2, v0, Lz3/k;->g:Z

    .line 79
    .line 80
    move v4, v2

    .line 81
    move-object v2, v3

    .line 82
    iget-object v3, v0, Lz3/k;->j:Landroid/graphics/Path;

    .line 83
    .line 84
    if-eqz v4, :cond_5e

    .line 85
    .line 86
    invoke-virtual {v0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v4, v3}, Lz3/k;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 91
    .line 92
    .line 93
    iput-boolean v11, v0, Lz3/k;->g:Z

    .line 94
    .line 95
    :cond_5e
    iget-object v4, v0, Lz3/k;->c:Lz3/h;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget v4, v4, Lz3/h;->o:I

    .line 101
    .line 102
    if-lez v4, :cond_127

    .line 103
    .line 104
    invoke-virtual {v0}, Lz3/k;->n()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_127

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_127

    .line 115
    .line 116
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v5, 0x1d

    .line 119
    .line 120
    if-ge v4, v5, :cond_127

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lz3/k;->c:Lz3/h;

    .line 126
    .line 127
    iget v4, v4, Lz3/h;->p:I

    .line 128
    .line 129
    int-to-double v4, v4

    .line 130
    int-to-double v12, v11

    .line 131
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v14

    .line 139
    mul-double/2addr v14, v4

    .line 140
    double-to-int v4, v14

    .line 141
    iget-object v5, v0, Lz3/k;->c:Lz3/h;

    .line 142
    .line 143
    iget v5, v5, Lz3/h;->p:I

    .line 144
    .line 145
    int-to-double v5, v5

    .line 146
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 147
    .line 148
    .line 149
    move-result-wide v12

    .line 150
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v12

    .line 154
    mul-double/2addr v12, v5

    .line 155
    double-to-int v5, v12

    .line 156
    int-to-float v4, v4

    .line 157
    int-to-float v5, v5

    .line 158
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    .line 160
    .line 161
    iget-boolean v4, v0, Lz3/k;->y:Z

    .line 162
    .line 163
    if-nez v4, :cond_ac

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p1}, Lz3/k;->e(Landroid/graphics/Canvas;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_127

    .line 172
    .line 173
    :cond_ac
    iget-object v4, v0, Lz3/k;->x:Landroid/graphics/RectF;

    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    int-to-float v6, v6

    .line 188
    sub-float/2addr v5, v6

    .line 189
    float-to-int v5, v5

    .line 190
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    int-to-float v12, v12

    .line 203
    sub-float/2addr v6, v12

    .line 204
    float-to-int v6, v6

    .line 205
    if-ltz v5, :cond_121

    .line 206
    .line 207
    if-ltz v6, :cond_121

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    float-to-int v12, v12

    .line 214
    iget-object v13, v0, Lz3/k;->c:Lz3/h;

    .line 215
    .line 216
    iget v13, v13, Lz3/h;->o:I

    .line 217
    .line 218
    mul-int/lit8 v13, v13, 0x2

    .line 219
    .line 220
    add-int/2addr v13, v12

    .line 221
    add-int/2addr v13, v5

    .line 222
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    float-to-int v4, v4

    .line 227
    iget-object v12, v0, Lz3/k;->c:Lz3/h;

    .line 228
    .line 229
    iget v12, v12, Lz3/h;->o:I

    .line 230
    .line 231
    mul-int/lit8 v12, v12, 0x2

    .line 232
    .line 233
    add-int/2addr v12, v4

    .line 234
    add-int/2addr v12, v6

    .line 235
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 236
    .line 237
    invoke-static {v13, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    new-instance v12, Landroid/graphics/Canvas;

    .line 242
    .line 243
    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 251
    .line 252
    iget-object v14, v0, Lz3/k;->c:Lz3/h;

    .line 253
    .line 254
    iget v14, v14, Lz3/h;->o:I

    .line 255
    .line 256
    sub-int/2addr v13, v14

    .line 257
    sub-int/2addr v13, v5

    .line 258
    int-to-float v5, v13

    .line 259
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 264
    .line 265
    iget-object v14, v0, Lz3/k;->c:Lz3/h;

    .line 266
    .line 267
    iget v14, v14, Lz3/h;->o:I

    .line 268
    .line 269
    sub-int/2addr v13, v14

    .line 270
    sub-int/2addr v13, v6

    .line 271
    int-to-float v6, v13

    .line 272
    neg-float v13, v5

    .line 273
    neg-float v14, v6

    .line 274
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v12}, Lz3/k;->e(Landroid/graphics/Canvas;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 287
    .line 288
    .line 289
    goto :goto_127

    .line 290
    :cond_121
    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 291
    .line 292
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_127
    :goto_127
    iget-object v4, v0, Lz3/k;->c:Lz3/h;

    .line 297
    .line 298
    iget-object v4, v4, Lz3/h;->a:Lz3/o;

    .line 299
    .line 300
    iget-object v5, v0, Lz3/k;->D:[F

    .line 301
    .line 302
    invoke-virtual {v0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual/range {v0 .. v6}, Lz3/k;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lz3/o;[FLandroid/graphics/RectF;)V

    .line 307
    .line 308
    .line 309
    :goto_134
    invoke-virtual {v0}, Lz3/k;->l()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_1c1

    .line 314
    .line 315
    iget-boolean v1, v0, Lz3/k;->h:Z

    .line 316
    .line 317
    if-eqz v1, :cond_1be

    .line 318
    .line 319
    iget-object v1, v0, Lz3/k;->c:Lz3/h;

    .line 320
    .line 321
    iget-object v1, v1, Lz3/h;->a:Lz3/o;

    .line 322
    .line 323
    invoke-virtual {v1}, Lz3/o;->g()Lz3/n;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    iget-object v4, v1, Lz3/o;->e:Lz3/d;

    .line 328
    .line 329
    iget-object v5, v0, Lz3/k;->b:Lz3/g;

    .line 330
    .line 331
    invoke-virtual {v5, v4}, Lz3/g;->a(Lz3/d;)Lz3/d;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    iput-object v4, v3, Lz3/n;->e:Lz3/d;

    .line 336
    .line 337
    iget-object v4, v1, Lz3/o;->f:Lz3/d;

    .line 338
    .line 339
    invoke-virtual {v5, v4}, Lz3/g;->a(Lz3/d;)Lz3/d;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    iput-object v4, v3, Lz3/n;->f:Lz3/d;

    .line 344
    .line 345
    iget-object v4, v1, Lz3/o;->h:Lz3/d;

    .line 346
    .line 347
    invoke-virtual {v5, v4}, Lz3/g;->a(Lz3/d;)Lz3/d;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    iput-object v4, v3, Lz3/n;->h:Lz3/d;

    .line 352
    .line 353
    iget-object v1, v1, Lz3/o;->g:Lz3/d;

    .line 354
    .line 355
    invoke-virtual {v5, v1}, Lz3/g;->a(Lz3/d;)Lz3/d;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    iput-object v1, v3, Lz3/n;->g:Lz3/d;

    .line 360
    .line 361
    invoke-virtual {v3}, Lz3/n;->a()Lz3/o;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iput-object v1, v0, Lz3/k;->A:Lz3/o;

    .line 366
    .line 367
    iget-object v1, v0, Lz3/k;->D:[F

    .line 368
    .line 369
    if-nez v1, :cond_175

    .line 370
    .line 371
    iput-object v10, v0, Lz3/k;->E:[F

    .line 372
    .line 373
    goto :goto_197

    .line 374
    :cond_175
    iget-object v3, v0, Lz3/k;->E:[F

    .line 375
    .line 376
    if-nez v3, :cond_17e

    .line 377
    .line 378
    array-length v1, v1

    .line 379
    new-array v1, v1, [F

    .line 380
    .line 381
    iput-object v1, v0, Lz3/k;->E:[F

    .line 382
    .line 383
    :cond_17e
    invoke-virtual {v0}, Lz3/k;->j()F

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    move v3, v11

    .line 388
    :goto_183
    iget-object v4, v0, Lz3/k;->D:[F

    .line 389
    .line 390
    array-length v5, v4

    .line 391
    if-ge v3, v5, :cond_197

    .line 392
    .line 393
    iget-object v5, v0, Lz3/k;->E:[F

    .line 394
    .line 395
    aget v4, v4, v3

    .line 396
    .line 397
    sub-float/2addr v4, v1

    .line 398
    const/4 v6, 0x0

    .line 399
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    aput v4, v5, v3

    .line 404
    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 406
    .line 407
    goto :goto_183

    .line 408
    :cond_197
    :goto_197
    iget-object v13, v0, Lz3/k;->A:Lz3/o;

    .line 409
    .line 410
    iget-object v14, v0, Lz3/k;->E:[F

    .line 411
    .line 412
    iget-object v1, v0, Lz3/k;->c:Lz3/h;

    .line 413
    .line 414
    iget v15, v1, Lz3/h;->j:F

    .line 415
    .line 416
    invoke-virtual {v0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iget-object v3, v0, Lz3/k;->m:Landroid/graphics/RectF;

    .line 421
    .line 422
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Lz3/k;->j()F

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 430
    .line 431
    .line 432
    const/16 v17, 0x0

    .line 433
    .line 434
    iget-object v1, v0, Lz3/k;->k:Landroid/graphics/Path;

    .line 435
    .line 436
    iget-object v12, v0, Lz3/k;->t:Lz3/q;

    .line 437
    .line 438
    move-object/from16 v18, v1

    .line 439
    .line 440
    move-object/from16 v16, v3

    .line 441
    .line 442
    invoke-virtual/range {v12 .. v18}, Lz3/q;->a(Lz3/o;[FFLandroid/graphics/RectF;Lz3/g;Landroid/graphics/Path;)V

    .line 443
    .line 444
    .line 445
    iput-boolean v11, v0, Lz3/k;->h:Z

    .line 446
    .line 447
    :cond_1be
    invoke-virtual/range {p0 .. p1}, Lz3/k;->g(Landroid/graphics/Canvas;)V

    .line 448
    .line 449
    .line 450
    :cond_1c1
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 454
    .line 455
    .line 456
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lz3/k;->f:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_f

    .line 8
    .line 9
    const-string v0, "k"

    .line 10
    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_f
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 17
    .line 18
    iget v0, v0, Lz3/h;->p:I

    .line 19
    .line 20
    iget-object v1, p0, Lz3/k;->j:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object v2, p0, Lz3/k;->r:Ly3/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1e

    .line 25
    .line 26
    iget-object v0, v2, Ly3/a;->a:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    move v3, v0

    .line 33
    :goto_20
    const/4 v4, 0x4

    .line 34
    if-ge v3, v4, :cond_3e

    .line 35
    .line 36
    iget-object v4, p0, Lz3/k;->d:[Lz3/x;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    iget-object v5, p0, Lz3/k;->c:Lz3/h;

    .line 41
    .line 42
    iget v5, v5, Lz3/h;->o:I

    .line 43
    .line 44
    sget-object v6, Lz3/x;->b:Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-virtual {v4, v6, v2, v5, p1}, Lz3/x;->a(Landroid/graphics/Matrix;Ly3/a;ILandroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lz3/k;->e:[Lz3/x;

    .line 50
    .line 51
    aget-object v4, v4, v3

    .line 52
    .line 53
    iget-object v5, p0, Lz3/k;->c:Lz3/h;

    .line 54
    .line 55
    iget v5, v5, Lz3/h;->o:I

    .line 56
    .line 57
    invoke-virtual {v4, v6, v2, v5, p1}, Lz3/x;->a(Landroid/graphics/Matrix;Ly3/a;ILandroid/graphics/Canvas;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_20

    .line 63
    :cond_3e
    iget-boolean v2, p0, Lz3/k;->y:Z

    .line 64
    .line 65
    if-eqz v2, :cond_72

    .line 66
    .line 67
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 68
    .line 69
    iget v2, v2, Lz3/h;->p:I

    .line 70
    .line 71
    int-to-double v2, v2

    .line 72
    int-to-double v4, v0

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    mul-double/2addr v6, v2

    .line 82
    double-to-int v0, v6

    .line 83
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 84
    .line 85
    iget v2, v2, Lz3/h;->p:I

    .line 86
    .line 87
    int-to-double v2, v2

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    mul-double/2addr v4, v2

    .line 97
    double-to-int v2, v4

    .line 98
    neg-int v3, v0

    .line 99
    int-to-float v3, v3

    .line 100
    neg-int v4, v2

    .line 101
    int-to-float v4, v4

    .line 102
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lz3/k;->G:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    int-to-float v0, v0

    .line 111
    int-to-float v1, v2

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    .line 114
    .line 115
    :cond_72
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lz3/o;[FLandroid/graphics/RectF;)V
    .registers 7

    .line 1
    invoke-static {p6, p4, p5}, Lz3/k;->c(Landroid/graphics/RectF;Lz3/o;[F)F

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 p5, 0x0

    .line 6
    cmpl-float p5, p4, p5

    .line 7
    .line 8
    if-ltz p5, :cond_12

    .line 9
    .line 10
    iget-object p3, p0, Lz3/k;->c:Lz3/h;

    .line 11
    .line 12
    iget p3, p3, Lz3/h;->j:F

    .line 13
    .line 14
    mul-float/2addr p4, p3

    .line 15
    invoke-virtual {p1, p6, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget-object v4, p0, Lz3/k;->A:Lz3/o;

    .line 2
    .line 3
    iget-object v5, p0, Lz3/k;->E:[F

    .line 4
    .line 5
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v6, p0, Lz3/k;->m:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lz3/k;->j()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 22
    .line 23
    iget-object v3, p0, Lz3/k;->k:Landroid/graphics/Path;

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    invoke-virtual/range {v0 .. v6}, Lz3/k;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lz3/o;[FLandroid/graphics/RectF;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v0, v0, Lz3/h;->l:I

    .line 4
    .line 5
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v1, p0, Lz3/k;->c:Lz3/h;

    .line 18
    .line 19
    iget-object v1, v1, Lz3/h;->a:Lz3/o;

    .line 20
    .line 21
    iget-object v2, p0, Lz3/k;->D:[F

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lz3/k;->c(Landroid/graphics/RectF;Lz3/o;[F)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    cmpl-float v2, v1, v2

    .line 29
    .line 30
    if-ltz v2, :cond_2c

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 37
    .line 38
    iget v2, v2, Lz3/h;->j:F

    .line 39
    .line 40
    mul-float/2addr v1, v2

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    iget-boolean v1, p0, Lz3/k;->g:Z

    .line 46
    .line 47
    iget-object v2, p0, Lz3/k;->j:Landroid/graphics/Path;

    .line 48
    .line 49
    if-eqz v1, :cond_38

    .line 50
    .line 51
    invoke-virtual {p0, v0, v2}, Lz3/k;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lz3/k;->g:Z

    .line 56
    .line 57
    :cond_38
    invoke-static {p1, v2}, Lo3/c;->e(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/h;->h:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lz3/k;->n:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lz3/k;->j:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lz3/k;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lz3/k;->o:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final h()Landroid/graphics/RectF;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lz3/k;->l:Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public final i()F
    .registers 6

    .line 1
    iget-object v0, p0, Lz3/k;->D:[F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    aget v2, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    aget v3, v0, v3

    .line 12
    .line 13
    add-float/2addr v2, v3

    .line 14
    const/4 v3, 0x1

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    sub-float/2addr v2, v3

    .line 18
    const/4 v3, 0x0

    .line 19
    aget v0, v0, v3

    .line 20
    .line 21
    sub-float/2addr v2, v0

    .line 22
    div-float/2addr v2, v1

    .line 23
    return v2

    .line 24
    :cond_17
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 29
    .line 30
    iget-object v2, v2, Lz3/h;->a:Lz3/o;

    .line 31
    .line 32
    iget-object v3, p0, Lz3/k;->t:Lz3/q;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Lz3/o;->e:Lz3/d;

    .line 38
    .line 39
    invoke-interface {v2, v0}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v4, p0, Lz3/k;->c:Lz3/h;

    .line 44
    .line 45
    iget-object v4, v4, Lz3/h;->a:Lz3/o;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v4, v4, Lz3/o;->h:Lz3/d;

    .line 51
    .line 52
    invoke-interface {v4, v0}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-float/2addr v4, v2

    .line 57
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 58
    .line 59
    iget-object v2, v2, Lz3/h;->a:Lz3/o;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v2, v2, Lz3/o;->g:Lz3/d;

    .line 65
    .line 66
    invoke-interface {v2, v0}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sub-float/2addr v4, v2

    .line 71
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 72
    .line 73
    iget-object v2, v2, Lz3/h;->a:Lz3/o;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Lz3/o;->f:Lz3/d;

    .line 79
    .line 80
    invoke-interface {v2, v0}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sub-float/2addr v4, v0

    .line 85
    div-float/2addr v4, v1

    .line 86
    return v4
.end method

.method public final invalidateSelf()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz3/k;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lz3/k;->h:Z

    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3e

    .line 6
    .line 7
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 8
    .line 9
    iget-object v0, v0, Lz3/h;->f:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_12

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3e

    .line 18
    .line 19
    :cond_12
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 25
    .line 26
    iget-object v0, v0, Lz3/h;->e:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_23

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3e

    .line 35
    .line 36
    :cond_23
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 37
    .line 38
    iget-object v0, v0, Lz3/h;->d:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v0, :cond_2f

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3e

    .line 47
    .line 48
    :cond_2f
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 49
    .line 50
    iget-object v0, v0, Lz3/h;->b:Lz3/b0;

    .line 51
    .line 52
    if-eqz v0, :cond_3c

    .line 53
    .line 54
    invoke-virtual {v0}, Lz3/b0;->d()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3c

    .line 59
    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    const/4 v0, 0x0

    .line 62
    return v0

    .line 63
    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    .line 64
    return v0
.end method

.method public final j()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lz3/k;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    iget-object v0, p0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final k()F
    .registers 3

    .line 1
    iget-object v0, p0, Lz3/k;->D:[F

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    aget v0, v0, v1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_8
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 10
    .line 11
    iget-object v0, v0, Lz3/h;->a:Lz3/o;

    .line 12
    .line 13
    iget-object v0, v0, Lz3/o;->e:Lz3/d;

    .line 14
    .line 15
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/h;->q:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_c

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_19

    .line 12
    .line 13
    :cond_c
    iget-object v0, p0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_19

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final m(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    new-instance v1, Lp3/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lp3/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lz3/h;->c:Lp3/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lz3/k;->x()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lz3/h;

    .line 2
    .line 3
    iget-object v1, p0, Lz3/k;->c:Lz3/h;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz3/h;-><init>(Lz3/h;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 9
    .line 10
    return-object p0
.end method

.method public final n()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/h;->a:Lz3/o;

    .line 4
    .line 5
    invoke-virtual {p0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lz3/o;->f(Landroid/graphics/RectF;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_34

    .line 15
    .line 16
    iget-object v0, p0, Lz3/k;->D:[F

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_33

    .line 20
    .line 21
    array-length v3, v0

    .line 22
    if-gt v3, v1, :cond_18

    .line 23
    .line 24
    goto :goto_28

    .line 25
    :cond_18
    aget v3, v0, v2

    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1b
    array-length v5, v0

    .line 29
    if-ge v4, v5, :cond_28

    .line 30
    .line 31
    aget v5, v0, v4

    .line 32
    .line 33
    cmpl-float v5, v5, v3

    .line 34
    .line 35
    if-eqz v5, :cond_25

    .line 36
    .line 37
    goto :goto_33

    .line 38
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_1b

    .line 41
    :cond_28
    :goto_28
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 42
    .line 43
    iget-object v0, v0, Lz3/h;->a:Lz3/o;

    .line 44
    .line 45
    invoke-virtual {v0}, Lz3/o;->e()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_33

    .line 50
    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    return v2

    .line 53
    :cond_34
    :goto_34
    return v1
.end method

.method public final o(Landroidx/dynamicanimation/animation/SpringForce;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lz3/k;->B:Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    .line 3
    if-eq v0, p1, :cond_43

    .line 4
    .line 5
    iput-object p1, p0, Lz3/k;->B:Landroidx/dynamicanimation/animation/SpringForce;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    iget-object v1, p0, Lz3/k;->C:[Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_38

    .line 12
    .line 13
    aget-object v2, v1, v0

    .line 14
    .line 15
    if-nez v2, :cond_1b

    .line 16
    .line 17
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 18
    .line 19
    sget-object v3, Lz3/k;->H:[Lz3/j;

    .line 20
    .line 21
    aget-object v3, v3, v0

    .line 22
    .line 23
    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 24
    .line 25
    .line 26
    aput-object v2, v1, v0

    .line 27
    .line 28
    :cond_1b
    aget-object v1, v1, v0

    .line 29
    .line 30
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    .line 31
    .line 32
    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_7

    .line 57
    :cond_38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lz3/k;->v([IZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lz3/k;->invalidateSelf()V

    .line 66
    .line 67
    .line 68
    :cond_43
    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz3/k;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lz3/k;->h:Z

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 10
    .line 11
    iget-object v0, v0, Lz3/h;->b:Lz3/b0;

    .line 12
    .line 13
    if-eqz v0, :cond_1d

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1d

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lz3/k;->z:Z

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lz3/k;->v([IZ)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lz3/k;->z:Z

    .line 35
    .line 36
    return-void
.end method

.method public onStateChange([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/h;->b:Lz3/b0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lz3/k;->v([IZ)V

    .line 9
    .line 10
    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lz3/k;->u([I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Lz3/k;->w()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez p1, :cond_16

    .line 20
    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    :cond_16
    const/4 v1, 0x1

    .line 24
    :cond_17
    if-eqz v1, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p0}, Lz3/k;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return v1
.end method

.method public final p(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v1, v0, Lz3/h;->n:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_d

    .line 8
    .line 9
    iput p1, v0, Lz3/h;->n:F

    .line 10
    .line 11
    invoke-virtual {p0}, Lz3/k;->x()V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public final q(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lz3/h;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_f

    .line 6
    .line 7
    iput-object p1, v0, Lz3/h;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lz3/k;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public final r(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v1, v0, Lz3/h;->j:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_12

    .line 8
    .line 9
    iput p1, v0, Lz3/h;->j:F

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lz3/k;->g:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lz3/k;->h:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lz3/k;->invalidateSelf()V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public final s()V
    .registers 3

    .line 1
    const v0, -0xbbbbbc

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lz3/k;->r:Ly3/a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ly3/a;->a(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v1, v0, Lz3/h;->l:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_b

    .line 6
    .line 7
    iput p1, v0, Lz3/h;->l:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(Lz3/o;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iput-object p1, v0, Lz3/h;->a:Lz3/o;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Lz3/h;->b:Lz3/b0;

    .line 7
    .line 8
    iput-object p1, p0, Lz3/k;->D:[F

    .line 9
    .line 10
    iput-object p1, p0, Lz3/k;->E:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lz3/k;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setTint(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lz3/k;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iput-object p1, v0, Lz3/h;->f:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Lz3/k;->w()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lz3/h;->g:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_e

    .line 6
    .line 7
    iput-object p1, v0, Lz3/h;->g:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lz3/k;->w()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final t(Lz3/b0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lz3/h;->b:Lz3/b0;

    .line 4
    .line 5
    if-eq v1, p1, :cond_13

    .line 6
    .line 7
    iput-object p1, v0, Lz3/h;->b:Lz3/b0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lz3/k;->v([IZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lz3/k;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public final u([I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/h;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1c

    .line 7
    .line 8
    iget-object v0, p0, Lz3/k;->p:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lz3/k;->c:Lz3/h;

    .line 15
    .line 16
    iget-object v3, v3, Lz3/h;->d:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_1c

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 31
    .line 32
    iget-object v2, v2, Lz3/h;->e:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_37

    .line 35
    .line 36
    iget-object v2, p0, Lz3/k;->q:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lz3/k;->c:Lz3/h;

    .line 43
    .line 44
    iget-object v4, v4, Lz3/h;->e:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_37

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_37
    return v0
.end method

.method public final v([IZ)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lz3/k;->h()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lz3/k;->c:Lz3/h;

    .line 10
    .line 11
    iget-object v3, v3, Lz3/h;->b:Lz3/b0;

    .line 12
    .line 13
    if-eqz v3, :cond_d3

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_16

    .line 20
    .line 21
    goto/16 :goto_d3

    .line 22
    .line 23
    :cond_16
    iget-object v3, v0, Lz3/k;->B:Landroidx/dynamicanimation/animation/SpringForce;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-nez v3, :cond_1d

    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v3, 0x0

    .line 31
    :goto_1e
    or-int v3, p2, v3

    .line 32
    .line 33
    iget-object v6, v0, Lz3/k;->D:[F

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    if-nez v6, :cond_29

    .line 37
    .line 38
    new-array v6, v7, [F

    .line 39
    .line 40
    iput-object v6, v0, Lz3/k;->D:[F

    .line 41
    .line 42
    :cond_29
    iget-object v6, v0, Lz3/k;->c:Lz3/h;

    .line 43
    .line 44
    iget-object v6, v6, Lz3/h;->b:Lz3/b0;

    .line 45
    .line 46
    iget-object v8, v6, Lz3/b0;->d:[Lz3/o;

    .line 47
    .line 48
    iget v9, v6, Lz3/b0;->a:I

    .line 49
    .line 50
    iget-object v10, v6, Lz3/b0;->c:[[I

    .line 51
    .line 52
    iget-object v11, v6, Lz3/b0;->h:Lz3/a0;

    .line 53
    .line 54
    iget-object v12, v6, Lz3/b0;->g:Lz3/a0;

    .line 55
    .line 56
    iget-object v13, v6, Lz3/b0;->f:Lz3/a0;

    .line 57
    .line 58
    iget-object v6, v6, Lz3/b0;->e:Lz3/a0;

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    :goto_3c
    if-ge v14, v9, :cond_4a

    .line 62
    .line 63
    aget-object v4, v10, v14

    .line 64
    .line 65
    invoke-static {v4, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_47

    .line 70
    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    add-int/lit8 v14, v14, 0x1

    .line 73
    .line 74
    goto :goto_3c

    .line 75
    :cond_4a
    const/4 v14, -0x1

    .line 76
    :goto_4b
    if-gez v14, :cond_61

    .line 77
    .line 78
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    .line 79
    .line 80
    const/4 v14, 0x0

    .line 81
    :goto_50
    if-ge v14, v9, :cond_5f

    .line 82
    .line 83
    aget-object v15, v10, v14

    .line 84
    .line 85
    invoke-static {v15, v4}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    if-eqz v15, :cond_5c

    .line 90
    .line 91
    move v15, v14

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    add-int/lit8 v14, v14, 0x1

    .line 94
    .line 95
    goto :goto_50

    .line 96
    :cond_5f
    const/4 v15, -0x1

    .line 97
    :goto_60
    move v14, v15

    .line 98
    :cond_61
    if-nez v6, :cond_6c

    .line 99
    .line 100
    if-nez v13, :cond_6c

    .line 101
    .line 102
    if-nez v12, :cond_6c

    .line 103
    .line 104
    if-nez v11, :cond_6c

    .line 105
    .line 106
    aget-object v1, v8, v14

    .line 107
    .line 108
    goto :goto_96

    .line 109
    :cond_6c
    aget-object v4, v8, v14

    .line 110
    .line 111
    invoke-virtual {v4}, Lz3/o;->g()Lz3/n;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-eqz v6, :cond_7a

    .line 116
    .line 117
    invoke-virtual {v6, v1}, Lz3/a0;->c([I)Lz3/d;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iput-object v6, v4, Lz3/n;->e:Lz3/d;

    .line 122
    .line 123
    :cond_7a
    if-eqz v13, :cond_82

    .line 124
    .line 125
    invoke-virtual {v13, v1}, Lz3/a0;->c([I)Lz3/d;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iput-object v6, v4, Lz3/n;->f:Lz3/d;

    .line 130
    .line 131
    :cond_82
    if-eqz v12, :cond_8a

    .line 132
    .line 133
    invoke-virtual {v12, v1}, Lz3/a0;->c([I)Lz3/d;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iput-object v6, v4, Lz3/n;->h:Lz3/d;

    .line 138
    .line 139
    :cond_8a
    if-eqz v11, :cond_92

    .line 140
    .line 141
    invoke-virtual {v11, v1}, Lz3/a0;->c([I)Lz3/d;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, v4, Lz3/n;->g:Lz3/d;

    .line 146
    .line 147
    :cond_92
    invoke-virtual {v4}, Lz3/n;->a()Lz3/o;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_96
    const/4 v4, 0x0

    .line 152
    :goto_97
    if-ge v4, v7, :cond_ce

    .line 153
    .line 154
    iget-object v6, v0, Lz3/k;->t:Lz3/q;

    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    if-eq v4, v5, :cond_af

    .line 160
    .line 161
    const/4 v6, 0x2

    .line 162
    if-eq v4, v6, :cond_ac

    .line 163
    .line 164
    const/4 v6, 0x3

    .line 165
    if-eq v4, v6, :cond_a9

    .line 166
    .line 167
    iget-object v6, v1, Lz3/o;->f:Lz3/d;

    .line 168
    .line 169
    goto :goto_b1

    .line 170
    :cond_a9
    iget-object v6, v1, Lz3/o;->e:Lz3/d;

    .line 171
    .line 172
    goto :goto_b1

    .line 173
    :cond_ac
    iget-object v6, v1, Lz3/o;->h:Lz3/d;

    .line 174
    .line 175
    goto :goto_b1

    .line 176
    :cond_af
    iget-object v6, v1, Lz3/o;->g:Lz3/d;

    .line 177
    .line 178
    :goto_b1
    invoke-interface {v6, v2}, Lz3/d;->a(Landroid/graphics/RectF;)F

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v3, :cond_bb

    .line 183
    .line 184
    iget-object v8, v0, Lz3/k;->D:[F

    .line 185
    .line 186
    aput v6, v8, v4

    .line 187
    .line 188
    :cond_bb
    iget-object v8, v0, Lz3/k;->C:[Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 189
    .line 190
    aget-object v9, v8, v4

    .line 191
    .line 192
    if-eqz v9, :cond_cb

    .line 193
    .line 194
    invoke-virtual {v9, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 195
    .line 196
    .line 197
    if-eqz v3, :cond_cb

    .line 198
    .line 199
    aget-object v6, v8, v4

    .line 200
    .line 201
    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 202
    .line 203
    .line 204
    :cond_cb
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    goto :goto_97

    .line 207
    :cond_ce
    if-eqz v3, :cond_d3

    .line 208
    .line 209
    invoke-virtual {v0}, Lz3/k;->invalidateSelf()V

    .line 210
    .line 211
    .line 212
    :cond_d3
    :goto_d3
    return-void
.end method

.method public final w()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lz3/k;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lz3/k;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 6
    .line 7
    iget-object v3, v2, Lz3/h;->f:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, Lz3/h;->g:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_25

    .line 13
    .line 14
    if-nez v2, :cond_10

    .line 15
    .line 16
    goto :goto_25

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3}, Lz3/k;->d(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iput v3, p0, Lz3/k;->w:I

    .line 31
    .line 32
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3c

    .line 38
    :cond_25
    :goto_25
    iget-object v2, p0, Lz3/k;->p:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, v2}, Lz3/k;->d(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, p0, Lz3/k;->w:I

    .line 49
    .line 50
    if-eq v3, v2, :cond_3b

    .line 51
    .line 52
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 53
    .line 54
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 v5, 0x0

    .line 61
    :goto_3c
    iput-object v5, p0, Lz3/k;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 62
    .line 63
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    iput-object v2, p0, Lz3/k;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 70
    .line 71
    iget-object v2, p0, Lz3/k;->c:Lz3/h;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lz3/k;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 77
    .line 78
    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5e

    .line 83
    .line 84
    iget-object v0, p0, Lz3/k;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 85
    .line 86
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5c

    .line 91
    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    const/4 v0, 0x0

    .line 94
    return v0

    .line 95
    :cond_5e
    :goto_5e
    return v4
.end method

.method public final x()V
    .registers 5

    .line 1
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 2
    .line 3
    iget v1, v0, Lz3/h;->n:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 8
    .line 9
    mul-float/2addr v2, v1

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v0, Lz3/h;->o:I

    .line 17
    .line 18
    iget-object v0, p0, Lz3/k;->c:Lz3/h;

    .line 19
    .line 20
    const/high16 v2, 0x3e800000    # 0.25f

    .line 21
    .line 22
    mul-float/2addr v1, v2

    .line 23
    float-to-double v1, v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-int v1, v1

    .line 29
    iput v1, v0, Lz3/h;->p:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lz3/k;->w()Z

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
