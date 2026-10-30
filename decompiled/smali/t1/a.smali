.class public final Lt1/a;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/view/WindowManager;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/example/navistart/mainview/FireballView;

.field public f:Lcom/example/navistart/OverlayService;

.field public final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/example/navistart/OverlayService;Lw0/b;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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
    iput-object v0, p0, Lt1/a;->g:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0c00fb

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f090569

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lt1/a;->c:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const v0, 0x7f090599

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p0, Lt1/a;->d:Landroid/widget/TextView;

    .line 47
    .line 48
    const v0, 0x7f090202

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/example/navistart/mainview/FireballView;

    .line 56
    .line 57
    iput-object v0, p0, Lt1/a;->e:Lcom/example/navistart/mainview/FireballView;

    .line 58
    .line 59
    iput-object p1, p0, Lt1/a;->f:Lcom/example/navistart/OverlayService;

    .line 60
    .line 61
    new-instance v0, Le0/u1;

    .line 62
    .line 63
    const/16 v1, 0xe

    .line 64
    .line 65
    new-array v1, v1, [B

    .line 66
    .line 67
    fill-array-data v1, :array_0

    .line 68
    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    new-array v2, v2, [B

    .line 73
    .line 74
    fill-array-data v2, :array_1

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, p1, v1}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, v0, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 96
    .line 97
    invoke-interface {v1, p0, v2}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lt1/a;->b:Landroid/view/WindowManager;

    .line 102
    .line 103
    new-instance v2, Ls1/x0;

    .line 104
    .line 105
    const/4 v3, 0x3

    .line 106
    invoke-direct {v2, v3, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0, v1, v2}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Le0/u1;->d()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lt1/a;->setStatusSpickView(Lw0/b;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :array_0
    .array-data 1
        0x60t
        0x40t
        -0x4t
        -0x5et
        0x15t
        -0x14t
        0x6t
        -0x31t
        0x4at
        0x44t
        -0x11t
        -0x47t
        0x1at
        -0x18t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    nop

    .line 131
    :array_1
    .array-data 1
        0x2ft
        0x36t
        -0x67t
        -0x30t
        0x79t
        -0x73t
        0x7ft
        -0x64t
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    new-instance v0, Lc7/e;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lt1/a;->g:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStatusSpickView(Lw0/b;)V
    .locals 2

    .line 1
    new-instance v0, Ls1/x0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lt1/a;->g:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ls1/x0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lt1/a;->g:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
