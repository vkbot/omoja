.class public final Lx0/c;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final s:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Lx0/o;

.field public final d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public final l:Le0/f;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/util/function/Consumer;

.field public o:Le0/u1;

.field public p:Ljava/lang/Object;

.field public q:Landroid/view/ViewTreeObserver;

.field public final r:Lt1/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lx0/c;->s:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx0/o;ZZ)V
    .registers 7

    .line 1
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 2
    .line 3
    const v1, 0x7f14028d

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lx0/c;->b:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lx0/c;->i:Ljava/util/HashMap;

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lx0/c;->j:Ljava/util/HashMap;

    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lx0/c;->k:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance p1, Le0/f;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-direct {p1, p0, v0}, Le0/f;-><init>(Lx0/c;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lx0/c;->l:Le0/f;

    .line 51
    .line 52
    new-instance p1, Lt1/l;

    .line 53
    .line 54
    invoke-direct {p1, v0, p0}, Lt1/l;-><init>(ILandroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lx0/c;->r:Lt1/l;

    .line 58
    .line 59
    iput-object p2, p0, Lx0/c;->c:Lx0/o;

    .line 60
    .line 61
    iput-boolean p3, p0, Lx0/c;->d:Z

    .line 62
    .line 63
    iget-boolean p1, p2, Lx0/o;->d:Z

    .line 64
    .line 65
    if-eqz p1, :cond_46

    .line 66
    .line 67
    if-eqz p4, :cond_46

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    const/4 p1, 0x0

    .line 72
    :goto_47
    iput-boolean p1, p0, Lx0/c;->e:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lx0/c;->k()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static h(Lx0/m;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Lx0/m;->c:Lx0/n;

    .line 2
    .line 3
    sget-object v0, Lx0/n;->d:Lx0/n;

    .line 4
    .line 5
    if-eq p0, v0, :cond_d

    .line 6
    .line 7
    sget-object v0, Lx0/n;->f:Lx0/n;

    .line 8
    .line 9
    if-ne p0, v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_d
    :goto_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static i(Lx0/m;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Lx0/m;->c:Lx0/n;

    .line 2
    .line 3
    sget-object v0, Lx0/n;->b:Lx0/n;

    .line 4
    .line 5
    if-eq p0, v0, :cond_c

    .line 6
    .line 7
    sget-object v0, Lx0/n;->c:Lx0/n;

    .line 8
    .line 9
    if-eq p0, v0, :cond_c

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static n(Lx0/m;)I
    .registers 2

    .line 1
    iget-object p0, p0, Lx0/m;->c:Lx0/n;

    .line 2
    .line 3
    sget-object v0, Lx0/n;->d:Lx0/n;

    .line 4
    .line 5
    if-eq p0, v0, :cond_d

    .line 6
    .line 7
    sget-object v0, Lx0/n;->e:Lx0/n;

    .line 8
    .line 9
    if-ne p0, v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p0, 0x2

    .line 13
    return p0

    .line 14
    :cond_d
    :goto_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;IIII)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lx0/c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    iget-boolean v0, p0, Lx0/c;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_14

    .line 8
    .line 9
    invoke-virtual {p0}, Lx0/c;->e()[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    aget v1, v0, v1

    .line 15
    .line 16
    sub-int/2addr p2, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    sub-int/2addr p3, v0

    .line 21
    :cond_14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {p0, p4}, Lx0/c;->f(I)I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    invoke-virtual {p0, p5}, Lx0/c;->f(I)I

    .line 28
    .line 29
    .line 30
    move-result p5

    .line 31
    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lx0/c;->p(I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lx0/c;->p(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lx0/c;->o()F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lx0/c;->o()F

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final b()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lx0/c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    iget-boolean v1, p0, Lx0/c;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_19

    .line 10
    :cond_9
    invoke-virtual {p0}, Lx0/c;->e()[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    invoke-virtual {p0}, Lx0/c;->e()[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aget v1, v1, v2

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    return v0

    .line 26
    :cond_19
    :goto_19
    iget-object v1, p0, Lx0/c;->c:Lx0/o;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lx0/o;->c(Z)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final c()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lx0/c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    iget-boolean v1, p0, Lx0/c;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_19

    .line 10
    :cond_9
    invoke-virtual {p0}, Lx0/c;->e()[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    invoke-virtual {p0}, Lx0/c;->e()[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    aget v1, v1, v2

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    return v0

    .line 26
    :cond_19
    :goto_19
    iget-object v1, p0, Lx0/c;->c:Lx0/o;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lx0/o;->f(Z)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final d(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    iget-object v0, p0, Lx0/c;->b:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lx0/c;->l:Le0/f;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_21

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x3

    .line 30
    if-ne p1, v1, :cond_20

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    return v0

    .line 34
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lx0/c;->l()V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method public final e()[I
    .registers 14

    .line 1
    iget-object v0, p0, Lx0/c;->c:Lx0/o;

    .line 2
    .line 3
    iget-boolean v1, v0, Lx0/o;->d:Z

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    iget v3, v0, Lx0/o;->n:I

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v2

    .line 14
    :goto_d
    if-eqz v1, :cond_12

    .line 15
    .line 16
    iget v4, v0, Lx0/o;->o:I

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v4, v2

    .line 20
    :goto_13
    const/high16 v5, -0x80000000

    .line 21
    .line 22
    if-eqz v1, :cond_1a

    .line 23
    .line 24
    add-int/lit8 v6, v3, 0x40

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v6, v5

    .line 28
    :goto_1b
    if-eqz v1, :cond_1f

    .line 29
    .line 30
    add-int/lit8 v5, v4, 0x40

    .line 31
    .line 32
    :cond_1f
    iget-object v1, v0, Lx0/o;->u:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x0

    .line 39
    move v9, v8

    .line 40
    :cond_27
    :goto_27
    if-ge v9, v7, :cond_58

    .line 41
    .line 42
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    add-int/lit8 v9, v9, 0x1

    .line 47
    .line 48
    check-cast v10, Lx0/m;

    .line 49
    .line 50
    iget-boolean v11, v10, Lx0/m;->f:Z

    .line 51
    .line 52
    if-eqz v11, :cond_27

    .line 53
    .line 54
    iget v11, v10, Lx0/m;->i:I

    .line 55
    .line 56
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget v11, v10, Lx0/m;->j:I

    .line 61
    .line 62
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget v11, v10, Lx0/m;->i:I

    .line 67
    .line 68
    invoke-virtual {v10}, Lx0/m;->b()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    add-int/2addr v12, v11

    .line 73
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget v11, v10, Lx0/m;->j:I

    .line 78
    .line 79
    invoke-virtual {v10}, Lx0/m;->a()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    add-int/2addr v10, v11

    .line 84
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    goto :goto_27

    .line 89
    :cond_58
    if-ne v3, v2, :cond_60

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    filled-new-array {v8, v8, v0, v0}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_60
    iget-boolean v1, v0, Lx0/o;->d:Z

    .line 98
    .line 99
    if-eqz v1, :cond_88

    .line 100
    .line 101
    iget-boolean v1, v0, Lx0/o;->t:Z

    .line 102
    .line 103
    if-eqz v1, :cond_88

    .line 104
    .line 105
    iget v1, v0, Lx0/o;->n:I

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x20

    .line 108
    .line 109
    iget v2, v0, Lx0/o;->o:I

    .line 110
    .line 111
    add-int/lit8 v2, v2, 0x20

    .line 112
    .line 113
    sub-int v3, v1, v3

    .line 114
    .line 115
    sub-int/2addr v6, v1

    .line 116
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    sub-int v4, v2, v4

    .line 121
    .line 122
    sub-int/2addr v5, v2

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    sub-int v5, v1, v3

    .line 128
    .line 129
    add-int v6, v1, v3

    .line 130
    .line 131
    sub-int v1, v2, v4

    .line 132
    .line 133
    add-int/2addr v2, v4

    .line 134
    move v4, v1

    .line 135
    move v3, v5

    .line 136
    move v5, v2

    .line 137
    :cond_88
    iget-boolean v0, v0, Lx0/o;->g:Z

    .line 138
    .line 139
    if-eqz v0, :cond_a0

    .line 140
    .line 141
    sub-int/2addr v6, v3

    .line 142
    sub-int/2addr v5, v4

    .line 143
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    sub-int v1, v0, v6

    .line 148
    .line 149
    sub-int v2, v0, v5

    .line 150
    .line 151
    div-int/lit8 v1, v1, 0x2

    .line 152
    .line 153
    sub-int/2addr v3, v1

    .line 154
    add-int v6, v3, v0

    .line 155
    .line 156
    div-int/lit8 v2, v2, 0x2

    .line 157
    .line 158
    sub-int/2addr v4, v2

    .line 159
    add-int v5, v4, v0

    .line 160
    .line 161
    :cond_a0
    filled-new-array {v3, v4, v6, v5}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method

.method public final f(I)I
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final g(Lx0/m;Landroid/view/View;)V
    .registers 6

    .line 1
    new-instance v0, Lx0/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lx0/b;-><init>(Lx0/c;Lx0/m;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    instance-of p1, p2, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz p1, :cond_21

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    move v0, p1

    .line 15
    :goto_e
    move-object v1, p2

    .line 16
    check-cast v1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_21

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_e

    .line 34
    :cond_21
    return-void
.end method

.method public final j()V
    .registers 12

    .line 1
    iget-object v0, p0, Lx0/c;->c:Lx0/o;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/o;->u:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    if-ge v3, v1, :cond_d8

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    check-cast v4, Lx0/m;

    .line 20
    .line 21
    iget-object v5, p0, Lx0/c;->j:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v6, v4, Lx0/m;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, [Landroid/view/View;

    .line 30
    .line 31
    if-nez v5, :cond_21

    .line 32
    .line 33
    goto :goto_a

    .line 34
    :cond_21
    iget-object v6, v4, Lx0/m;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v8, p0, Lx0/c;->i:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-static {v4}, Lx0/c;->h(Lx0/m;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_44

    .line 57
    .line 58
    const/16 v7, 0xaa

    .line 59
    .line 60
    const/16 v8, 0x64

    .line 61
    .line 62
    const/16 v9, 0xff

    .line 63
    .line 64
    invoke-static {v9, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    goto :goto_4b

    .line 69
    :cond_44
    const v7, 0x7f05037b

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v7}, Lx0/c;->d(I)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    :goto_4b
    move v8, v2

    .line 77
    :goto_4c
    array-length v9, v5

    .line 78
    if-ge v8, v9, :cond_73

    .line 79
    .line 80
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    .line 82
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v10, 0x3

    .line 86
    invoke-virtual {p0, v10}, Lx0/c;->f(I)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    int-to-float v10, v10

    .line 91
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 92
    .line 93
    .line 94
    if-ge v8, v6, :cond_61

    .line 95
    .line 96
    move v10, v7

    .line 97
    goto :goto_68

    .line 98
    :cond_61
    const v10, 0x7f050379

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v10}, Lx0/c;->d(I)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    :goto_68
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 106
    .line 107
    .line 108
    aget-object v10, v5, v8

    .line 109
    .line 110
    invoke-virtual {v10, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    .line 115
    goto :goto_4c

    .line 116
    :cond_73
    aget-object v5, v5, v2

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Landroid/widget/ImageView;

    .line 135
    .line 136
    if-lez v6, :cond_8a

    .line 137
    .line 138
    goto :goto_91

    .line 139
    :cond_8a
    const v7, 0x7f050382

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v7}, Lx0/c;->d(I)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    :goto_91
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    .line 152
    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v4, v4, Lx0/m;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v4, 0x8

    .line 164
    .line 165
    if-nez v6, :cond_b7

    .line 166
    .line 167
    const/16 v6, 0x14

    .line 168
    .line 169
    new-array v6, v6, [B

    .line 170
    .line 171
    fill-array-data v6, :array_da

    .line 172
    .line 173
    .line 174
    new-array v4, v4, [B

    .line 175
    .line 176
    fill-array-data v4, :array_e8

    .line 177
    .line 178
    .line 179
    invoke-static {v6, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    goto :goto_cc

    .line 184
    :cond_b7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const/16 v9, 0x11

    .line 190
    .line 191
    new-array v9, v9, [B

    .line 192
    .line 193
    fill-array-data v9, :array_f0

    .line 194
    .line 195
    .line 196
    new-array v4, v4, [B

    .line 197
    .line 198
    fill-array-data v4, :array_fe

    .line 199
    .line 200
    .line 201
    invoke-static {v9, v4, v8, v6}, Lcom/google/protobuf/q;->j([B[BLjava/lang/StringBuilder;I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    :goto_cc
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_a

    .line 216
    .line 217
    :cond_d8
    return-void

    .line 218
    nop

    .line 219
    :array_da
    .array-data 1
        -0x1ct
        -0x8t
        0x49t
        0x44t
        -0x8t
        -0x37t
        0x9t
        0x43t
        0x18t
        0x63t
        0x48t
        0x78t
        -0x8t
        -0x3bt
        0x9t
        0x4ct
        0x18t
        0x65t
        0x49t
        0x48t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_e8
    .array-data 1
        -0x38t
        -0x28t
        -0x67t
        -0xat
        0x29t
        0x42t
        -0x27t
        -0x7t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        0x5ft
        -0x7dt
        -0x71t
        0x61t
        -0x32t
        -0x17t
        0x27t
        0x5ct
        -0x5dt
        0x11t
        -0x72t
        0x57t
        -0x31t
        -0x2ct
        0x26t
        0x6et
        0x53t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_fe
    .array-data 1
        0x73t
        -0x5dt
        0x5et
        -0x1et
        0x1ft
        0x69t
        -0x9t
        -0x1et
    .end array-data
.end method

.method public final k()V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v6, v0, Lx0/c;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v7, v0, Lx0/c;->c:Lx0/o;

    .line 12
    .line 13
    iget v1, v7, Lx0/o;->j:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    const/high16 v2, 0x42c80000    # 100.0f

    .line 17
    .line 18
    div-float/2addr v1, v2

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    sub-float/2addr v2, v1

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lx0/c;->c()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Lx0/c;->p(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lx0/c;->b()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lx0/c;->p(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lx0/c;->s()V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, v0, Lx0/c;->e:Z

    .line 51
    .line 52
    const/16 v8, 0x10

    .line 53
    .line 54
    if-eqz v1, :cond_67

    .line 55
    .line 56
    iget-object v1, v7, Lx0/o;->b:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v2, 0xf

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lx0/c;->r(ILjava/lang/String;)Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lx0/c;->c()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-boolean v3, v7, Lx0/o;->d:Z

    .line 72
    .line 73
    if-eqz v3, :cond_4d

    .line 74
    .line 75
    const/16 v3, 0x4c

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    const/16 v3, 0x20

    .line 79
    .line 80
    :goto_4f
    sub-int v4, v2, v3

    .line 81
    .line 82
    const/16 v5, 0x28

    .line 83
    .line 84
    const/16 v2, 0x10

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-virtual/range {v0 .. v5}, Lx0/c;->a(Landroid/view/View;IIII)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lx0/c;->o:Le0/u1;

    .line 91
    .line 92
    if-eqz v2, :cond_67

    .line 93
    .line 94
    iget-object v3, v2, Le0/u1;->d:Ljava/lang/Runnable;

    .line 95
    .line 96
    new-instance v4, Le0/t1;

    .line 97
    .line 98
    invoke-direct {v4, v2, v3}, Le0/t1;-><init>(Le0/u1;Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    iget-object v10, v7, Lx0/o;->u:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    const/4 v1, 0x0

    .line 111
    :goto_6e
    const/4 v5, 0x4

    .line 112
    iget-boolean v14, v0, Lx0/c;->d:Z

    .line 113
    .line 114
    const/4 v15, 0x1

    .line 115
    if-ge v1, v11, :cond_312

    .line 116
    .line 117
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    add-int/lit8 v17, v1, 0x1

    .line 122
    .line 123
    move-object/from16 v1, v16

    .line 124
    .line 125
    check-cast v1, Lx0/m;

    .line 126
    .line 127
    iget-boolean v2, v0, Lx0/c;->e:Z

    .line 128
    .line 129
    if-nez v2, :cond_89

    .line 130
    .line 131
    iget-boolean v2, v1, Lx0/m;->f:Z

    .line 132
    .line 133
    if-nez v2, :cond_89

    .line 134
    .line 135
    move/from16 v1, v17

    .line 136
    .line 137
    goto :goto_6e

    .line 138
    :cond_89
    new-instance v2, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    .line 149
    .line 150
    const/16 v9, 0x11

    .line 151
    .line 152
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    const/4 v9, 0x6

    .line 156
    invoke-virtual {v0, v9}, Lx0/c;->f(I)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    invoke-virtual {v0, v9}, Lx0/c;->f(I)I

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    invoke-virtual {v0, v9}, Lx0/c;->f(I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual {v0, v9}, Lx0/c;->f(I)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    invoke-virtual {v2, v15, v12, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 173
    .line 174
    .line 175
    const v4, 0x7f050380

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v4}, Lx0/c;->d(I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {v0, v4, v8}, Lx0/c;->q(II)Landroid/graphics/drawable/GradientDrawable;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .line 188
    .line 189
    const/4 v9, 0x2

    .line 190
    invoke-virtual {v0, v9}, Lx0/c;->f(I)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    int-to-float v4, v4

    .line 195
    invoke-virtual {v2, v4}, Landroid/view/View;->setElevation(F)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Lx0/m;->b:Ljava/lang/String;

    .line 199
    .line 200
    const/16 v12, 0xb

    .line 201
    .line 202
    invoke-virtual {v0, v12, v4}, Lx0/c;->r(ILjava/lang/String;)Landroid/widget/TextView;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    .line 208
    .line 209
    iget-object v12, v1, Lx0/m;->b:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v15, v1, Lx0/m;->c:Lx0/n;

    .line 212
    .line 213
    sget-object v8, Lx0/n;->b:Lx0/n;

    .line 214
    .line 215
    const/16 v9, 0xc

    .line 216
    .line 217
    const/4 v13, -0x1

    .line 218
    if-ne v15, v8, :cond_172

    .line 219
    .line 220
    iget-object v4, v1, Lx0/m;->d:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-static {v8, v4}, Lj0/f;->b(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v2, v8, v12, v15, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 247
    .line 248
    .line 249
    new-instance v3, Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 259
    .line 260
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-virtual {v3, v8, v12, v15, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 280
    .line 281
    .line 282
    const/16 v5, 0x84

    .line 283
    .line 284
    const/16 v8, 0x92

    .line 285
    .line 286
    const/16 v12, 0x69

    .line 287
    .line 288
    invoke-static {v12, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    invoke-virtual {v0, v5, v9}, Lx0/c;->q(II)Landroid/graphics/drawable/GradientDrawable;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v4, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 300
    .line 301
    if-eqz v5, :cond_132

    .line 302
    .line 303
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    .line 305
    .line 306
    goto :goto_146

    .line 307
    :cond_132
    const v5, 0x1080040

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    .line 312
    .line 313
    const v5, 0x7f050381

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v5}, Lx0/c;->d(I)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 325
    .line 326
    .line 327
    :goto_146
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 328
    .line 329
    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    iget-object v3, v4, Lj0/e;->i:Ljava/lang/String;

    .line 336
    .line 337
    if-eqz v3, :cond_161

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_15d

    .line 348
    .line 349
    goto :goto_161

    .line 350
    :cond_15d
    iget-object v3, v4, Lj0/e;->i:Ljava/lang/String;

    .line 351
    .line 352
    :goto_15f
    move-object v12, v3

    .line 353
    goto :goto_164

    .line 354
    :cond_161
    :goto_161
    iget-object v3, v1, Lx0/m;->b:Ljava/lang/String;

    .line 355
    .line 356
    goto :goto_15f

    .line 357
    :goto_164
    if-nez v14, :cond_2a7

    .line 358
    .line 359
    new-instance v3, Landroidx/navigation/ui/a;

    .line 360
    .line 361
    const/16 v5, 0x18

    .line 362
    .line 363
    invoke-direct {v3, v5, v0, v4}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_2a7

    .line 370
    .line 371
    :cond_172
    sget-object v3, Lx0/n;->c:Lx0/n;

    .line 372
    .line 373
    if-ne v15, v3, :cond_1e2

    .line 374
    .line 375
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    new-instance v3, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const/4 v8, 0x0

    .line 385
    invoke-direct {v3, v4, v8}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 386
    .line 387
    .line 388
    iget-object v4, v1, Lx0/m;->b:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    iget-object v4, v1, Lx0/m;->a:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    const/16 v13, 0xd

    .line 405
    .line 406
    new-array v13, v13, [B

    .line 407
    .line 408
    fill-array-data v13, :array_3d8

    .line 409
    .line 410
    .line 411
    const/16 v15, 0x8

    .line 412
    .line 413
    new-array v15, v15, [B

    .line 414
    .line 415
    fill-array-data v15, :array_3e4

    .line 416
    .line 417
    .line 418
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget-object v13, v7, Lx0/o;->a:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v13, v1, Lx0/m;->a:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    const/4 v13, 0x0

    .line 440
    invoke-virtual {v8, v9, v13}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    iget-object v9, v0, Lx0/c;->k:Ljava/util/HashMap;

    .line 449
    .line 450
    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    check-cast v4, Ljava/lang/Boolean;

    .line 455
    .line 456
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 461
    .line 462
    .line 463
    xor-int/lit8 v4, v14, 0x1

    .line 464
    .line 465
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    .line 470
    .line 471
    if-nez v14, :cond_2a7

    .line 472
    .line 473
    new-instance v4, Le0/c3;

    .line 474
    .line 475
    invoke-direct {v4, v5, v0, v1}, Le0/c3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_2a7

    .line 482
    .line 483
    :cond_1e2
    new-instance v3, Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v1}, Lx0/c;->h(Lx0/m;)Z

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-eqz v5, :cond_200

    .line 497
    .line 498
    invoke-static {v1}, Lx0/c;->n(Lx0/m;)I

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    const/4 v8, 0x1

    .line 503
    if-ne v5, v8, :cond_1fc

    .line 504
    .line 505
    const v5, 0x7f0700b2

    .line 506
    .line 507
    .line 508
    goto :goto_20e

    .line 509
    :cond_1fc
    const v5, 0x7f0700b7

    .line 510
    .line 511
    .line 512
    goto :goto_20e

    .line 513
    :cond_200
    const/4 v8, 0x1

    .line 514
    invoke-static {v1}, Lx0/c;->n(Lx0/m;)I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    if-ne v5, v8, :cond_20b

    .line 519
    .line 520
    const v5, 0x7f0700bd

    .line 521
    .line 522
    .line 523
    goto :goto_20e

    .line 524
    :cond_20b
    const v5, 0x7f0700be

    .line 525
    .line 526
    .line 527
    :goto_20e
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    .line 529
    .line 530
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 531
    .line 532
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 533
    .line 534
    .line 535
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    .line 537
    const/16 v8, 0x20

    .line 538
    .line 539
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 540
    .line 541
    .line 542
    move-result v15

    .line 543
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    invoke-direct {v5, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    .line 552
    .line 553
    const/high16 v3, 0x41100000    # 9.0f

    .line 554
    .line 555
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 556
    .line 557
    .line 558
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 559
    .line 560
    const/16 v5, 0x1c

    .line 561
    .line 562
    invoke-virtual {v0, v5}, Lx0/c;->f(I)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    invoke-direct {v3, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    .line 571
    .line 572
    new-instance v3, Landroid/widget/LinearLayout;

    .line 573
    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 579
    .line 580
    .line 581
    const/16 v4, 0x11

    .line 582
    .line 583
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 584
    .line 585
    .line 586
    const/4 v4, 0x3

    .line 587
    new-array v5, v4, [Landroid/view/View;

    .line 588
    .line 589
    const/4 v9, 0x0

    .line 590
    :goto_24d
    if-ge v9, v4, :cond_287

    .line 591
    .line 592
    new-instance v4, Landroid/view/View;

    .line 593
    .line 594
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 595
    .line 596
    .line 597
    move-result-object v15

    .line 598
    invoke-direct {v4, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 599
    .line 600
    .line 601
    aput-object v4, v5, v9

    .line 602
    .line 603
    const/4 v15, 0x2

    .line 604
    invoke-virtual {v4, v15}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 605
    .line 606
    .line 607
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    .line 609
    const/16 v8, 0xe

    .line 610
    .line 611
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 612
    .line 613
    .line 614
    move-result v8

    .line 615
    const/4 v13, 0x5

    .line 616
    invoke-virtual {v0, v13}, Lx0/c;->f(I)I

    .line 617
    .line 618
    .line 619
    move-result v13

    .line 620
    invoke-direct {v15, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 621
    .line 622
    .line 623
    const/4 v8, 0x3

    .line 624
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 625
    .line 626
    .line 627
    move-result v13

    .line 628
    move/from16 v18, v9

    .line 629
    .line 630
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 631
    .line 632
    .line 633
    move-result v9

    .line 634
    const/4 v8, 0x0

    .line 635
    invoke-virtual {v15, v13, v8, v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v3, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    .line 640
    .line 641
    add-int/lit8 v9, v18, 0x1

    .line 642
    .line 643
    const/4 v4, 0x3

    .line 644
    const/16 v8, 0x20

    .line 645
    .line 646
    const/4 v13, -0x1

    .line 647
    goto :goto_24d

    .line 648
    :cond_287
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 649
    .line 650
    const/16 v8, 0xc

    .line 651
    .line 652
    invoke-virtual {v0, v8}, Lx0/c;->f(I)I

    .line 653
    .line 654
    .line 655
    move-result v8

    .line 656
    const/4 v9, -0x1

    .line 657
    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    .line 662
    .line 663
    iget-object v3, v1, Lx0/m;->a:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    if-nez v14, :cond_2a7

    .line 669
    .line 670
    new-instance v3, Landroidx/navigation/ui/a;

    .line 671
    .line 672
    const/16 v4, 0x19

    .line 673
    .line 674
    invoke-direct {v3, v4, v0, v1}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    .line 679
    .line 680
    :cond_2a7
    :goto_2a7
    invoke-virtual {v2, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 681
    .line 682
    .line 683
    iget-boolean v3, v0, Lx0/c;->e:Z

    .line 684
    .line 685
    if-eqz v3, :cond_2b1

    .line 686
    .line 687
    iget v4, v1, Lx0/m;->g:I

    .line 688
    .line 689
    goto :goto_2b3

    .line 690
    :cond_2b1
    iget v4, v1, Lx0/m;->i:I

    .line 691
    .line 692
    :goto_2b3
    if-eqz v3, :cond_2bc

    .line 693
    .line 694
    iget v3, v1, Lx0/m;->h:I

    .line 695
    .line 696
    :goto_2b7
    move-object/from16 v16, v1

    .line 697
    .line 698
    move-object v1, v2

    .line 699
    move v2, v4

    .line 700
    goto :goto_2bf

    .line 701
    :cond_2bc
    iget v3, v1, Lx0/m;->j:I

    .line 702
    .line 703
    goto :goto_2b7

    .line 704
    :goto_2bf
    invoke-virtual/range {v16 .. v16}, Lx0/m;->b()I

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    invoke-virtual/range {v16 .. v16}, Lx0/m;->a()I

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    move-object/from16 v8, v16

    .line 713
    .line 714
    invoke-virtual/range {v0 .. v5}, Lx0/c;->a(Landroid/view/View;IIII)V

    .line 715
    .line 716
    .line 717
    if-eqz v14, :cond_2d2

    .line 718
    .line 719
    invoke-virtual {v0, v8, v1}, Lx0/c;->g(Lx0/m;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    goto :goto_30c

    .line 723
    :cond_2d2
    iget-object v2, v0, Lx0/c;->o:Le0/u1;

    .line 724
    .line 725
    if-eqz v2, :cond_30c

    .line 726
    .line 727
    new-instance v2, Lf5/j;

    .line 728
    .line 729
    const/16 v3, 0x17

    .line 730
    .line 731
    invoke-direct {v2, v3, v1}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    iget-object v3, v8, Lx0/m;->c:Lx0/n;

    .line 735
    .line 736
    sget-object v4, Lx0/n;->c:Lx0/n;

    .line 737
    .line 738
    if-ne v3, v4, :cond_2ff

    .line 739
    .line 740
    const/4 v8, 0x1

    .line 741
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    new-instance v3, Ls3/o;

    .line 749
    .line 750
    const/4 v15, 0x2

    .line 751
    invoke-direct {v3, v15, v2}, Ls3/o;-><init>(ILandroid/view/View;)V

    .line 752
    .line 753
    .line 754
    iget-object v4, v0, Lx0/c;->o:Le0/u1;

    .line 755
    .line 756
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    new-instance v5, Le0/t1;

    .line 760
    .line 761
    invoke-direct {v5, v4, v3}, Le0/t1;-><init>(Le0/u1;Ljava/lang/Runnable;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    .line 766
    .line 767
    move-object v2, v3

    .line 768
    :cond_2ff
    iget-object v3, v0, Lx0/c;->o:Le0/u1;

    .line 769
    .line 770
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    new-instance v4, Le0/t1;

    .line 774
    .line 775
    invoke-direct {v4, v3, v2}, Le0/t1;-><init>(Le0/u1;Ljava/lang/Runnable;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 779
    .line 780
    .line 781
    :cond_30c
    :goto_30c
    move/from16 v1, v17

    .line 782
    .line 783
    const/16 v8, 0x10

    .line 784
    .line 785
    goto/16 :goto_6e

    .line 786
    .line 787
    :cond_312
    iget-boolean v1, v7, Lx0/o;->d:Z

    .line 788
    .line 789
    if-eqz v1, :cond_3d0

    .line 790
    .line 791
    iget-boolean v1, v0, Lx0/c;->e:Z

    .line 792
    .line 793
    if-eqz v1, :cond_32f

    .line 794
    .line 795
    const/4 v4, 0x3

    .line 796
    new-array v1, v4, [B

    .line 797
    .line 798
    fill-array-data v1, :array_3ec

    .line 799
    .line 800
    .line 801
    const/16 v15, 0x8

    .line 802
    .line 803
    new-array v2, v15, [B

    .line 804
    .line 805
    fill-array-data v2, :array_3f2

    .line 806
    .line 807
    .line 808
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    const/4 v8, 0x0

    .line 813
    :goto_32c
    const/16 v2, 0x18

    .line 814
    .line 815
    goto :goto_343

    .line 816
    :cond_32f
    const/4 v8, 0x1

    .line 817
    const/16 v15, 0x8

    .line 818
    .line 819
    new-array v1, v8, [B

    .line 820
    .line 821
    const/16 v2, -0x50

    .line 822
    .line 823
    const/4 v8, 0x0

    .line 824
    aput-byte v2, v1, v8

    .line 825
    .line 826
    new-array v2, v15, [B

    .line 827
    .line 828
    fill-array-data v2, :array_3fa

    .line 829
    .line 830
    .line 831
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    goto :goto_32c

    .line 836
    :goto_343
    invoke-virtual {v0, v2, v1}, Lx0/c;->r(ILjava/lang/String;)Landroid/widget/TextView;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 841
    .line 842
    .line 843
    iget-boolean v2, v0, Lx0/c;->e:Z

    .line 844
    .line 845
    if-eqz v2, :cond_35f

    .line 846
    .line 847
    const/16 v2, 0x1d

    .line 848
    .line 849
    new-array v2, v2, [B

    .line 850
    .line 851
    fill-array-data v2, :array_402

    .line 852
    .line 853
    .line 854
    new-array v3, v15, [B

    .line 855
    .line 856
    fill-array-data v3, :array_416

    .line 857
    .line 858
    .line 859
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    goto :goto_36f

    .line 864
    :cond_35f
    const/16 v2, 0x1d

    .line 865
    .line 866
    new-array v2, v2, [B

    .line 867
    .line 868
    fill-array-data v2, :array_41e

    .line 869
    .line 870
    .line 871
    new-array v3, v15, [B

    .line 872
    .line 873
    fill-array-data v3, :array_432

    .line 874
    .line 875
    .line 876
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    :goto_36f
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 881
    .line 882
    .line 883
    const v2, 0x7f05037c

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v2}, Lx0/c;->d(I)I

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    const/16 v3, 0x14

    .line 891
    .line 892
    invoke-virtual {v0, v2, v3}, Lx0/c;->q(II)Landroid/graphics/drawable/GradientDrawable;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 897
    .line 898
    .line 899
    iget-boolean v2, v0, Lx0/c;->e:Z

    .line 900
    .line 901
    if-eqz v2, :cond_38d

    .line 902
    .line 903
    invoke-virtual {v0}, Lx0/c;->c()I

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    add-int/lit8 v2, v2, -0x38

    .line 908
    .line 909
    goto :goto_38f

    .line 910
    :cond_38d
    iget v2, v7, Lx0/o;->n:I

    .line 911
    .line 912
    :goto_38f
    iget-boolean v3, v0, Lx0/c;->e:Z

    .line 913
    .line 914
    if-eqz v3, :cond_394

    .line 915
    .line 916
    goto :goto_396

    .line 917
    :cond_394
    iget v5, v7, Lx0/o;->o:I

    .line 918
    .line 919
    :goto_396
    const/16 v4, 0x40

    .line 920
    .line 921
    if-eqz v3, :cond_39d

    .line 922
    .line 923
    const/16 v6, 0x30

    .line 924
    .line 925
    goto :goto_39e

    .line 926
    :cond_39d
    move v6, v4

    .line 927
    :goto_39e
    if-eqz v3, :cond_3a5

    .line 928
    .line 929
    move v3, v5

    .line 930
    const/16 v5, 0x20

    .line 931
    .line 932
    :goto_3a3
    move v4, v6

    .line 933
    goto :goto_3a8

    .line 934
    :cond_3a5
    move v3, v5

    .line 935
    move v5, v4

    .line 936
    goto :goto_3a3

    .line 937
    :goto_3a8
    invoke-virtual/range {v0 .. v5}, Lx0/c;->a(Landroid/view/View;IIII)V

    .line 938
    .line 939
    .line 940
    if-eqz v14, :cond_3b6

    .line 941
    .line 942
    iget-boolean v2, v0, Lx0/c;->e:Z

    .line 943
    .line 944
    if-nez v2, :cond_3b6

    .line 945
    .line 946
    const/4 v8, 0x0

    .line 947
    invoke-virtual {v0, v8, v1}, Lx0/c;->g(Lx0/m;Landroid/view/View;)V

    .line 948
    .line 949
    .line 950
    goto :goto_3d0

    .line 951
    :cond_3b6
    if-nez v14, :cond_3d0

    .line 952
    .line 953
    new-instance v2, Landroidx/navigation/c;

    .line 954
    .line 955
    const/16 v3, 0x16

    .line 956
    .line 957
    invoke-direct {v2, v3, v0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    .line 962
    .line 963
    iget-object v2, v0, Lx0/c;->o:Le0/u1;

    .line 964
    .line 965
    if-eqz v2, :cond_3d0

    .line 966
    .line 967
    iget-object v3, v2, Le0/u1;->d:Ljava/lang/Runnable;

    .line 968
    .line 969
    new-instance v4, Le0/t1;

    .line 970
    .line 971
    invoke-direct {v4, v2, v3}, Le0/t1;-><init>(Le0/u1;Ljava/lang/Runnable;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 975
    .line 976
    .line 977
    :cond_3d0
    :goto_3d0
    invoke-virtual {v0}, Lx0/c;->j()V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 981
    .line 982
    .line 983
    return-void

    .line 984
    nop

    .line 985
    :array_3d8
    .array-data 1
        -0x68t
        0x2ft
        -0x52t
        0xbt
        0x5t
        0x75t
        -0x2ct
        -0x7bt
        -0x7et
        0x2et
        -0x43t
        0x6t
        0x28t
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    nop

    .line 997
    :array_3e4
    .array-data 1
        -0x15t
        0x5at
        -0x22t
        0x6et
        0x77t
        0x2at
        -0x59t
        -0xet
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    :array_3ec
    .array-data 1
        -0x3t
        0x5ft
        -0x32t
    .end array-data

    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_3f2
    .array-data 1
        0x1ft
        -0x29t
        0x5ct
        -0x29t
        0xct
        -0x49t
        0x46t
        0x5ft
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_3fa
    .array-data 1
        -0x65t
        0x36t
        0x6t
        -0x67t
        -0x69t
        0xbt
        0xft
        -0x5dt
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_402
    .array-data 1
        -0x18t
        -0x5t
        -0x43t
        0x6ft
        0x60t
        0x72t
        0x71t
        -0x79t
        -0x18t
        -0x19t
        -0x44t
        0x5et
        0x61t
        0x45t
        0x71t
        -0x75t
        0x18t
        -0x76t
        -0x21t
        0xdt
        0x8t
        0x17t
        0x14t
        -0x29t
        -0x72t
        -0x76t
        -0x28t
        0xct
        0x32t
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    nop

    .line 1047
    :array_416
    .array-data 1
        0x38t
        0x5at
        0x6dt
        -0x23t
        -0x50t
        -0x39t
        -0x60t
        0x7t
    .end array-data

    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_41e
    .array-data 1
        -0x64t
        -0x22t
        -0x5ft
        -0x3dt
        -0x7dt
        -0xet
        0x10t
        -0x15t
        -0x63t
        -0x2t
        -0x60t
        -0x8t
        -0x7dt
        -0xft
        0x11t
        -0x23t
        0x6ct
        -0x52t
        -0x3dt
        -0x5dt
        -0x16t
        -0x5dt
        0x74t
        -0x7ft
        -0x6t
        -0x52t
        -0x3ct
        -0x5et
        -0x30t
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    nop

    .line 1075
    :array_432
    .array-data 1
        0x4ct
        0x7et
        0x71t
        0x73t
        0x52t
        0x73t
        -0x40t
        0x51t
    .end array-data
.end method

.method public final l()V
    .registers 7

    .line 1
    iget-object v0, p0, Lx0/c;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/c;->l:Le0/f;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v2, p0, Lx0/c;->d:Z

    .line 9
    .line 10
    if-nez v2, :cond_26

    .line 11
    .line 12
    iget-boolean v2, p0, Lx0/c;->f:Z

    .line 13
    .line 14
    if-eqz v2, :cond_26

    .line 15
    .line 16
    iget-boolean v2, p0, Lx0/c;->e:Z

    .line 17
    .line 18
    if-eqz v2, :cond_26

    .line 19
    .line 20
    iget-object v2, p0, Lx0/c;->c:Lx0/o;

    .line 21
    .line 22
    iget-boolean v3, v2, Lx0/o;->d:Z

    .line 23
    .line 24
    if-eqz v3, :cond_26

    .line 25
    .line 26
    iget-boolean v3, v2, Lx0/o;->f:Z

    .line 27
    .line 28
    if-eqz v3, :cond_26

    .line 29
    .line 30
    iget v2, v2, Lx0/o;->i:I

    .line 31
    .line 32
    int-to-long v2, v2

    .line 33
    const-wide/16 v4, 0x3e8

    .line 34
    .line 35
    mul-long/2addr v2, v4

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public final m(Lj0/e;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    new-array v2, v1, [B

    .line 7
    .line 8
    fill-array-data v2, :array_82

    .line 9
    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    new-array v4, v3, [B

    .line 14
    .line 15
    fill-array-data v4, :array_8a

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    move v4, v2

    .line 34
    :goto_21
    array-length v5, v0

    .line 35
    if-ge v4, v5, :cond_66

    .line 36
    .line 37
    aget-object v5, v0, v4

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget-object v6, p0, Lx0/c;->c:Lx0/o;

    .line 44
    .line 45
    iget v6, v6, Lx0/o;->h:I

    .line 46
    .line 47
    if-ne v5, v6, :cond_63

    .line 48
    .line 49
    new-instance v0, Lj0/c;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v0, v2}, Lj0/c;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_92

    .line 61
    .line 62
    .line 63
    new-array v2, v3, [B

    .line 64
    .line 65
    fill-array-data v2, :array_9a

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, v0, Lj0/c;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 79
    .line 80
    if-eqz v1, :cond_62

    .line 81
    .line 82
    if-ltz v4, :cond_62

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    array-length v1, v1

    .line 89
    if-lt v4, v1, :cond_5b

    .line 90
    .line 91
    goto :goto_62

    .line 92
    :cond_5b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, p1, v1}, Lj0/c;->j(Lj0/e;Ljava/lang/Integer;)V

    .line 97
    .line 98
    .line 99
    :cond_62
    :goto_62
    return-void

    .line 100
    :cond_63
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_21

    .line 103
    :cond_66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/16 v0, 0x3b

    .line 108
    .line 109
    new-array v0, v0, [B

    .line 110
    .line 111
    fill-array-data v0, :array_a2

    .line 112
    .line 113
    .line 114
    new-array v1, v3, [B

    .line 115
    .line 116
    fill-array-data v1, :array_c4

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :array_82
    .array-data 1
        -0x3et
        0x26t
        -0x64t
        0x6ct
        -0x50t
        0x7t
        -0x15t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_8a
    .array-data 1
        -0x5at
        0x4ft
        -0x11t
        0x1ct
        -0x24t
        0x66t
        -0x6et
        0x21t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_92
    .array-data 1
        0x38t
        -0x3at
        0x5ct
        -0x1dt
        0x4ct
        0x58t
        -0x2at
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_9a
    .array-data 1
        0x5ct
        -0x51t
        0x2ft
        -0x6dt
        0x20t
        0x39t
        -0x51t
        0x2et
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_a2
    .array-data 1
        -0x49t
        0x5ct
        0x72t
        0x10t
        0x7bt
        0x5ft
        -0x31t
        0xdt
        -0x49t
        0x4ct
        -0x7et
        0x7at
        0x18t
        0xft
        -0x59t
        0x6dt
        -0x2dt
        0x21t
        0x14t
        0x7at
        0x1ft
        0xet
        -0x63t
        0x6dt
        -0x29t
        -0x2ft
        0x73t
        0x2bt
        0x7at
        0x6at
        -0x31t
        0x4t
        -0x4at
        0x76t
        0x72t
        0x1at
        0x7bt
        0x5et
        0x3ft
        0x6dt
        -0x26t
        0x21t
        0x17t
        0x7at
        0x1et
        0xft
        -0x5ft
        0x6ct
        -0x1at
        0x20t
        0x20t
        0x7bt
        0x29t
        0xft
        -0x60t
        0x6dt
        -0x2et
        0x21t
        0x1ft
    .end array-data

    :array_c4
    .array-data 1
        0x67t
        -0xft
        -0x5et
        -0x56t
        -0x56t
        -0x21t
        0x1ft
        -0x43t
    .end array-data
.end method

.method public final o()F
    .registers 3

    .line 1
    iget-boolean v0, p0, Lx0/c;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lx0/c;->c:Lx0/o;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget v0, v1, Lx0/o;->l:I

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget v0, v1, Lx0/o;->m:I

    .line 11
    .line 12
    :goto_b
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x42c80000    # 100.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    return v0
.end method

.method public final onAttachedToWindow()V
    .registers 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lx0/c;->f:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lx0/c;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    goto/16 :goto_c7

    .line 12
    .line 13
    :cond_c
    const/16 v1, 0x3d

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    :try_start_10
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_d4

    .line 20
    .line 21
    .line 22
    new-array v3, v2, [B

    .line 23
    .line 24
    fill-array-data v3, :array_f8

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v3, 0x30

    .line 36
    .line 37
    new-array v3, v3, [B

    .line 38
    .line 39
    fill-array-data v3, :array_100

    .line 40
    .line 41
    .line 42
    new-array v4, v2, [B

    .line 43
    .line 44
    fill-array-data v4, :array_11c

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/16 v4, 0x12

    .line 56
    .line 57
    new-array v4, v4, [B

    .line 58
    .line 59
    fill-array-data v4, :array_124

    .line 60
    .line 61
    .line 62
    new-array v5, v2, [B

    .line 63
    .line 64
    fill-array-data v5, :array_132

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/16 v5, 0xf

    .line 82
    .line 83
    new-array v5, v5, [B

    .line 84
    .line 85
    fill-array-data v5, :array_13a

    .line 86
    .line 87
    .line 88
    new-array v6, v2, [B

    .line 89
    .line 90
    fill-array-data v6, :array_146

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    new-instance v7, Lx0/a;

    .line 110
    .line 111
    invoke-direct {v7, p0, v4, v3}, Lx0/a;-><init>(Lx0/c;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iput-object v3, p0, Lx0/c;->p:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iput-object v3, p0, Lx0/c;->q:Landroid/view/ViewTreeObserver;

    .line 125
    .line 126
    const-class v3, Landroid/view/ViewTreeObserver;

    .line 127
    .line 128
    const/16 v4, 0x22

    .line 129
    .line 130
    new-array v4, v4, [B

    .line 131
    .line 132
    fill-array-data v4, :array_14e

    .line 133
    .line 134
    .line 135
    new-array v5, v2, [B

    .line 136
    .line 137
    fill-array-data v5, :array_164

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v3, p0, Lx0/c;->q:Landroid/view/ViewTreeObserver;

    .line 153
    .line 154
    iget-object v4, p0, Lx0/c;->p:Ljava/lang/Object;

    .line 155
    .line 156
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_10 .. :try_end_a2} :catch_a3

    .line 161
    .line 162
    .line 163
    goto :goto_c7

    .line 164
    :catch_a3
    move-exception v1

    .line 165
    const/16 v3, 0xc

    .line 166
    .line 167
    new-array v3, v3, [B

    .line 168
    .line 169
    fill-array-data v3, :array_16c

    .line 170
    .line 171
    .line 172
    new-array v4, v2, [B

    .line 173
    .line 174
    fill-array-data v4, :array_176

    .line 175
    .line 176
    .line 177
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const/16 v4, 0x24

    .line 182
    .line 183
    new-array v4, v4, [B

    .line 184
    .line 185
    fill-array-data v4, :array_17e

    .line 186
    .line 187
    .line 188
    new-array v2, v2, [B

    .line 189
    .line 190
    fill-array-data v2, :array_194

    .line 191
    .line 192
    .line 193
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    :goto_c7
    if-nez v0, :cond_d3

    .line 201
    .line 202
    iget-object v0, p0, Lx0/c;->b:Landroid/os/Handler;

    .line 203
    .line 204
    iget-object v1, p0, Lx0/c;->r:Lt1/l;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lx0/c;->l()V

    .line 210
    .line 211
    .line 212
    :cond_d3
    return-void

    .line 213
    :array_d4
    .array-data 1
        0x2ct
        -0x7ft
        0x71t
        0x12t
        -0x31t
        0x2bt
        0x76t
        0x43t
        0x3bt
        -0x7at
        0x70t
        0x17t
        -0x72t
        0x14t
        0x7bt
        0x8t
        0x3at
        -0x45t
        0x67t
        0x5t
        -0x3bt
        0xdt
        0x70t
        0x1et
        0x28t
        -0x63t
        0x63t
        0x5t
        -0x2et
        0x66t
        0x5dt
        0x3t
        0xet
        -0x80t
        0x78t
        0x10t
        -0x2bt
        0x36t
        0x77t
        0x24t
        0x23t
        -0x65t
        0x70t
        0x12t
        -0x32t
        0x23t
        0x7et
        0x24t
        0x23t
        -0x64t
        0x70t
        0x14t
        -0x2dt
        0xet
        0x7bt
        0x1et
        0x39t
        -0x76t
        0x7bt
        0x5t
        -0x2et
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    nop

    .line 249
    :array_f8
    .array-data 1
        0x4dt
        -0x11t
        0x15t
        0x60t
        -0x60t
        0x42t
        0x12t
        0x6dt
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_100
    .array-data 1
        0x64t
        -0x4bt
        0x44t
        -0x5ct
        0x33t
        0x73t
        0x78t
        0x60t
        0x73t
        -0x4et
        0x45t
        -0x5ft
        0x72t
        0x4ct
        0x75t
        0x2bt
        0x72t
        -0x71t
        0x52t
        -0x4dt
        0x39t
        0x55t
        0x7et
        0x3dt
        0x60t
        -0x57t
        0x56t
        -0x4dt
        0x2et
        0x3et
        0x55t
        0x20t
        0x71t
        -0x42t
        0x52t
        -0x48t
        0x3dt
        0x76t
        0x55t
        0x20t
        0x76t
        -0x42t
        0x54t
        -0x5bt
        0x15t
        0x74t
        0x7at
        0x21t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        0x5t
        -0x25t
        0x20t
        -0x2at
        0x5ct
        0x1at
        0x1ct
        0x4et
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        -0x35t
        -0x3ft
        -0x24t
        -0x2t
        -0x5t
        -0xbt
        0xat
        0x5et
        -0x27t
        -0x3at
        -0x3ct
        -0x31t
        -0x23t
        -0x12t
        0x1at
        0x53t
        -0x34t
        -0x29t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    nop

    .line 307
    :array_132
    .array-data 1
        -0x48t
        -0x5ct
        -0x58t
        -0x56t
        -0x6ct
        -0x80t
        0x69t
        0x36t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_13a
    .array-data 1
        0x7ct
        0x45t
        -0x6ct
        0x59t
        -0x6ct
        -0x5ft
        -0x3et
        -0x1ft
        0x6dt
        0x78t
        -0x7ct
        0x5dt
        -0x6bt
        -0x51t
        -0x32t
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_146
    .array-data 1
        0x8t
        0x2at
        -0x1ft
        0x3at
        -0x4t
        -0x40t
        -0x60t
        -0x73t
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_14e
    .array-data 1
        -0x24t
        0x4ft
        -0x5t
        -0x11t
        -0x3dt
        -0x2ct
        0x6ft
        -0x42t
        -0x33t
        0x5et
        -0x15t
        -0x3bt
        -0x1ct
        -0x7t
        0x74t
        -0x4at
        -0x31t
        0x45t
        -0x2t
        -0x34t
        -0x1ct
        -0x7t
        0x73t
        -0x4at
        -0x37t
        0x58t
        -0x2dt
        -0x37t
        -0x22t
        -0x1dt
        0x65t
        -0x43t
        -0x28t
        0x59t
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    nop

    .line 357
    :array_164
    .array-data 1
        -0x43t
        0x2bt
        -0x61t
        -0x60t
        -0x53t
        -0x69t
        0x0t
        -0x2dt
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_16c
    .array-data 1
        -0xdt
        -0x32t
        -0x29t
        0x14t
        -0x14t
        0x5at
        0x4et
        0x55t
        -0x39t
        -0x22t
        -0x2dt
        0x2t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_176
    .array-data 1
        -0x60t
        -0x45t
        -0x59t
        0x71t
        -0x62t
        0xdt
        0x27t
        0x31t
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_17e
    .array-data 1
        -0x9t
        0x35t
        -0x7t
        -0x47t
        0x43t
        -0x30t
        -0x6et
        0x55t
        -0x25t
        0x3at
        -0xft
        -0x42t
        0x4bt
        -0x2ft
        -0x40t
        0x53t
        -0x6ct
        0x23t
        -0x2t
        -0x47t
        0x48t
        -0x35t
        -0x3bt
        0x16t
        -0x40t
        0x3bt
        -0x1et
        -0x4ct
        0x44t
        -0x7ct
        -0x40t
        0x53t
        -0x2dt
        0x3dt
        -0x8t
        -0x47t
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_194
    .array-data 1
        -0x4ct
        0x54t
        -0x69t
        -0x29t
        0x2ct
        -0x5ct
        -0x4et
        0x36t
    .end array-data
.end method

.method public final onDetachedFromWindow()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lx0/c;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lx0/c;->b:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lx0/c;->p:Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v0, :cond_77

    .line 13
    .line 14
    iget-object v0, p0, Lx0/c;->q:Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    if-eqz v0, :cond_77

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_77

    .line 23
    .line 24
    const/16 v0, 0x3d

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    :try_start_1b
    new-array v0, v0, [B

    .line 29
    .line 30
    fill-array-data v0, :array_80

    .line 31
    .line 32
    .line 33
    new-array v3, v2, [B

    .line 34
    .line 35
    fill-array-data v3, :array_a4

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v3, Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    const/16 v4, 0x25

    .line 49
    .line 50
    new-array v4, v4, [B

    .line 51
    .line 52
    fill-array-data v4, :array_ac

    .line 53
    .line 54
    .line 55
    new-array v5, v2, [B

    .line 56
    .line 57
    fill-array-data v5, :array_c4

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v3, p0, Lx0/c;->q:Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    iget-object v4, p0, Lx0/c;->p:Ljava/lang/Object;

    .line 75
    .line 76
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1b .. :try_end_52} :catch_53

    .line 81
    .line 82
    .line 83
    goto :goto_77

    .line 84
    :catch_53
    move-exception v0

    .line 85
    const/16 v3, 0xc

    .line 86
    .line 87
    new-array v3, v3, [B

    .line 88
    .line 89
    fill-array-data v3, :array_cc

    .line 90
    .line 91
    .line 92
    new-array v4, v2, [B

    .line 93
    .line 94
    fill-array-data v4, :array_d6

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/16 v4, 0x13

    .line 102
    .line 103
    new-array v4, v4, [B

    .line 104
    .line 105
    fill-array-data v4, :array_de

    .line 106
    .line 107
    .line 108
    new-array v2, v2, [B

    .line 109
    .line 110
    fill-array-data v2, :array_ec

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :cond_77
    :goto_77
    iput-object v1, p0, Lx0/c;->q:Landroid/view/ViewTreeObserver;

    .line 121
    .line 122
    iput-object v1, p0, Lx0/c;->p:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :array_80
    .array-data 1
        -0x80t
        -0x39t
        -0x31t
        -0x51t
        -0x38t
        0x7ct
        -0x65t
        -0x5et
        -0x69t
        -0x40t
        -0x32t
        -0x56t
        -0x77t
        0x43t
        -0x6at
        -0x17t
        -0x6at
        -0x3t
        -0x27t
        -0x48t
        -0x3et
        0x5at
        -0x63t
        -0x1t
        -0x7ct
        -0x25t
        -0x23t
        -0x48t
        -0x2bt
        0x31t
        -0x50t
        -0x1et
        -0x5et
        -0x3at
        -0x3at
        -0x53t
        -0x2et
        0x61t
        -0x66t
        -0x3bt
        -0x71t
        -0x23t
        -0x32t
        -0x51t
        -0x37t
        0x74t
        -0x6dt
        -0x3bt
        -0x71t
        -0x26t
        -0x32t
        -0x57t
        -0x2ct
        0x59t
        -0x6at
        -0x1t
        -0x6bt
        -0x34t
        -0x3bt
        -0x48t
        -0x2bt
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    nop

    .line 165
    :array_a4
    .array-data 1
        -0x1ft
        -0x57t
        -0x55t
        -0x23t
        -0x59t
        0x15t
        -0x1t
        -0x74t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_ac
    .array-data 1
        -0x25t
        -0x70t
        -0x2ct
        0x4at
        -0x64t
        0x18t
        0x8t
        0x5dt
        -0x16t
        -0x66t
        -0x2ct
        0x55t
        -0x61t
        0x9t
        0x22t
        0x7at
        -0x39t
        -0x7ft
        -0x24t
        0x57t
        -0x7ct
        0x1ct
        0x2bt
        0x7at
        -0x39t
        -0x7at
        -0x24t
        0x51t
        -0x67t
        0x31t
        0x2et
        0x40t
        -0x23t
        -0x70t
        -0x29t
        0x40t
        -0x68t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_c4
    .array-data 1
        -0x57t
        -0xbt
        -0x47t
        0x25t
        -0x16t
        0x7dt
        0x47t
        0x33t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_cc
    .array-data 1
        0x1ft
        0x4dt
        0x41t
        0x62t
        -0x34t
        0x31t
        -0x1ct
        0x68t
        0x2bt
        0x5dt
        0x45t
        0x74t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_d6
    .array-data 1
        0x4ct
        0x38t
        0x31t
        0x7t
        -0x42t
        0x66t
        -0x73t
        0xct
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_de
    .array-data 1
        -0x4bt
        0x2bt
        0x1t
        -0x7bt
        0x6dt
        0x13t
        -0xft
        -0x20t
        -0x78t
        0x3bt
        0xft
        -0x7et
        0x3bt
        0x4t
        -0x4ct
        -0xdt
        -0x72t
        0x21t
        0x2t
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_ec
    .array-data 1
        -0x19t
        0x4et
        0x6ct
        -0x16t
        0x1bt
        0x76t
        -0x2ft
        -0x6ct
    .end array-data
.end method

.method public final onMeasure(II)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_25

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    .line 20
    const/high16 v4, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 27
    .line 28
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_25
    invoke-virtual {p0}, Lx0/c;->c()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lx0/c;->p(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0}, Lx0/c;->b()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lx0/c;->p(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final p(I)I
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-virtual {p0}, Lx0/c;->o()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-float/2addr v0, p1

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final q(II)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 4
    .line 5
    filled-new-array {p1, p1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lx0/c;->f(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-float p1, p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lx0/c;->f(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const p2, 0x7f050379

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lx0/c;->d(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final r(ILjava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f050381

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lx0/c;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x11

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final s()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lx0/c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    iget-boolean v0, p0, Lx0/c;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    :goto_b
    const v0, 0x7f05037f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lx0/c;->d(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/high16 v1, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-virtual {p0}, Lx0/c;->o()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    mul-float/2addr v2, v1

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v0, v1}, Lx0/c;->q(II)Landroid/graphics/drawable/GradientDrawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_21
    if-eqz v0, :cond_3c

    .line 35
    .line 36
    iget-boolean v1, p0, Lx0/c;->e:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3c

    .line 39
    .line 40
    iget-object v1, p0, Lx0/c;->c:Lx0/o;

    .line 41
    .line 42
    iget v1, v1, Lx0/o;->k:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    const/high16 v2, 0x42c80000    # 100.0f

    .line 46
    .line 47
    div-float/2addr v1, v2

    .line 48
    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    .line 50
    sub-float/2addr v2, v1

    .line 51
    const/high16 v1, 0x437f0000    # 255.0f

    .line 52
    .line 53
    mul-float/2addr v2, v1

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setChanged(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lx0/c;->m:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setElementEditor(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lx0/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lx0/c;->n:Ljava/util/function/Consumer;

    .line 2
    .line 3
    return-void
.end method
