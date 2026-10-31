.class public final Lt1/e;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Landroid/widget/TextView;

.field public d:Z

.field public e:I

.field public final f:Lcom/bumptech/glide/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x20

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
    sput-object v0, Lt1/e;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lt1/e;->h:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        0x6ct
        -0xct
        0x3dt
        0xbt
        0x66t
        -0x3et
        -0x7bt
        -0x8t
        0x6dt
        -0x1ct
        0x2ct
        0x38t
        0x4dt
        -0x2ct
        -0x7et
        -0x9t
        0x55t
        -0x1et
        0x39t
        0x17t
        0x58t
        -0x2at
        -0x7bt
        -0x18t
        0x73t
        -0x22t
        0x34t
        0xet
        0x4dt
        -0x39t
        -0x77t
        -0x11t
    .end array-data

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
    :array_1
    .array-data 1
        0xat
        -0x7ft
        0x58t
        0x67t
        0x39t
        -0x4bt
        -0x14t
        -0x64t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lt1/e;->b:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Lcom/bumptech/glide/m;

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lt1/e;->f:Lcom/bumptech/glide/m;

    .line 24
    .line 25
    const v0, 0x7f0c0073

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    const p1, 0x7f090211

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lt1/e;->c:Landroid/widget/TextView;

    .line 41
    .line 42
    return-void
.end method

.method public static a(Lorg/json/JSONObject;D)D
    .locals 9

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmpg-double v0, p1, v3

    .line 12
    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    const-wide v5, 0x4072c00000000000L    # 300.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmpl-double v0, p1, v5

    .line 21
    .line 22
    if-gtz v0, :cond_2

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    new-array v5, v0, [B

    .line 28
    .line 29
    fill-array-data v5, :array_0

    .line 30
    .line 31
    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    new-array v7, v6, [B

    .line 35
    .line 36
    fill-array-data v7, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    new-array v5, v0, [B

    .line 50
    .line 51
    fill-array-data v5, :array_2

    .line 52
    .line 53
    .line 54
    new-array v7, v6, [B

    .line 55
    .line 56
    fill-array-data v7, :array_3

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    :cond_0
    const/4 v5, 0x5

    .line 70
    new-array v7, v5, [B

    .line 71
    .line 72
    fill-array-data v7, :array_4

    .line 73
    .line 74
    .line 75
    new-array v8, v6, [B

    .line 76
    .line 77
    fill-array-data v8, :array_5

    .line 78
    .line 79
    .line 80
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-array v0, v0, [B

    .line 92
    .line 93
    fill-array-data v0, :array_6

    .line 94
    .line 95
    .line 96
    new-array v7, v6, [B

    .line 97
    .line 98
    fill-array-data v7, :array_7

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-array v5, v5, [B

    .line 106
    .line 107
    fill-array-data v5, :array_8

    .line 108
    .line 109
    .line 110
    new-array v6, v6, [B

    .line 111
    .line 112
    fill-array-data v6, :array_9

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {p0, v5, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-static {v5, v6}, Ljava/lang/Double;->isFinite(D)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_2

    .line 132
    .line 133
    cmpl-double p0, v5, v3

    .line 134
    .line 135
    if-ltz p0, :cond_2

    .line 136
    .line 137
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 138
    .line 139
    cmpg-double p0, v5, v3

    .line 140
    .line 141
    if-gtz p0, :cond_2

    .line 142
    .line 143
    mul-double/2addr p1, v5

    .line 144
    div-double/2addr p1, v3

    .line 145
    return-wide p1

    .line 146
    :cond_2
    :goto_0
    return-wide v1

    .line 147
    :array_0
    .array-data 1
        -0x66t
        -0x1bt
        -0x43t
        0x20t
        -0x3at
        0x4et
        -0x3bt
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_1
    .array-data 1
        -0x17t
        -0x70t
        -0x22t
        0x43t
        -0x5dt
        0x3dt
        -0x4at
        -0x18t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_2
    .array-data 1
        0x30t
        0x38t
        -0x30t
        -0x2ct
        0x0t
        0x8t
        -0x5ct
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_3
    .array-data 1
        0x43t
        0x4dt
        -0x4dt
        -0x49t
        0x65t
        0x7bt
        -0x29t
        -0x49t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_4
    .array-data 1
        -0x28t
        -0xet
        0x9t
        -0x68t
        -0x15t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    nop

    .line 187
    :array_5
    .array-data 1
        -0x43t
        -0x80t
        0x7bt
        -0x9t
        -0x67t
        0x1at
        0x67t
        0x56t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_6
    .array-data 1
        0x4dt
        -0x63t
        -0x22t
        0x13t
        0x5t
        0x56t
        -0x2ct
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_7
    .array-data 1
        0x3dt
        -0x8t
        -0x54t
        0x70t
        0x60t
        0x38t
        -0x60t
        0x3et
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_8
    .array-data 1
        -0xft
        0x74t
        -0x46t
        -0x1t
        -0x56t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    nop

    .line 219
    :array_9
    .array-data 1
        -0x79t
        0x15t
        -0x2at
        -0x76t
        -0x31t
        -0x51t
        -0x39t
        -0xft
    .end array-data
.end method

.method public static c()D
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lt1/e;->g:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [B

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/16 v4, 0x24

    .line 12
    .line 13
    aput-byte v4, v2, v3

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v3, v3, [B

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0x2c

    .line 31
    .line 32
    const/16 v2, 0x2e

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-wide v0

    .line 43
    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 44
    .line 45
    return-wide v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 1
        0x14t
        0x74t
        -0x27t
        -0x45t
        0x41t
        0x48t
        0x72t
        0x75t
    .end array-data
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lt1/e;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lt1/e;->e:I

    .line 6
    .line 7
    iget-object v0, p0, Lt1/e;->b:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lt1/e;->f:Lcom/bumptech/glide/m;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Lt1/e;->d:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lt1/e;->d:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lt1/e;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt1/e;->d:Z

    .line 3
    .line 4
    iget v0, p0, Lt1/e;->e:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lt1/e;->e:I

    .line 9
    .line 10
    iget-object v0, p0, Lt1/e;->b:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lt1/e;->b:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lt1/e;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lt1/e;->b:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lt1/e;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
