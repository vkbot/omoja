.class public Lcom/example/navistart/LounchB;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static g:Landroid/view/WindowManager;

.field public static h:Lr5/c;


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public c:Lt1/j;

.field public d:Lb1/m;

.field public e:Lt1/k;

.field public f:Lr0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

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
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0xf

    .line 35
    .line 36
    new-array v1, v1, [B

    .line 37
    .line 38
    fill-array-data v1, :array_2

    .line 39
    .line 40
    .line 41
    new-array v2, v2, [B

    .line 42
    .line 43
    fill-array-data v2, :array_3

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void

    .line 58
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-class v2, Lcom/example/navistart/LounchB;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 1
        -0x7ct
        -0x7bt
        0x3dt
        0x7t
        -0x1ct
        -0x27t
        -0xct
        -0x39t
        -0x46t
        -0x61t
        0x2dt
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 1
        -0x38t
        -0x16t
        0x48t
        0x69t
        -0x79t
        -0x4ft
        -0x4at
        -0x6dt
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_2
    .array-data 1
        0x17t
        0xat
        -0x39t
        0x2ft
        0x5et
        -0x1ct
        0x2ct
        -0xbt
        0x3bt
        0x1ft
        -0x13t
        0x36t
        0x5ft
        -0x19t
        0x36t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_3
    .array-data 1
        0x64t
        0x7dt
        -0x68t
        0x42t
        0x2bt
        -0x78t
        0x58t
        -0x64t
    .end array-data
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
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, -0x1

    .line 40
    if-le v1, v2, :cond_0

    .line 41
    .line 42
    array-length v0, v0

    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 1
        0x39t
        0x1bt
        0x1at
        -0x3at
        -0x34t
        -0x7ft
        -0x71t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 1
        0x5dt
        0x72t
        0x69t
        -0x4at
        -0x60t
        -0x20t
        -0xat
        -0x75t
    .end array-data
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/example/navistart/LounchB;->d:Lb1/m;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lt1/j;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v3, v1

    .line 31
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/example/navistart/LounchB;->e:Lt1/k;

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    iget-object v0, v0, Lt1/k;->b:Lt1/j;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 4
    .line 5
    invoke-static {v0, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/example/navistart/LounchB;->d:Lb1/m;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lb1/m;->d()Z

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/view/WindowManager;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lt1/j;

    .line 24
    .line 25
    invoke-static {v1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/LounchB;->e:Lt1/k;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lt1/k;->a()Z

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lt1/k;->a:Landroid/view/WindowManager;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lt1/k;->b:Lt1/j;

    .line 40
    .line 41
    invoke-static {v1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr5/c;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/example/navistart/LounchB;->h:Lr5/c;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/example/navistart/LounchB;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/example/navistart/LounchB;->h:Lr5/c;

    .line 6
    .line 7
    sget-object v1, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-static {v1, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/example/navistart/LounchB;->d()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/example/navistart/LounchB;->a()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-static {v1, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    new-instance v1, Le0/u1;

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    new-array v5, v4, [B

    .line 24
    .line 25
    fill-array-data v5, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v1, v0, v3}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const v5, 0x7f0c0086

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    iput-object v3, v0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v3}, Lj1/v;->b()Lz0/a;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v5, v0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iget-object v6, v1, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    invoke-interface {v3, v5, v6}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sput-object v3, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 71
    .line 72
    new-instance v5, Le0/j0;

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    invoke-direct {v5, v0, v6}, Le0/j0;-><init>(Lcom/example/navistart/LounchB;I)V

    .line 76
    .line 77
    .line 78
    iget-object v7, v0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    invoke-virtual {v1, v7, v3, v5}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Le0/u1;->d()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/16 v3, 0xb

    .line 91
    .line 92
    new-array v3, v3, [B

    .line 93
    .line 94
    fill-array-data v3, :array_2

    .line 95
    .line 96
    .line 97
    new-array v5, v4, [B

    .line 98
    .line 99
    fill-array-data v5, :array_3

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-virtual {v1, v3, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iget-object v3, v0, Lcom/example/navistart/LounchB;->b:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    if-eqz v1, :cond_0

    .line 116
    .line 117
    move v1, v5

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move v1, v4

    .line 120
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/example/navistart/LounchB;->d()V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lr0/a;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Lr0/a;-><init>(Lcom/example/navistart/LounchB;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, v0, Lcom/example/navistart/LounchB;->f:Lr0/a;

    .line 132
    .line 133
    new-instance v1, Lt1/j;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lt1/j;-><init>(Lcom/example/navistart/LounchB;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 139
    .line 140
    new-instance v1, Le0/u1;

    .line 141
    .line 142
    const/16 v3, 0x11

    .line 143
    .line 144
    new-array v3, v3, [B

    .line 145
    .line 146
    fill-array-data v3, :array_4

    .line 147
    .line 148
    .line 149
    new-array v7, v4, [B

    .line 150
    .line 151
    fill-array-data v7, :array_5

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-direct {v1, v0, v3}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v3}, Lj1/v;->b()Lz0/a;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v7, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 173
    .line 174
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-interface {v8}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    iget-object v9, v1, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 186
    .line 187
    invoke-interface {v3, v7, v8, v9}, Lz0/a;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    sput-object v3, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 192
    .line 193
    iget-object v7, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 194
    .line 195
    new-instance v8, Le0/j0;

    .line 196
    .line 197
    invoke-direct {v8, v0, v5}, Le0/j0;-><init>(Lcom/example/navistart/LounchB;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v7, v3, v8}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Le0/u1;->d()V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lb1/m;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Lb1/m;-><init>(Lcom/example/navistart/LounchB;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, v0, Lcom/example/navistart/LounchB;->d:Lb1/m;

    .line 212
    .line 213
    new-instance v1, Lt1/k;

    .line 214
    .line 215
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {v3}, Lcom/example/navistart/cores/ProLanProxy;->getZaPassDisplayID()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    const/16 v7, 0x15

    .line 227
    .line 228
    new-array v7, v7, [B

    .line 229
    .line 230
    fill-array-data v7, :array_6

    .line 231
    .line 232
    .line 233
    new-array v8, v4, [B

    .line 234
    .line 235
    fill-array-data v8, :array_7

    .line 236
    .line 237
    .line 238
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-direct {v1, v0, v3, v7}, Lt1/k;-><init>(Lcom/example/navistart/LounchB;ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iput-object v1, v0, Lcom/example/navistart/LounchB;->e:Lt1/k;

    .line 246
    .line 247
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const/16 v3, 0xf

    .line 252
    .line 253
    new-array v3, v3, [B

    .line 254
    .line 255
    fill-array-data v3, :array_8

    .line 256
    .line 257
    .line 258
    new-array v4, v4, [B

    .line 259
    .line 260
    fill-array-data v4, :array_9

    .line 261
    .line 262
    .line 263
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v1, v3, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/example/navistart/LounchB;->b(Z)V

    .line 272
    .line 273
    .line 274
    iget-object v7, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 275
    .line 276
    new-instance v8, La4/c;

    .line 277
    .line 278
    const/4 v1, 0x4

    .line 279
    invoke-direct {v8, v0, v5, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    new-instance v9, La4/c;

    .line 283
    .line 284
    invoke-direct {v9, v0, v6, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 285
    .line 286
    .line 287
    new-instance v10, La4/c;

    .line 288
    .line 289
    const/4 v3, 0x2

    .line 290
    invoke-direct {v10, v0, v3, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 291
    .line 292
    .line 293
    new-instance v11, La4/c;

    .line 294
    .line 295
    const/4 v3, 0x3

    .line 296
    invoke-direct {v11, v0, v3, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    new-instance v12, La4/c;

    .line 300
    .line 301
    invoke-direct {v12, v0, v1, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 302
    .line 303
    .line 304
    new-instance v13, La4/c;

    .line 305
    .line 306
    const/4 v3, 0x5

    .line 307
    invoke-direct {v13, v0, v3, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 308
    .line 309
    .line 310
    new-instance v14, La4/c;

    .line 311
    .line 312
    const/4 v3, 0x6

    .line 313
    invoke-direct {v14, v0, v3, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 314
    .line 315
    .line 316
    new-instance v15, La4/c;

    .line 317
    .line 318
    invoke-direct {v15, v0, v2, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {v7 .. v15}, Lt1/j;->e(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 325
    .line 326
    invoke-static {v0}, Lr0/e;->a(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Lt1/j;->setImageRun([Landroid/graphics/drawable/Drawable;)V

    .line 331
    .line 332
    .line 333
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    return v1

    .line 338
    nop

    .line 339
    :array_0
    .array-data 1
        -0x6t
        0x10t
        0x3dt
        0x6et
        0x33t
        -0x2bt
        0x1at
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_1
    .array-data 1
        -0x4at
        0x7ft
        0x48t
        0x0t
        0x50t
        -0x43t
        0x58t
        0x3et
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_2
    .array-data 1
        -0x45t
        -0x4et
        -0x32t
        0x68t
        -0x71t
        -0xbt
        -0x6ct
        -0xft
        -0x7bt
        -0x58t
        -0x22t
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_3
    .array-data 1
        -0x9t
        -0x23t
        -0x45t
        0x6t
        -0x14t
        -0x63t
        -0x2at
        -0x5bt
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_4
    .array-data 1
        -0x6bt
        -0x1dt
        -0x58t
        -0x5dt
        0x53t
        0x0t
        -0x77t
        -0x4bt
        -0x74t
        -0x1et
        -0x55t
        -0x47t
        0x65t
        0x29t
        -0x5et
        -0x5bt
        -0x71t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    nop

    .line 387
    :array_5
    .array-data 1
        -0x8t
        -0x6at
        -0x3ct
        -0x29t
        0x3at
        0x5ft
        -0x35t
        -0x40t
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_6
    .array-data 1
        0x3dt
        -0x7dt
        0x7ft
        -0x1dt
        -0x14t
        0x20t
        -0xbt
        0x3t
        0x24t
        -0x7et
        0x7ct
        -0x7t
        -0x26t
        0x9t
        -0x22t
        0x13t
        0x27t
        -0x57t
        0x69t
        -0xat
        -0x1ft
    .end array-data

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
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    nop

    .line 411
    :array_7
    .array-data 1
        0x50t
        -0xat
        0x13t
        -0x69t
        -0x7bt
        0x7ft
        -0x49t
        0x76t
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_8
    .array-data 1
        0x34t
        -0xft
        -0xet
        -0x2at
        -0x71t
        -0x6ft
        -0x4dt
        -0x49t
        0x18t
        -0x1ct
        -0x28t
        -0x31t
        -0x72t
        -0x6et
        -0x57t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_9
    .array-data 1
        0x47t
        -0x7at
        -0x53t
        -0x45t
        -0x6t
        -0x3t
        -0x39t
        -0x22t
    .end array-data
.end method
