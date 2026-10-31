.class public final Lv0/i;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv0/h;


# instance fields
.field public b:Lb1/r;

.field public final c:Landroid/view/WindowManager$LayoutParams;

.field public final d:Lb1/t;

.field public e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/example/navistart/SpeedBoardService;Lb1/t;)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lv0/i;->d:Lb1/t;

    .line 6
    .line 7
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1a

    .line 12
    .line 13
    if-lt v0, v2, :cond_12

    .line 14
    .line 15
    const/16 v0, 0x7f6

    .line 16
    .line 17
    :goto_10
    move v4, v0

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    const/16 v0, 0x7d2

    .line 20
    .line 21
    goto :goto_10

    .line 22
    :goto_15
    const/16 v5, 0x308

    .line 23
    .line 24
    const/4 v6, -0x3

    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lv0/i;->c:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    const/16 v0, 0x11

    .line 33
    .line 34
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lv0/i;->g(Landroid/content/Context;Lb1/t;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lv0/i;->d:Lb1/t;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lv0/i;->g(Landroid/content/Context;Lb1/t;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lv0/i;->b:Lb1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lb1/r;->b:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lb1/r;->j(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lb1/o;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v0, v3}, Lb1/o;-><init>(Lb1/r;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public final c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final d()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e(F)V
    .registers 8

    .line 1
    iget-object v0, p0, Lv0/i;->b:Lb1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_36

    .line 4
    .line 5
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x13

    .line 11
    .line 12
    :try_start_b
    new-array v2, v2, [B

    .line 13
    .line 14
    fill-array-data v2, :array_38

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v4, v3, [B

    .line 20
    .line 21
    fill-array-data v4, :array_46

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    float-to-double v4, p1

    .line 29
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x10

    .line 33
    .line 34
    new-array p1, p1, [B

    .line 35
    .line 36
    fill-array-data p1, :array_4e

    .line 37
    .line 38
    .line 39
    new-array v2, v3, [B

    .line 40
    .line 41
    fill-array-data v2, :array_5a

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, p1, v1}, Lb1/r;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_36} :catch_36

    .line 53
    .line 54
    .line 55
    :catch_36
    :cond_36
    return-void

    .line 56
    nop

    .line 57
    :array_38
    .array-data 1
        0x5t
        0x12t
        -0x2ft
        -0x75t
        0x3dt
        -0x80t
        -0x45t
        0x11t
        0x17t
        0xct
        -0x2ct
        -0x7at
        0x18t
        -0x70t
        -0x77t
        0x14t
        0x19t
        0x16t
        -0x34t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_46
    .array-data 1
        0x70t
        0x62t
        -0x4bt
        -0x16t
        0x49t
        -0x1bt
        -0x18t
        0x78t
    .end array-data

    :array_4e
    .array-data 1
        0x24t
        0x54t
        -0x10t
        -0x6at
        0x38t
        -0x7at
        0x26t
        -0x41t
        0xft
        0x55t
        -0x2at
        -0x5ct
        0x3dt
        -0x78t
        0x3ct
        -0x59t
    .end array-data

    :array_5a
    .array-data 1
        0x63t
        0x4t
        -0x5dt
        -0x3bt
        0x51t
        -0x1ft
        0x48t
        -0x22t
    .end array-data
.end method

.method public final f(Landroid/location/Location;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv0/i;->b:Lb1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb1/r;->i(Landroid/location/Location;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final g(Landroid/content/Context;Lb1/t;)V
    .registers 10

    .line 1
    if-eqz p2, :cond_82

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p2, Lb1/t;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    iget-object v2, p2, Lb1/t;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_62

    .line 26
    .line 27
    new-instance v1, Lb1/m;

    .line 28
    .line 29
    const/16 v2, 0xf

    .line 30
    .line 31
    new-array v3, v2, [B

    .line 32
    .line 33
    fill-array-data v3, :array_84

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    new-array v5, v4, [B

    .line 39
    .line 40
    fill-array-data v5, :array_90

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    new-array v5, v5, [B

    .line 50
    .line 51
    fill-array-data v5, :array_98

    .line 52
    .line 53
    .line 54
    new-array v6, v4, [B

    .line 55
    .line 56
    fill-array-data v6, :array_a2

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v1, p1, v3, v0, v5}, Lb1/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    new-array v2, v2, [B

    .line 73
    .line 74
    fill-array-data v2, :array_aa

    .line 75
    .line 76
    .line 77
    new-array v4, v4, [B

    .line 78
    .line 79
    fill-array-data v4, :array_b6

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_58
    invoke-virtual {v1, v3}, Lb1/m;->c(Ljava/io/File;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_62

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {v3, v0, v1}, Lb1/u;->r(Ljava/io/File;Ljava/io/File;Z)Ljava/lang/String;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_62} :catch_62

    .line 97
    .line 98
    .line 99
    :catch_62
    :cond_62
    invoke-virtual {p0}, Lv0/i;->b()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    .line 104
    .line 105
    const v0, 0x7f0c0071

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0905e3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/webkit/WebView;

    .line 119
    .line 120
    iput-object v0, p0, Lv0/i;->e:Landroid/webkit/WebView;

    .line 121
    .line 122
    new-instance v0, Lb1/r;

    .line 123
    .line 124
    iget-object v1, p0, Lv0/i;->e:Landroid/webkit/WebView;

    .line 125
    .line 126
    invoke-direct {v0, p1, v1, p2}, Lb1/r;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lb1/t;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lv0/i;->b:Lb1/r;

    .line 130
    .line 131
    :cond_82
    return-void

    .line 132
    nop

    .line 133
    :array_84
    .array-data 1
        -0x68t
        0x7at
        0x69t
        -0x79t
        -0x79t
        -0xft
        0x35t
        0x4dt
        -0x6ct
        0x6at
        0x6bt
        -0x38t
        -0x78t
        -0xct
        0x31t
    .end array-data

    :array_90
    .array-data 1
        -0x4t
        0x1ft
        0xft
        -0x1at
        -0xet
        -0x63t
        0x41t
        0x12t
    .end array-data

    :array_98
    .array-data 1
        0x3t
        -0x77t
        0x0t
        -0xbt
        -0x6bt
        -0x6bt
        0x4t
        0x4bt
        0xft
        -0x67t
        0x2t
    .end array-data

    :array_a2
    .array-data 1
        0x67t
        -0x14t
        0x66t
        -0x6ct
        -0x20t
        -0x7t
        0x70t
        0x14t
    .end array-data

    :array_aa
    .array-data 1
        -0x29t
        -0x25t
        -0x79t
        -0x4et
        0x5ct
        -0x31t
        0x74t
        0x6dt
        -0x25t
        -0x35t
        -0x7bt
        -0x3t
        0x53t
        -0x36t
        0x70t
    .end array-data

    :array_b6
    .array-data 1
        -0x4dt
        -0x42t
        -0x1ft
        -0x2dt
        0x29t
        -0x5dt
        0x0t
        0x32t
    .end array-data
.end method

.method public getLayParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lv0/i;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .line 1
    return-object p0
.end method

.method public setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv0/i;->b:Lb1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb1/r;->h(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public setRPM(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public setSpeed(I)V
    .registers 2

    .line 1
    return-void
.end method
