.class public Lcom/example/navistart/OverlayService;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lw0/b0;


# static fields
.field public static volatile f:Lcom/example/navistart/OverlayService;

.field public static volatile g:Z

.field public static h:Lw0/b;

.field public static final i:Ljava/lang/String;


# instance fields
.field public b:Lt1/a;

.field public final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public final e:Lb1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/OverlayService;->i:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lw0/b;->b:Lw0/b;

    .line 22
    .line 23
    sput-object v0, Lcom/example/navistart/OverlayService;->h:Lw0/b;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        -0x42t
        -0x27t
        0x6ct
        -0x65t
        0x63t
        -0x67t
        0x1dt
        0x7et
        -0x53t
        -0x26t
        0x64t
        -0x65t
        0x68t
        -0x80t
        0xat
        0x7at
        -0x52t
        -0x3et
        0x60t
        -0x39t
        0x72t
        -0x31t
        0xet
        0x66t
        -0x4dt
        -0x68t
        0x52t
        -0x3bt
        0x6ft
        -0x7et
        0x14t
        0x3dt
        -0x65t
        -0x27t
        0x62t
        -0x40t
        0x75t
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    nop

    .line 51
    :array_1
    .array-data 1
        -0x23t
        -0x4at
        0x1t
        -0x4bt
        0x6t
        -0x1ft
        0x7ct
        0x13t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xe

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/example/navistart/OverlayService;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    new-instance v0, Lb1/c;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-direct {v0, v1, p0}, Lb1/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/example/navistart/OverlayService;->e:Lb1/c;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        -0x2et
        -0x22t
        0x30t
        0x49t
        0x3et
        -0x33t
        0x65t
        -0x7ct
        -0x8t
        -0x26t
        0x23t
        0x52t
        0x31t
        -0x37t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    nop

    .line 51
    :array_1
    .array-data 1
        -0x63t
        -0x58t
        0x55t
        0x3bt
        0x52t
        -0x54t
        0x1ct
        -0x29t
    .end array-data
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-class v2, Lcom/example/navistart/OverlayService;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :array_0
    .array-data 1
        -0x3ct
        0x19t
        0x2ct
        0x54t
        0x6ft
        0x5bt
        0x6bt
        0x75t
        -0x12t
        0x1dt
        0x3ft
        0x4ft
        0x60t
        0x5ft
        0x41t
        0x52t
        -0x16t
        0x1dt
        0x3dt
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 1
        -0x75t
        0x6ft
        0x49t
        0x26t
        0x3t
        0x3at
        0x12t
        0x26t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/example/navistart/OverlayService;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lw0/y;->d()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lw0/a0;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lt1/a;->a(Z)V

    .line 26
    .line 27
    .line 28
    sput-boolean v1, Lcom/example/navistart/OverlayService;->g:Z

    .line 29
    .line 30
    const v0, 0x7f120007

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ld6/b;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2}, Ld6/b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/example/navistart/OverlayService;->a()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lw0/a0;->e()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 60
    .line 61
    new-instance v1, La4/g;

    .line 62
    .line 63
    const/16 v2, 0x11

    .line 64
    .line 65
    invoke-direct {v1, v2, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v2, 0x3a98

    .line 69
    .line 70
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/example/navistart/OverlayService;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 77
    .line 78
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/example/navistart/OverlayService;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/example/navistart/OverlayService;->g:Z

    .line 7
    .line 8
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lw0/y;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lt1/a;->a(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lt1/a;->setText(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Lw0/a0;->e()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const v1, 0x7f120009

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ld6/b;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v2, v3}, Ld6/b;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v2, 0x12

    .line 62
    .line 63
    new-array v2, v2, [B

    .line 64
    .line 65
    fill-array-data v2, :array_0

    .line 66
    .line 67
    .line 68
    const/16 v3, 0x8

    .line 69
    .line 70
    new-array v3, v3, [B

    .line 71
    .line 72
    fill-array-data v3, :array_1

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2, v0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lw0/y;->b()V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 1
        -0x17t
        0x42t
        -0x4ct
        0x2at
        0x2ct
        0x42t
        -0x45t
        -0x32t
        -0x14t
        0x53t
        -0x57t
        0x10t
        0x12t
        0x5at
        -0x48t
        -0x8t
        -0x37t
        0x65t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    nop

    .line 111
    :array_1
    .array-data 1
        -0x66t
        0x32t
        -0x23t
        0x75t
        0x4dt
        0x29t
        -0x31t
        -0x59t
    .end array-data
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Lt1/a;->e:Lcom/example/navistart/mainview/FireballView;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    iget-object v3, v2, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v2, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v2, v0, Lt1/a;->g:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lt1/a;->b:Landroid/view/WindowManager;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {v2, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v1, v0, Lt1/a;->f:Lcom/example/navistart/OverlayService;

    .line 38
    .line 39
    :cond_2
    iput-object v1, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 40
    .line 41
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lw0/a0;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Le0/e2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v0, p1, v2}, Le0/e2;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/example/navistart/OverlayService;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m(Lw0/b;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/OverlayService;->h:Lw0/b;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    sput-object p1, Lcom/example/navistart/OverlayService;->h:Lw0/b;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lt1/a;->setStatusSpickView(Lw0/b;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lw0/a0;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lw0/b;->d:Lw0/b;

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    sget-boolean v0, Lcom/example/navistart/OverlayService;->g:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/example/navistart/OverlayService;->g:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/example/navistart/OverlayService;->a()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lt1/a;->a(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Lw0/b;->d:Lw0/b;

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    sget-boolean p1, Lcom/example/navistart/OverlayService;->g:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    sput-boolean p1, Lcom/example/navistart/OverlayService;->g:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/example/navistart/OverlayService;->a()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lt1/a;->a(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 63
    .line 64
    const-string v1, ""

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lt1/a;->setText(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v1, 0x12

    .line 74
    .line 75
    new-array v1, v1, [B

    .line 76
    .line 77
    fill-array-data v1, :array_0

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    new-array v2, v2, [B

    .line 83
    .line 84
    fill-array-data v2, :array_1

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1, p1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lw0/y;->b()V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 1
        -0x7t
        -0x5ft
        -0x40t
        0x4t
        0x6dt
        0x9t
        -0x6ct
        0x1et
        -0x4t
        -0x50t
        -0x23t
        0x3et
        0x53t
        0x11t
        -0x69t
        0x28t
        -0x27t
        -0x7at
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    nop

    .line 123
    :array_1
    .array-data 1
        -0x76t
        -0x2ft
        -0x57t
        0x5bt
        0xct
        0x62t
        -0x20t
        0x77t
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/example/navistart/OverlayService;->f:Lcom/example/navistart/OverlayService;

    .line 5
    .line 6
    sget-object v0, Lw0/a0;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-class v0, Lw0/a0;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lw0/a0;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    invoke-static {p0}, Lcom/example/navistart/Si;->a(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    .line 30
    .line 31
    sget-object v1, Lcom/example/navistart/OverlayService;->i:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/example/navistart/OverlayService;->e:Lb1/c;

    .line 39
    .line 40
    const/16 v3, 0x21

    .line 41
    .line 42
    if-lt v1, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p0, v2, v0}, Lc5/h;->u(Lcom/example/navistart/OverlayService;Lb1/c;Landroid/content/IntentFilter;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/example/navistart/OverlayService;->f:Lcom/example/navistart/OverlayService;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/example/navistart/OverlayService;->f:Lcom/example/navistart/OverlayService;

    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lw0/a0;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Lw0/a0;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lw0/a0;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-virtual {p0}, Lcom/example/navistart/OverlayService;->e()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/example/navistart/OverlayService;->c(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/example/navistart/OverlayService;->e:Lb1/c;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/example/navistart/OverlayService;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt1/a;

    .line 5
    .line 6
    sget-object v1, Lcom/example/navistart/OverlayService;->h:Lw0/b;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lt1/a;-><init>(Lcom/example/navistart/OverlayService;Lw0/b;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 12
    .line 13
    sget-object v1, Lw0/a0;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-class v1, Lw0/a0;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v2, Lw0/a0;->d:Lw0/y;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lw0/a0;->d:Lw0/y;

    .line 23
    .line 24
    invoke-interface {v2}, Lw0/y;->e()Lw0/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    sget-object v2, Lw0/c;->a:Lw0/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    :goto_0
    invoke-virtual {v0, v2}, Lt1/a;->setStatusSpickView(Lw0/b;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p1
.end method
