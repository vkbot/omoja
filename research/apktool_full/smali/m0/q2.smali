.class public Lm0/q2;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Lp0/e;

.field public c:Lp0/j;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/Button;

.field public final i:Landroid/os/Handler;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

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
    iput-object v0, p0, Lm0/q2;->i:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lm0/q2;->j:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c006d

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lp0/e;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-direct {p2, p3}, Lp0/e;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lm0/q2;->b:Lp0/e;

    .line 19
    .line 20
    new-instance p2, Lp0/j;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Lm0/q2;->b:Lp0/e;

    .line 27
    .line 28
    invoke-direct {p2, p3, v0, p0}, Lp0/j;-><init>(Landroid/content/Context;Lp0/e;Lm0/q2;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lm0/q2;->c:Lp0/j;

    .line 32
    .line 33
    const p2, 0x7f0905a9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p2, p0, Lm0/q2;->d:Landroid/widget/TextView;

    .line 43
    .line 44
    const p2, 0x7f0905a8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object p2, p0, Lm0/q2;->e:Landroid/widget/TextView;

    .line 54
    .line 55
    const p2, 0x7f0905ab

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object p2, p0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 65
    .line 66
    const p2, 0x7f0905aa

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Landroid/widget/ProgressBar;

    .line 74
    .line 75
    iput-object p2, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 76
    .line 77
    const p2, 0x7f0905a6

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroid/widget/Button;

    .line 85
    .line 86
    iput-object p2, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 87
    .line 88
    const p2, 0x7f0905a7

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance p3, Lm0/n2;

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-direct {p3, p0, v0}, Lm0/n2;-><init>(Lm0/q2;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 105
    .line 106
    new-instance p3, Lm0/n2;

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    invoke-direct {p3, p0, v0}, Lm0/n2;-><init>(Lm0/q2;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lm0/q2;->v()V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lm0/q2;->c:Lp0/j;

    .line 119
    .line 120
    const/4 p3, 0x1

    .line 121
    invoke-virtual {p2, p3}, Lp0/j;->h(I)V

    .line 122
    .line 123
    .line 124
    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/q2;->j:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/q2;->c:Lp0/j;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lm0/q2;->b:Lp0/e;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lp0/e;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lm0/q2;->c:Lp0/j;

    .line 17
    .line 18
    iput-object v1, v0, Lp0/j;->c:Lm0/q2;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lm0/q2;->c:Lp0/j;

    .line 22
    .line 23
    invoke-virtual {v0}, Lp0/j;->a()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v1, p0, Lm0/q2;->c:Lp0/j;

    .line 27
    .line 28
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm0/q2;->v()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lm0/q2;->c:Lp0/j;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lp0/j;->h(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lm0/q2;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lm0/q2;->b:Lp0/e;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lp0/e;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lm0/q2;->k:Z

    .line 24
    .line 25
    iget-object v3, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 32
    .line 33
    const v5, 0x3f0ccccd    # 0.55f

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const v5, 0x7f130426

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const v5, 0x7f13041d

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 61
    .line 62
    const/16 v5, 0x64

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0, v4, v2, v0}, Lm0/q2;->u(IIZ)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Le0/e2;

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    invoke-direct {v2, p0, v0, v1, v3}, Le0/e2;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lm0/q2;->j:Ljava/util/concurrent/ExecutorService;

    .line 87
    .line 88
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method public final u(IIZ)V
    .locals 2

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
    iget-object p2, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p2, p0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    const p3, 0x7f130424

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const p3, 0x7f130423

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p3, " "

    .line 55
    .line 56
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    new-array p1, p1, [B

    .line 64
    .line 65
    const/16 p3, 0x35

    .line 66
    .line 67
    aput-byte p3, p1, v0

    .line 68
    .line 69
    const/16 p3, 0x8

    .line 70
    .line 71
    new-array p3, p3, [B

    .line 72
    .line 73
    fill-array-data p3, :array_0

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :array_0
    .array-data 1
        0x10t
        0x47t
        -0x80t
        0x6et
        0x7at
        0x43t
        -0x7at
        -0x4at
    .end array-data
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm0/q2;->b:Lp0/e;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lp0/e;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lm0/q2;->b:Lp0/e;

    .line 16
    .line 17
    iget-object v2, v1, Lp0/e;->b:Lp0/b;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Lp0/b;->c(Z)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Lp0/e;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lp0/e;->a()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v2, v1

    .line 43
    :cond_1
    iget-object v1, p0, Lm0/q2;->d:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v4, p0, Lm0/q2;->b:Lp0/e;

    .line 46
    .line 47
    invoke-virtual {v4}, Lp0/e;->c()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const v4, 0x7f13042c

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const v4, 0x7f13042b

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lm0/q2;->e:Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const v4, 0x7f13041e

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const v4, 0x7f13041f

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 90
    .line 91
    iget-boolean v2, p0, Lm0/q2;->k:Z

    .line 92
    .line 93
    xor-int/2addr v2, v3

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 98
    .line 99
    iget-boolean v2, p0, Lm0/q2;->k:Z

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    const v2, 0x3f0ccccd    # 0.55f

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    .line 109
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 110
    .line 111
    .line 112
    iget-boolean v1, p0, Lm0/q2;->k:Z

    .line 113
    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    iget-object v1, p0, Lm0/q2;->h:Landroid/widget/Button;

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    const v0, 0x7f130425

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    const v0, 0x7f13041c

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v0, p0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    iget-boolean v1, p0, Lm0/q2;->k:Z

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    const/16 v1, 0x8

    .line 141
    .line 142
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object v0, p0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_9

    .line 152
    .line 153
    iget-object v0, p0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 154
    .line 155
    const v1, 0x7f130429

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    .line 160
    .line 161
    :cond_9
    iget-object v0, p0, Lm0/q2;->c:Lp0/j;

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v0}, Lp0/j;->e()V

    .line 166
    .line 167
    .line 168
    :cond_a
    :goto_5
    return-void
.end method
