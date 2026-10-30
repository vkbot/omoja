.class public Lv0/e;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv0/g;


# instance fields
.field public b:Lcom/example/navistart/SpeedBoard/PPSView;

.field public c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(I)V
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
    new-instance v1, La4/c;

    .line 11
    .line 12
    const/16 v2, 0xe

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, v2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->d:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->m:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, v0, Lcom/example/navistart/SpeedBoard/PPSView;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/e;->c:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 34
    .line 35
    const/high16 v1, -0x1000000

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setTexColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/16 v2, 0xdc

    .line 47
    .line 48
    int-to-float v2, v2

    .line 49
    invoke-virtual {v1, v2}, Lw1/e;->setMaxSpeed(F)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 53
    .line 54
    const/16 v2, 0x84

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lw1/i;->setStartDegree(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 60
    .line 61
    const/16 v2, 0x18c

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lw1/i;->setEndDegree(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 67
    .line 68
    const v1, 0x7f0701d7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void

    .line 75
    :array_0
    .array-data 1
        0x62t
        0x42t
        0xet
        0x12t
        0x3t
        -0x2dt
        0x6ct
    .end array-data

    .line 76
    :array_1
    .array-data 1
        0x41t
        0x7t
        0x3et
        0x57t
        0x33t
        -0x6at
        0x5ct
        -0x63t
    .end array-data
.end method

.method public final k(Ls0/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c010d

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
    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/woha/pogoda/WeatherService;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 9
    .line 10
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->c()Lk7/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lk7/b;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->c()Lk7/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v2, v2, Lk7/b;->d:I

    .line 21
    .line 22
    iget-object v3, v0, Lcom/example/navistart/SpeedBoard/PPSView;->d:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lcom/example/navistart/SpeedBoard/PPSView;->m:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lcom/example/navistart/SpeedBoard/PPSView;->c:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-wide/16 v1, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 83
    .line 84
    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f09046a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/example/navistart/SpeedBoard/PPSView;

    .line 12
    .line 13
    iput-object p2, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 14
    .line 15
    const p2, 0x7f09005d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lv0/e;->c:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/e;->c:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setBackgroundColor(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setTexColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lv0/e;->b:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/16 v2, 0xdc

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    invoke-virtual {v1, v2}, Lw1/e;->setMaxSpeed(F)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 33
    .line 34
    const/16 v2, 0x84

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lw1/i;->setStartDegree(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 40
    .line 41
    const/16 v2, 0x18c

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lw1/i;->setEndDegree(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 47
    .line 48
    const v1, 0x7f0701d8

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
