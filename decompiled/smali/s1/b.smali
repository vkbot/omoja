.class public final Ls1/b;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/view/TextureView;

.field public final e:Landroid/widget/TextView;

.field public final f:Ls1/x;

.field public g:Lcom/example/navistart/home/LauncherWindowService;

.field public h:Landroid/view/Surface;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:J

.field public final q:Lf5/j;

.field public final r:Ls1/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ls1/b;->k:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Ls1/b;->m:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Ls1/b;->o:I

    .line 11
    .line 12
    new-instance v2, Lf5/j;

    .line 13
    .line 14
    const/16 v3, 0x10

    .line 15
    .line 16
    invoke-direct {v2, v3, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Ls1/b;->q:Lf5/j;

    .line 20
    .line 21
    new-instance v2, Ls1/a;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Ls1/a;-><init>(Ls1/b;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Ls1/b;->r:Ls1/a;

    .line 27
    .line 28
    iput-object p2, p0, Ls1/b;->b:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p3, p0, Ls1/b;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1}, Ls1/x;->a(Landroid/content/Context;)Ls1/x;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Ls1/b;->f:Ls1/x;

    .line 37
    .line 38
    new-instance p2, Landroid/view/TextureView;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Ls1/b;->d:Landroid/view/TextureView;

    .line 44
    .line 45
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 46
    .line 47
    .line 48
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance p3, Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Ls1/b;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    const/high16 p1, 0x41600000    # 14.0f

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    .line 70
    .line 71
    const/16 p1, 0x11

    .line 72
    .line 73
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    .line 75
    .line 76
    const p1, -0xe8dcd2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .line 84
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x13

    .line 91
    .line 92
    new-array p1, p1, [B

    .line 93
    .line 94
    fill-array-data p1, :array_0

    .line 95
    .line 96
    .line 97
    const/16 p3, 0x8

    .line 98
    .line 99
    new-array p3, p3, [B

    .line 100
    .line 101
    fill-array-data p3, :array_1

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Le4/i;

    .line 112
    .line 113
    invoke-direct {p1, v0, p0}, Le4/i;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 1
        -0x2at
        0x37t
        -0x78t
        0x4at
        -0x40t
        -0x10t
        0xbt
        -0x1dt
        -0x2at
        0x19t
        -0x78t
        0x41t
        -0x40t
        -0x10t
        0xbt
        -0x1et
        -0x1ct
        0x29t
        -0x2t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 1
        0x6t
        -0x57t
        0x58t
        -0x4t
        0x10t
        0x48t
        -0x25t
        0x57t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ls1/b;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Ls1/b;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Ls1/b;->d:Landroid/view/TextureView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_0
    iget-object v1, p0, Ls1/b;->h:Landroid/view/Surface;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Landroid/view/Surface;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Ls1/b;->h:Landroid/view/Surface;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 65
    .line 66
    iget-object v4, p0, Ls1/b;->b:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v5, p0, Ls1/b;->h:Landroid/view/Surface;

    .line 69
    .line 70
    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/example/navistart/home/LauncherWindowService;->a(Ljava/lang/String;IILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v1, p0, Ls1/b;->o:I

    .line 83
    .line 84
    if-eq v0, v1, :cond_2

    .line 85
    .line 86
    iput v0, p0, Ls1/b;->o:I

    .line 87
    .line 88
    iput-boolean v2, p0, Ls1/b;->m:Z

    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Ls1/b;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    const/16 v1, 0xa

    .line 95
    .line 96
    new-array v1, v1, [B

    .line 97
    .line 98
    fill-array-data v1, :array_0

    .line 99
    .line 100
    .line 101
    const/16 v2, 0x8

    .line 102
    .line 103
    new-array v2, v2, [B

    .line 104
    .line 105
    fill-array-data v2, :array_1

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Ls1/b;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 1
        -0x4at
        -0x3dt
        0x7ft
        -0x7ct
        0x43t
        -0x12t
        -0x9t
        0x2ft
        0x5ct
        0x7dt
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
    nop

    .line 139
    :array_1
    .array-data 1
        0x66t
        0x5dt
        -0x51t
        0x3et
        -0x6dt
        0x53t
        0x27t
        -0x6ft
    .end array-data
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Ls1/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/example/navistart/home/LauncherWindowService;->b:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Ls1/b;->h:Landroid/view/Surface;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Ls1/b;->h:Landroid/view/Surface;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls1/b;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ls1/b;->j:Z

    .line 8
    .line 9
    iget-object v0, p0, Ls1/b;->q:Lf5/j;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ls1/b;->b()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Ls1/b;->i:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Ls1/b;->r:Ls1/a;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Ls1/b;->i:Z

    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 35
    .line 36
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ls1/b;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Ls1/b;->l:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Ls1/b;->k:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget v0, p0, Ls1/b;->o:I

    .line 14
    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Ls1/b;->m:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Ls1/b;->n:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Ls1/b;->f:Ls1/x;

    .line 26
    .line 27
    iget-boolean v0, v0, Ls1/x;->f:Z

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Ls1/b;->n:Z

    .line 34
    .line 35
    iget-object v1, p0, Ls1/b;->e:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x13

    .line 46
    .line 47
    new-array v1, v1, [B

    .line 48
    .line 49
    fill-array-data v1, :array_0

    .line 50
    .line 51
    .line 52
    new-array v3, v2, [B

    .line 53
    .line 54
    fill-array-data v3, :array_1

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Ls1/b;->f:Ls1/x;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x7

    .line 72
    new-array v4, v4, [B

    .line 73
    .line 74
    fill-array-data v4, :array_2

    .line 75
    .line 76
    .line 77
    new-array v2, v2, [B

    .line 78
    .line 79
    fill-array-data v2, :array_3

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v2, p0, Ls1/b;->o:I

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " "

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Ls1/b;->c:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Lq0/f;

    .line 109
    .line 110
    invoke-direct {v3, v0, p0}, Lq0/f;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v1, Ls1/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 114
    .line 115
    new-instance v4, Lb1/n;

    .line 116
    .line 117
    const/16 v5, 0xc

    .line 118
    .line 119
    invoke-direct {v4, v1, v2, v3, v5}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_0
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 1
        -0x24t
        0x6bt
        -0x57t
        0x51t
        -0x25t
        -0x70t
        -0x68t
        0x7at
        -0x24t
        0x45t
        -0x57t
        0x5at
        -0x25t
        -0x70t
        -0x68t
        0x7bt
        -0x12t
        0x75t
        -0x21t
    .end array-data

    .line 128
    .line 129
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
    :array_1
    .array-data 1
        0xct
        -0xbt
        0x79t
        -0x19t
        0xbt
        0x28t
        0x48t
        -0x32t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 1
        0x4dt
        0x7at
        0x68t
        0x52t
        -0x3at
        -0x77t
        0x60t
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_3
    .array-data 1
        0x8t
        0x34t
        0x3bt
        0x7t
        -0x6ct
        -0x34t
        0x40t
        0x77t
    .end array-data
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ls1/b;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Ls1/b;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x8

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x26

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    fill-array-data p1, :array_0

    .line 20
    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-boolean p1, p0, Ls1/b;->i:Z

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-class v2, Lcom/example/navistart/home/LauncherWindowService;

    .line 46
    .line 47
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v2, 0x1a

    .line 53
    .line 54
    if-lt v1, v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1, p1}, Lc5/h;->r(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Ls1/b;->r:Ls1/a;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput-boolean p1, p0, Ls1/b;->i:Z

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    const/16 p1, 0x47

    .line 89
    .line 90
    new-array p1, p1, [B

    .line 91
    .line 92
    fill-array-data p1, :array_2

    .line 93
    .line 94
    .line 95
    new-array v1, v0, [B

    .line 96
    .line 97
    fill-array-data v1, :array_3

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ls1/b;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_1
    const/16 v1, 0x17

    .line 109
    .line 110
    new-array v1, v1, [B

    .line 111
    .line 112
    fill-array-data v1, :array_4

    .line 113
    .line 114
    .line 115
    new-array v0, v0, [B

    .line 116
    .line 117
    fill-array-data v0, :array_5

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    invoke-virtual {p0}, Ls1/b;->a()V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_2
    return-void

    .line 144
    nop

    .line 145
    :array_0
    .array-data 1
        0x2t
        -0x22t
        0x37t
        -0x46t
        0x7t
        -0x5ft
        -0x33t
        0x4et
        -0xet
        -0x70t
        0x58t
        -0x30t
        0x69t
        -0x34t
        -0x59t
        0x20t
        0x62t
        0x60t
        0x37t
        -0x43t
        0x7t
        -0x57t
        -0x33t
        0x44t
        0x2t
        -0x2t
        0x36t
        -0x7ft
        0x6t
        -0x62t
        -0x34t
        0x73t
        0x2t
        -0x1t
        0x37t
        -0x43t
        0x7t
        -0x5et
    .end array-data

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
    .line 165
    .line 166
    .line 167
    .line 168
    nop

    .line 169
    :array_1
    .array-data 1
        -0x2et
        0x40t
        -0x19t
        0x0t
        -0x29t
        0x1ct
        0x1dt
        -0x10t
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 1
        -0x5ft
        -0x17t
        -0x1ft
        0x16t
        0x4bt
        -0x20t
        -0x78t
        -0x2ft
        -0x3bt
        -0x5ct
        -0x7ft
        0x73t
        -0x30t
        -0x1ft
        -0x4bt
        -0x30t
        -0x10t
        -0x5bt
        -0x43t
        -0x7dt
        -0x45t
        -0x72t
        -0x25t
        -0x41t
        -0x5ft
        -0x40t
        -0x1ft
        0x19t
        -0x45t
        -0x76t
        -0x26t
        -0x71t
        -0x60t
        -0xdt
        -0x1ft
        0x1bt
        -0x46t
        -0x4dt
        -0x26t
        -0x73t
        -0x60t
        -0xbt
        -0x20t
        0x2ct
        0x4bt
        -0x1ft
        -0x4ft
        0x21t
        -0x60t
        -0xbt
        -0x1ft
        0x16t
        -0x46t
        -0x4ft
        -0x25t
        -0x4dt
        -0x5ft
        -0x34t
        -0x20t
        0x22t
        -0x46t
        -0x4et
        0x2bt
        -0x2ft
        -0x31t
        -0x5ct
        -0x75t
        0x73t
        -0x2bt
        -0x1ft
        -0x4at
    .end array-data

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
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
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
    .line 216
    .line 217
    :array_3
    .array-data 1
        0x71t
        0x74t
        0x31t
        -0x5dt
        0x6bt
        0x31t
        0xbt
        0x1t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_4
    .array-data 1
        0x2at
        0x55t
        0x7ft
        0x27t
        -0x33t
        -0x10t
        -0x32t
        -0x3bt
        0x2at
        0x4ct
        0x7et
        0x13t
        0x3ct
        -0x60t
        -0x60t
        -0x59t
        0x40t
        0x24t
        0x11t
        0x42t
        -0x5ft
        0x4at
        0x3et
    .end array-data

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
    :array_5
    .array-data 1
        -0x6t
        -0xct
        -0x51t
        -0x6et
        0x1ct
        0x70t
        0x1et
        0x77t
    .end array-data
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/b;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls1/b;->f:Ls1/x;

    .line 5
    .line 6
    iget-boolean v0, v0, Ls1/x;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ls1/b;->e(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls1/b;->b()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls1/b;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls1/b;->b()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Ls1/b;->q:Lf5/j;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    const-wide/16 p2, 0x64

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
