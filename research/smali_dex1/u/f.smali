.class public final Lu/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lg/d;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/p;

.field public final e:Lk/b;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/l;

.field public i:Lu/d;

.field public j:Z

.field public k:Lu/d;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lu/d;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lg/d;IILandroid/graphics/Bitmap;)V
    .registers 12

    .line 1
    iget-object v0, p1, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 10
    .line 11
    invoke-static {v1, v2}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v2}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/bumptech/glide/l;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 47
    .line 48
    iget-object v4, p1, Lcom/bumptech/glide/p;->c:Landroid/content/Context;

    .line 49
    .line 50
    const-class v5, Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-direct {v2, v3, p1, v5, v4}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/bumptech/glide/p;->l:Ly/e;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v2, Ly/e;

    .line 62
    .line 63
    invoke-direct {v2}, Ly/a;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lj/m;->b:Lj/m;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ly/a;->d(Lj/m;)Ly/a;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ly/e;

    .line 73
    .line 74
    invoke-virtual {v2}, Ly/a;->s()Ly/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ly/e;

    .line 79
    .line 80
    invoke-virtual {v2}, Ly/a;->o()Ly/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ly/e;

    .line 85
    .line 86
    invoke-virtual {v2, p3, p4}, Ly/a;->i(II)Ly/a;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance p3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p3, p0, Lu/f;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    iput-object v1, p0, Lu/f;->d:Lcom/bumptech/glide/p;

    .line 105
    .line 106
    new-instance p3, Landroid/os/Handler;

    .line 107
    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    new-instance v1, Lb4/k;

    .line 113
    .line 114
    const/4 v2, 0x3

    .line 115
    invoke-direct {v1, v2, p0}, Lb4/k;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lu/f;->e:Lk/b;

    .line 122
    .line 123
    iput-object p3, p0, Lu/f;->b:Landroid/os/Handler;

    .line 124
    .line 125
    iput-object p1, p0, Lu/f;->h:Lcom/bumptech/glide/l;

    .line 126
    .line 127
    iput-object p2, p0, Lu/f;->a:Lg/d;

    .line 128
    .line 129
    sget-object p1, Lp/c;->b:Lp/c;

    .line 130
    .line 131
    invoke-virtual {p0, p1, p5}, Lu/f;->c(Lh/l;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lu/f;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_76

    .line 4
    .line 5
    iget-boolean v0, p0, Lu/f;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    goto :goto_76

    .line 10
    :cond_9
    iget-object v0, p0, Lu/f;->m:Lu/d;

    .line 11
    .line 12
    if-eqz v0, :cond_14

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lu/f;->m:Lu/d;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lu/f;->b(Lu/d;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lu/f;->g:Z

    .line 23
    .line 24
    iget-object v1, p0, Lu/f;->a:Lg/d;

    .line 25
    .line 26
    iget-object v2, v1, Lg/d;->l:Lg/b;

    .line 27
    .line 28
    iget v3, v2, Lg/b;->c:I

    .line 29
    .line 30
    if-lez v3, :cond_35

    .line 31
    .line 32
    iget v4, v1, Lg/d;->k:I

    .line 33
    .line 34
    if-gez v4, :cond_24

    .line 35
    .line 36
    goto :goto_35

    .line 37
    :cond_24
    if-ltz v4, :cond_33

    .line 38
    .line 39
    if-ge v4, v3, :cond_33

    .line 40
    .line 41
    iget-object v2, v2, Lg/b;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lg/a;

    .line 48
    .line 49
    iget v2, v2, Lg/a;->i:I

    .line 50
    .line 51
    goto :goto_36

    .line 52
    :cond_33
    const/4 v2, -0x1

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    :goto_35
    const/4 v2, 0x0

    .line 55
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    int-to-long v5, v2

    .line 60
    add-long/2addr v3, v5

    .line 61
    iget v2, v1, Lg/d;->k:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iget-object v0, v1, Lg/d;->l:Lg/b;

    .line 65
    .line 66
    iget v0, v0, Lg/b;->c:I

    .line 67
    .line 68
    rem-int/2addr v2, v0

    .line 69
    iput v2, v1, Lg/d;->k:I

    .line 70
    .line 71
    new-instance v0, Lu/d;

    .line 72
    .line 73
    iget-object v5, p0, Lu/f;->b:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v0, v5, v2, v3, v4}, Lu/d;-><init>(Landroid/os/Handler;IJ)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lu/f;->k:Lu/d;

    .line 79
    .line 80
    iget-object v0, p0, Lu/f;->h:Lcom/bumptech/glide/l;

    .line 81
    .line 82
    new-instance v2, Lb0/b;

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v2, v3}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Ly/e;

    .line 96
    .line 97
    invoke-direct {v3}, Ly/a;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ly/a;->n(Lb0/b;)Ly/a;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ly/e;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->z(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lu/f;->k:Lu/d;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/l;->y(Lz/d;Ly/a;)V

    .line 117
    .line 118
    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method public final b(Lu/d;)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu/f;->g:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lu/f;->j:Z

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    iget-object v3, p0, Lu/f;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v1, :cond_12

    .line 10
    .line 11
    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-boolean v1, p0, Lu/f;->f:Z

    .line 20
    .line 21
    if-nez v1, :cond_19

    .line 22
    .line 23
    iput-object p1, p0, Lu/f;->m:Lu/d;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    iget-object v1, p1, Lu/d;->h:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz v1, :cond_a9

    .line 29
    .line 30
    iget-object v1, p0, Lu/f;->l:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v1, :cond_29

    .line 33
    .line 34
    iget-object v4, p0, Lu/f;->e:Lk/b;

    .line 35
    .line 36
    invoke-interface {v4, v1}, Lk/b;->c(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lu/f;->l:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_29
    iget-object v1, p0, Lu/f;->i:Lu/d;

    .line 43
    .line 44
    iput-object p1, p0, Lu/f;->i:Lu/d;

    .line 45
    .line 46
    iget-object p1, p0, Lu/f;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/lit8 v4, v4, -0x1

    .line 53
    .line 54
    :goto_35
    if-ltz v4, :cond_a0

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lu/e;

    .line 61
    .line 62
    check-cast v5, Lu/b;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    :goto_43
    instance-of v7, v6, Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-eqz v7, :cond_4e

    .line 71
    .line 72
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    goto :goto_43

    .line 79
    :cond_4e
    if-nez v6, :cond_57

    .line 80
    .line 81
    invoke-virtual {v5}, Lu/b;->stop()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 85
    .line 86
    .line 87
    goto :goto_9d

    .line 88
    :cond_57
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 89
    .line 90
    .line 91
    iget-object v6, v5, Lu/b;->b:Lr3/a;

    .line 92
    .line 93
    iget-object v6, v6, Lr3/a;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v6, Lu/f;

    .line 96
    .line 97
    iget-object v7, v6, Lu/f;->i:Lu/d;

    .line 98
    .line 99
    const/4 v8, -0x1

    .line 100
    if-eqz v7, :cond_68

    .line 101
    .line 102
    iget v7, v7, Lu/d;->f:I

    .line 103
    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v7, v8

    .line 106
    :goto_69
    iget-object v6, v6, Lu/f;->a:Lg/d;

    .line 107
    .line 108
    iget-object v6, v6, Lg/d;->l:Lg/b;

    .line 109
    .line 110
    iget v6, v6, Lg/b;->c:I

    .line 111
    .line 112
    add-int/lit8 v6, v6, -0x1

    .line 113
    .line 114
    if-ne v7, v6, :cond_79

    .line 115
    .line 116
    iget v6, v5, Lu/b;->g:I

    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    iput v6, v5, Lu/b;->g:I

    .line 121
    .line 122
    :cond_79
    iget v6, v5, Lu/b;->h:I

    .line 123
    .line 124
    if-eq v6, v8, :cond_9d

    .line 125
    .line 126
    iget v7, v5, Lu/b;->g:I

    .line 127
    .line 128
    if-lt v7, v6, :cond_9d

    .line 129
    .line 130
    iget-object v6, v5, Lu/b;->l:Ljava/util/ArrayList;

    .line 131
    .line 132
    if-eqz v6, :cond_9a

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    move v7, v0

    .line 139
    :goto_8a
    if-ge v7, v6, :cond_9a

    .line 140
    .line 141
    iget-object v8, v5, Lu/b;->l:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 148
    .line 149
    invoke-virtual {v8, v5}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_8a

    .line 155
    :cond_9a
    invoke-virtual {v5}, Lu/b;->stop()V

    .line 156
    .line 157
    .line 158
    :cond_9d
    :goto_9d
    add-int/lit8 v4, v4, -0x1

    .line 159
    .line 160
    goto :goto_35

    .line 161
    :cond_a0
    if-eqz v1, :cond_a9

    .line 162
    .line 163
    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 168
    .line 169
    .line 170
    :cond_a9
    invoke-virtual {p0}, Lu/f;->a()V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final c(Lh/l;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    const-string v0, "Argument must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lu/f;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v0, p0, Lu/f;->h:Lcom/bumptech/glide/l;

    .line 12
    .line 13
    new-instance v1, Ly/e;

    .line 14
    .line 15
    invoke-direct {v1}, Ly/a;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p1, v2}, Ly/a;->p(Lh/l;Z)Ly/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lu/f;->h:Lcom/bumptech/glide/l;

    .line 28
    .line 29
    invoke-static {p2}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lu/f;->n:I

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lu/f;->o:I

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lu/f;->p:I

    .line 46
    .line 47
    return-void
.end method
