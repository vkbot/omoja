.class public final Lp0/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final l:Ljava/lang/String;

.field public static m:Lp0/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp0/e;

.field public c:Lm0/q2;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Lp0/g;

.field public g:Landroid/view/WindowManager;

.field public h:Landroid/view/WindowManager$LayoutParams;

.field public i:Landroid/widget/TextView;

.field public j:I

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

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
    sput-object v0, Lp0/j;->l:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        0x6dt
        -0x48t
        -0x35t
        0x2et
        0x41t
        0x7ft
        0x6dt
        -0x44t
        0x70t
        -0x5et
        -0x36t
        0x39t
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 1
        0x38t
        -0x35t
        -0x52t
        0x5ct
        0x0t
        0xft
        0x1dt
        -0x31t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lp0/e;Lm0/q2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lp0/j;->d:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lp0/j;->e:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    new-instance v0, Lp0/g;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, v1}, Lp0/g;-><init>(Lp0/j;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lp0/j;->f:Lp0/g;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lp0/j;->a:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lp0/j;->b:Lp0/e;

    .line 36
    .line 37
    iput-object p3, p0, Lp0/j;->c:Lm0/q2;

    .line 38
    .line 39
    return-void
.end method

.method public static b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Le0/v0;

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    invoke-direct {v1, v2}, Le0/v0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lp0/j;->l:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lp0/j;->d:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lp0/j;->e:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-static {v0, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object v1, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v1, p0, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    iput-object v1, p0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 50
    .line 51
    sget-object v0, Lp0/j;->m:Lp0/j;

    .line 52
    .line 53
    if-ne v0, p0, :cond_1

    .line 54
    .line 55
    sput-object v1, Lp0/j;->m:Lp0/j;

    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 1
        -0x6dt
        0x3dt
        -0x17t
        -0x37t
        -0x13t
        0x8t
        0x4at
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 1
        -0x9t
        0x54t
        -0x66t
        -0x5ct
        -0x7ct
        0x7bt
        0x39t
        0x1ct
    .end array-data
.end method

.method public final c(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lp0/j;->a:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float/2addr p1, v0

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0x15

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
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lp0/j;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lp0/j;->c:Lm0/q2;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v1, v0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const v2, 0x7f130420

    .line 37
    .line 38
    .line 39
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :array_0
    .array-data 1
        0x7at
        -0x80t
        0x50t
        0x44t
        -0x21t
        -0x7et
        -0x41t
        -0x80t
        0x60t
        -0x68t
        0x54t
        0x40t
        -0x2et
        -0x76t
        -0x56t
        -0x3ft
        0x77t
        -0x66t
        0x50t
        0xct
        -0x6dt
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    nop

    .line 67
    :array_1
    .array-data 1
        0x15t
        -0xat
        0x35t
        0x36t
        -0x4dt
        -0x1dt
        -0x3at
        -0x60t
    .end array-data
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lp0/j;->h(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lp0/j;->k:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v1, p0, Lp0/j;->b:Lp0/e;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lp0/e;->h:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const v1, 0x3c23d70a    # 0.01f

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lp0/e;->e()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    const/16 v2, 0x9

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    new-array v0, v2, [B

    .line 60
    .line 61
    fill-array-data v0, :array_0

    .line 62
    .line 63
    .line 64
    new-array v1, v1, [B

    .line 65
    .line 66
    fill-array-data v1, :array_1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-array v0, v2, [B

    .line 75
    .line 76
    fill-array-data v0, :array_2

    .line 77
    .line 78
    .line 79
    new-array v1, v1, [B

    .line 80
    .line 81
    fill-array-data v1, :array_3

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    invoke-virtual {p0, v0}, Lp0/j;->g(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 1
        0xet
        0x6ft
        -0x23t
        0x5dt
        -0x6bt
        0x1dt
        -0xbt
        0x3bt
        0x1ct
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    nop

    .line 103
    :array_1
    .array-data 1
        0x2dt
        0x5dt
        -0x11t
        0x6ct
        -0x5ct
        0x2ct
        -0x3ct
        0xat
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_2
    .array-data 1
        0x28t
        0x20t
        0x40t
        0x13t
        0xdt
        0x46t
        0x50t
        0x20t
        0x3at
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    nop

    .line 121
    :array_3
    .array-data 1
        0xbt
        0x61t
        0x1t
        0x22t
        0x3ct
        0x77t
        0x61t
        0x11t
    .end array-data
.end method

.method public final f(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-boolean v1, p0, Lp0/j;->k:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    const/16 v1, 0x8

    .line 11
    .line 12
    if-lt p1, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lp0/j;->e()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    rem-int/lit8 v2, p1, 0x2

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v2, v3

    .line 27
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    new-array v5, v4, [B

    .line 39
    .line 40
    const/16 v6, 0x41

    .line 41
    .line 42
    aput-byte v6, v5, v3

    .line 43
    .line 44
    new-array v3, v1, [B

    .line 45
    .line 46
    fill-array-data v3, :array_0

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string v3, ""

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/high16 v3, 0x3e800000    # 0.25f

    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    const/16 v0, 0x9

    .line 72
    .line 73
    new-array v0, v0, [B

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    fill-array-data v0, :array_1

    .line 78
    .line 79
    .line 80
    new-array v1, v1, [B

    .line 81
    .line 82
    fill-array-data v1, :array_2

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    fill-array-data v0, :array_3

    .line 91
    .line 92
    .line 93
    new-array v1, v1, [B

    .line 94
    .line 95
    fill-array-data v1, :array_4

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_3
    invoke-virtual {p0, v0}, Lp0/j;->g(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lp0/h;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1, v4}, Lp0/h;-><init>(Lp0/j;II)V

    .line 108
    .line 109
    .line 110
    const-wide/16 v1, 0xb4

    .line 111
    .line 112
    iget-object p1, p0, Lp0/j;->d:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_4
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 1
        0x60t
        0x45t
        -0x3dt
        0x60t
        0x33t
        -0x57t
        0x3at
        -0x29t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 1
        -0x52t
        -0x56t
        0x74t
        0x43t
        0x12t
        0x1dt
        -0x24t
        0x70t
        -0x43t
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
    nop

    .line 137
    :array_2
    .array-data 1
        -0x73t
        -0x12t
        0x30t
        0x5t
        0x27t
        0x2at
        -0x61t
        0x40t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_3
    .array-data 1
        0x36t
        -0x28t
        -0x55t
        -0x3at
        0x31t
        -0x22t
        0x64t
        0x67t
        0x24t
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
    nop

    .line 155
    :array_4
    .array-data 1
        0x15t
        -0x67t
        -0x16t
        -0x9t
        0x0t
        -0x11t
        0x55t
        0x56t
    .end array-data
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0xa

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lp0/j;->c(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p1, p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final h(I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x16

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    fill-array-data v3, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v1, Lp0/j;->m:Lp0/j;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v4

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x9

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    fill-array-data v1, :array_2

    .line 44
    .line 45
    .line 46
    new-array v5, v2, [B

    .line 47
    .line 48
    fill-array-data v5, :array_3

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v1, v4

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v1, Lp0/j;->l:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    sget-object v0, Lp0/j;->m:Lp0/j;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    if-eq v0, p0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Lp0/j;->a()V

    .line 84
    .line 85
    .line 86
    :cond_2
    sput-object p0, Lp0/j;->m:Lp0/j;

    .line 87
    .line 88
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lp0/j;->e()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object v5, p0, Lp0/j;->a:Landroid/content/Context;

    .line 100
    .line 101
    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 105
    .line 106
    const/16 v6, 0x11

    .line 107
    .line 108
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 112
    .line 113
    const/4 v6, -0x1

    .line 114
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 118
    .line 119
    const/high16 v6, 0x41900000    # 18.0f

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 125
    .line 126
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 134
    .line 135
    .line 136
    const/16 v0, 0x9

    .line 137
    .line 138
    new-array v0, v0, [B

    .line 139
    .line 140
    fill-array-data v0, :array_4

    .line 141
    .line 142
    .line 143
    new-array v6, v2, [B

    .line 144
    .line 145
    fill-array-data v6, :array_5

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lp0/j;->g(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v6, p0, Lp0/j;->b:Lp0/e;

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    sget-object v7, Lp0/e;->h:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v6, v7, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_4

    .line 173
    .line 174
    const v6, 0x3c23d70a    # 0.01f

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    .line 179
    .line 180
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v6, Lp0/i;

    .line 186
    .line 187
    invoke-direct {v6, p0}, Lp0/i;-><init>(Lp0/j;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 194
    .line 195
    const/16 v0, 0x58

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lp0/j;->c(I)I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    invoke-virtual {p0, v0}, Lp0/j;->c(I)I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-interface {v6}, Lj1/v;->b()Lz0/a;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-interface {v6}, Lz0/a;->m()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    const/16 v11, 0x328

    .line 221
    .line 222
    const/4 v12, -0x3

    .line 223
    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 224
    .line 225
    .line 226
    iput-object v7, p0, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 227
    .line 228
    const v6, 0x800033

    .line 229
    .line 230
    .line 231
    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lp0/j;->c(I)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 246
    .line 247
    sub-int/2addr v8, v6

    .line 248
    div-int/lit8 v8, v8, 0x2

    .line 249
    .line 250
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    sget-object v9, Lp0/e;->f:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v8, v9, v6}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 265
    .line 266
    iget-object v6, p0, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lp0/j;->c(I)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 281
    .line 282
    sub-int/2addr v5, v0

    .line 283
    div-int/lit8 v5, v5, 0x2

    .line 284
    .line 285
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    sget-object v7, Lp0/e;->g:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v5, v7, v0}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 300
    .line 301
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-interface {v0}, Lj1/v;->b()Lz0/a;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v5, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v6, p0, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 315
    .line 316
    invoke-interface {v0, v5, v6}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iput-object v0, p0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 321
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const/16 v5, 0x14

    .line 328
    .line 329
    new-array v5, v5, [B

    .line 330
    .line 331
    fill-array-data v5, :array_6

    .line 332
    .line 333
    .line 334
    new-array v6, v2, [B

    .line 335
    .line 336
    fill-array-data v6, :array_7

    .line 337
    .line 338
    .line 339
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-object v5, p0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 347
    .line 348
    if-eqz v5, :cond_5

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_5
    move v3, v4

    .line 352
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 363
    .line 364
    if-nez v0, :cond_6

    .line 365
    .line 366
    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 368
    .line 369
    const/16 v0, 0x19

    .line 370
    .line 371
    new-array v0, v0, [B

    .line 372
    .line 373
    fill-array-data v0, :array_8

    .line 374
    .line 375
    .line 376
    new-array v1, v2, [B

    .line 377
    .line 378
    fill-array-data v1, :array_9

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {p0, v0}, Lp0/j;->d(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_6
    :goto_4
    new-instance v0, Lp0/h;

    .line 389
    .line 390
    invoke-direct {v0, p0, p1, v4}, Lp0/h;-><init>(Lp0/j;II)V

    .line 391
    .line 392
    .line 393
    const-wide/16 v1, 0x258

    .line 394
    .line 395
    iget-object p1, p0, Lp0/j;->d:Landroid/os/Handler;

    .line 396
    .line 397
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :array_0
    .array-data 1
        0x25t
        -0x49t
        0x69t
        0x6ct
        -0x24t
        -0x14t
        0x13t
        -0x15t
        0x23t
        -0x46t
        0x75t
        0x6ft
        -0x67t
        -0x6t
        0x56t
        -0x5t
        0x35t
        -0x55t
        0x6ft
        0x6dt
        -0x67t
        -0x5dt
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    nop

    .line 417
    :array_1
    .array-data 1
        0x56t
        -0x21t
        0x6t
        0x1bt
        -0x4t
        -0x62t
        0x76t
        -0x66t
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_2
    .array-data 1
        -0x31t
        -0x3bt
        0x5t
        0x4dt
        -0x52t
        -0x3ct
        -0x7et
        0x4dt
        -0x2et
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    nop

    .line 435
    :array_3
    .array-data 1
        -0x11t
        -0x53t
        0x64t
        0x3et
        -0x8t
        -0x53t
        -0x19t
        0x3at
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_4
    .array-data 1
        -0x49t
        -0x5bt
        0x3at
        0x37t
        -0x77t
        0x22t
        0xat
        0x2t
        -0x5bt
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    nop

    .line 453
    :array_5
    .array-data 1
        -0x6ct
        -0x1ct
        0x7bt
        0x6t
        -0x48t
        0x13t
        0x3bt
        0x33t
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_6
    .array-data 1
        0xdt
        0x16t
        0x3dt
        0x54t
        -0x39t
        0x61t
        0x7dt
        0x15t
        0x1et
        0x17t
        0x2dt
        0x77t
        -0x24t
        0x6at
        0x6ft
        0x51t
        0x4ct
        0x5t
        0x34t
        0x3ft
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_7
    .array-data 1
        0x6ct
        0x72t
        0x59t
        0x2t
        -0x52t
        0x4t
        0xat
        0x35t
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_8
    .array-data 1
        0x7t
        -0x33t
        0x4dt
        0x65t
        -0x54t
        -0x61t
        -0x62t
        -0x1dt
        0x3et
        -0x3bt
        0x44t
        0x64t
        -0x4ft
        -0x38t
        -0x5at
        -0x14t
        0x31t
        -0x2et
        0x42t
        0x68t
        -0x51t
        -0x77t
        -0x4ft
        -0x12t
        0x35t
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    nop

    .line 501
    :array_9
    .array-data 1
        0x50t
        -0x5ct
        0x23t
        0x1t
        -0x3dt
        -0x18t
        -0x2dt
        -0x7et
    .end array-data
.end method

.method public final i(II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    int-to-float p1, p1

    .line 7
    const/high16 v1, 0x42c80000    # 100.0f

    .line 8
    .line 9
    mul-float/2addr p1, v1

    .line 10
    int-to-float p2, p2

    .line 11
    div-float/2addr p1, p2

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 p2, 0x64

    .line 17
    .line 18
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    iget-object p2, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 34
    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lp0/j;->i:Landroid/widget/TextView;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    new-array p1, p1, [B

    .line 52
    .line 53
    const/16 v2, -0x7b

    .line 54
    .line 55
    aput-byte v2, p1, v0

    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    new-array v2, v0, [B

    .line 60
    .line 61
    fill-array-data v2, :array_0

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const/16 p1, 0x9

    .line 79
    .line 80
    new-array p1, p1, [B

    .line 81
    .line 82
    fill-array-data p1, :array_1

    .line 83
    .line 84
    .line 85
    new-array p2, v0, [B

    .line 86
    .line 87
    fill-array-data p2, :array_2

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lp0/j;->g(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 1
        -0x60t
        0x2t
        0x32t
        0x44t
        -0x6ct
        0x3ct
        0x1t
        -0x4bt
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 1
        0x37t
        -0x75t
        0x3at
        0x52t
        0x61t
        0x10t
        0x4ct
        -0x78t
        0x25t
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    nop

    .line 117
    :array_2
    .array-data 1
        0x14t
        -0x38t
        0x79t
        0x63t
        0x50t
        0x21t
        0x7dt
        -0x47t
    .end array-data
.end method
