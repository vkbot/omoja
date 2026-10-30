.class public final Lt1/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/view/WindowManager;

.field public final b:Lt1/j;

.field public final c:Lr0/a;

.field public final d:Lcom/example/navistart/LounchB;

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/example/navistart/LounchB;ILjava/lang/String;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/k;->d:Lcom/example/navistart/LounchB;

    .line 5
    .line 6
    iput p2, p0, Lt1/k;->e:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lt1/k;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lr0/a;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lr0/a;-><init>(Lcom/example/navistart/LounchB;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lt1/k;->c:Lr0/a;

    .line 20
    .line 21
    new-instance v0, Lt1/j;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lt1/j;-><init>(Lcom/example/navistart/LounchB;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lt1/k;->b:Lt1/j;

    .line 27
    .line 28
    new-instance v0, Le0/u1;

    .line 29
    .line 30
    invoke-direct {v0, p1, p3}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p3}, Lj1/v;->b()Lz0/a;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget-object v1, p0, Lt1/k;->b:Lt1/j;

    .line 45
    .line 46
    iget-object v2, v0, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    invoke-interface {p3, v1, p2, v2}, Lz0/a;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lt1/k;->a:Landroid/view/WindowManager;

    .line 53
    .line 54
    iget-object p3, p0, Lt1/k;->b:Lt1/j;

    .line 55
    .line 56
    new-instance v1, Lf5/j;

    .line 57
    .line 58
    const/16 v2, 0x13

    .line 59
    .line 60
    invoke-direct {v1, v2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p3, p2, v1}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Le0/u1;->d()V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lt1/k;->b:Lt1/j;

    .line 70
    .line 71
    new-instance v4, La4/c;

    .line 72
    .line 73
    const/16 p2, 0xc

    .line 74
    .line 75
    const/4 p3, 0x0

    .line 76
    invoke-direct {v4, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    new-instance v5, La4/c;

    .line 80
    .line 81
    const/4 p3, 0x1

    .line 82
    invoke-direct {v5, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    new-instance v6, La4/c;

    .line 86
    .line 87
    const/4 p3, 0x2

    .line 88
    invoke-direct {v6, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    new-instance v7, La4/c;

    .line 92
    .line 93
    const/4 p3, 0x3

    .line 94
    invoke-direct {v7, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    new-instance v8, La4/c;

    .line 98
    .line 99
    const/4 p3, 0x4

    .line 100
    invoke-direct {v8, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    new-instance v9, La4/c;

    .line 104
    .line 105
    const/4 p3, 0x5

    .line 106
    invoke-direct {v9, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    new-instance v10, La4/c;

    .line 110
    .line 111
    const/4 p3, 0x6

    .line 112
    invoke-direct {v10, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    new-instance v11, La4/c;

    .line 116
    .line 117
    const/4 p3, 0x7

    .line 118
    invoke-direct {v11, p0, p3, p2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v3 .. v11}, Lt1/j;->e(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lr0/e;->a(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lt1/k;->b:Lt1/j;

    .line 129
    .line 130
    if-eqz p2, :cond_0

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lt1/j;->setImageRun([Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
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
    iget-object v1, p0, Lt1/k;->d:Lcom/example/navistart/LounchB;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, -0x1

    .line 31
    iget v2, p0, Lt1/k;->e:I

    .line 32
    .line 33
    if-le v2, v1, :cond_0

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    if-ge v2, v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 1
        -0x7dt
        0x2ft
        0x41t
        -0x18t
        0x54t
        -0x41t
        0x1ct
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 1
        -0x19t
        0x46t
        0x32t
        -0x68t
        0x38t
        -0x22t
        0x65t
        -0x53t
    .end array-data
.end method
