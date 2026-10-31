.class public final Lt1/j;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Lt1/i;

.field public final e:Lt1/i;

.field public f:Z

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/widget/ImageView;

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/widget/FrameLayout;

.field public final q:Landroid/widget/FrameLayout;

.field public final r:Landroid/widget/FrameLayout;

.field public final s:Landroid/widget/FrameLayout;

.field public final t:Landroid/widget/FrameLayout;

.field public final u:Landroid/widget/FrameLayout;

.field public final v:Landroid/widget/FrameLayout;

.field public final w:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/example/navistart/LounchB;)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lt1/j;->f:Z

    .line 7
    .line 8
    const v0, 0x7f0c00e9

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const p1, 0x7f09016a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object p1, p0, Lt1/j;->g:Landroid/widget/ImageView;

    .line 24
    .line 25
    const p1, 0x7f09025f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iput-object p1, p0, Lt1/j;->p:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    const p1, 0x7f090258

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    iput-object p1, p0, Lt1/j;->q:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    const p1, 0x7f09025b

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iput-object p1, p0, Lt1/j;->r:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    const p1, 0x7f09025e

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/FrameLayout;

    .line 66
    .line 67
    iput-object p1, p0, Lt1/j;->s:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    const p1, 0x7f090260

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/FrameLayout;

    .line 77
    .line 78
    iput-object p1, p0, Lt1/j;->t:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    const p1, 0x7f090261

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/FrameLayout;

    .line 88
    .line 89
    iput-object p1, p0, Lt1/j;->u:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    const p1, 0x7f090259

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    iput-object p1, p0, Lt1/j;->v:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    const p1, 0x7f09025a

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/FrameLayout;

    .line 110
    .line 111
    iput-object p1, p0, Lt1/j;->w:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    const p1, 0x7f0900e4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/ImageView;

    .line 121
    .line 122
    iput-object p1, p0, Lt1/j;->h:Landroid/widget/ImageView;

    .line 123
    .line 124
    const p1, 0x7f0900df

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/ImageView;

    .line 132
    .line 133
    iput-object p1, p0, Lt1/j;->i:Landroid/widget/ImageView;

    .line 134
    .line 135
    const p1, 0x7f0900e2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/ImageView;

    .line 143
    .line 144
    iput-object p1, p0, Lt1/j;->j:Landroid/widget/ImageView;

    .line 145
    .line 146
    const p1, 0x7f0900e3

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/ImageView;

    .line 154
    .line 155
    iput-object p1, p0, Lt1/j;->k:Landroid/widget/ImageView;

    .line 156
    .line 157
    const p1, 0x7f0900e5

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/ImageView;

    .line 165
    .line 166
    iput-object p1, p0, Lt1/j;->l:Landroid/widget/ImageView;

    .line 167
    .line 168
    const p1, 0x7f0900e6

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/ImageView;

    .line 176
    .line 177
    iput-object p1, p0, Lt1/j;->m:Landroid/widget/ImageView;

    .line 178
    .line 179
    const p1, 0x7f0900e0

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/ImageView;

    .line 187
    .line 188
    iput-object p1, p0, Lt1/j;->n:Landroid/widget/ImageView;

    .line 189
    .line 190
    const p1, 0x7f0900e1

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/ImageView;

    .line 198
    .line 199
    iput-object p1, p0, Lt1/j;->o:Landroid/widget/ImageView;

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v1, 0x0

    .line 204
    const/4 v2, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v4, 0x0

    .line 207
    const/4 v5, 0x0

    .line 208
    const/4 v6, 0x0

    .line 209
    move-object v0, p0

    .line 210
    invoke-virtual/range {v0 .. v8}, Lt1/j;->g(ZZZZZZZZ)V

    .line 211
    .line 212
    .line 213
    new-instance p1, Landroid/os/Handler;

    .line 214
    .line 215
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object p1, v0, Lt1/j;->b:Landroid/os/Handler;

    .line 219
    .line 220
    new-instance p1, Lt1/i;

    .line 221
    .line 222
    invoke-direct {p1, p0, v1}, Lt1/i;-><init>(Lt1/j;I)V

    .line 223
    .line 224
    .line 225
    iput-object p1, v0, Lt1/j;->d:Lt1/i;

    .line 226
    .line 227
    new-instance p1, Landroid/os/Handler;

    .line 228
    .line 229
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object p1, v0, Lt1/j;->c:Landroid/os/Handler;

    .line 233
    .line 234
    new-instance v1, Lt1/i;

    .line 235
    .line 236
    const/4 v2, 0x1

    .line 237
    invoke-direct {v1, p0, v2}, Lt1/i;-><init>(Lt1/j;I)V

    .line 238
    .line 239
    .line 240
    iput-object v1, v0, Lt1/j;->e:Lt1/i;

    .line 241
    .line 242
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, v0, Lt1/j;->c:Landroid/os/Handler;

    .line 246
    .line 247
    iget-object v1, v0, Lt1/j;->e:Lt1/i;

    .line 248
    .line 249
    const-wide/16 v2, 0x2710

    .line 250
    .line 251
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public static synthetic a(Lt1/j;)V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lt1/j;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lt1/j;->setCenterImageHide(Z)V

    .line 7
    .line 8
    .line 9
    :cond_8
    return-void
.end method

.method public static c()Ljava/lang/Boolean;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_7c

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_79

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, 0x3d

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_86

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_73

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v5, v8

    .line 117
    :goto_74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_7c
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0xdt
        0x33t
        -0x54t
        0x1bt
        -0x22t
        0x67t
        -0x46t
        0x0t
    .end array-data
.end method

.method public static f(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {}, Lt1/j;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    new-instance v0, Lf1/c;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p1, v1}, Lf1/c;-><init>(Ljava/lang/Runnable;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method private setCenterImageHide(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lt1/j;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_2c

    .line 4
    .line 5
    const-wide/16 v1, 0x12c

    .line 6
    .line 7
    if-eqz p1, :cond_1b

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x3e99999a    # 0.3f

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 12

    .line 1
    invoke-static {}, Lt1/j;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6e

    .line 10
    .line 11
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x17

    .line 16
    .line 17
    new-array v2, v2, [B

    .line 18
    .line 19
    fill-array-data v2, :array_70

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    new-array v4, v3, [B

    .line 25
    .line 26
    fill-array-data v4, :array_80

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2, v3}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-boolean v2, p0, Lt1/j;->f:Z

    .line 38
    .line 39
    const-wide/16 v9, 0x2710

    .line 40
    .line 41
    if-eqz v2, :cond_43

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v8}, Lt1/j;->g(ZZZZZZZZ)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, Lt1/j;->f:Z

    .line 56
    .line 57
    iget-object v1, p0, Lt1/j;->c:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object v2, p0, Lt1/j;->e:Lt1/i;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    if-ne v1, v3, :cond_52

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    const/4 v8, 0x1

    .line 72
    const/4 v1, 0x1

    .line 73
    const/4 v2, 0x1

    .line 74
    const/4 v3, 0x1

    .line 75
    const/4 v4, 0x1

    .line 76
    const/4 v5, 0x1

    .line 77
    const/4 v6, 0x1

    .line 78
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v8}, Lt1/j;->g(ZZZZZZZZ)V

    .line 80
    .line 81
    .line 82
    goto :goto_61

    .line 83
    :cond_52
    const/4 v0, 0x6

    .line 84
    if-ne v1, v0, :cond_61

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v1, 0x1

    .line 89
    const/4 v2, 0x1

    .line 90
    const/4 v3, 0x1

    .line 91
    const/4 v4, 0x1

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x0

    .line 94
    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v8}, Lt1/j;->g(ZZZZZZZZ)V

    .line 96
    .line 97
    .line 98
    :cond_61
    :goto_61
    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lt1/j;->f:Z

    .line 100
    .line 101
    iget-object v1, p0, Lt1/j;->b:Landroid/os/Handler;

    .line 102
    .line 103
    iget-object v2, p0, Lt1/j;->d:Lt1/i;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    :cond_6e
    return-void

    .line 112
    nop

    .line 113
    :array_70
    .array-data 1
        0x7t
        0x51t
        0x52t
        -0x20t
        0x1ft
        0x2ct
        0x4et
        -0x4ft
        0xft
        0x7bt
        0x5bt
        -0x3t
        0x11t
        0x1bt
        0x4ft
        -0x63t
        0x8t
        0x51t
        0x4at
        -0x20t
        0x19t
        0x1dt
        0x48t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
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
    :array_80
    .array-data 1
        0x6at
        0x24t
        0x3et
        -0x6ct
        0x76t
        0x73t
        0x3bt
        -0x3et
    .end array-data
.end method

.method public final d(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lt1/j;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    invoke-virtual {p0}, Lt1/j;->b()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lt1/j;->setCenterImageHide(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v1, Lcom/example/navistart/ModernMainActivity;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x10000000

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final e(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lt1/j;->p:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt1/j;->q:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lt1/j;->r:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-static {p1, p3}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lt1/j;->s:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-static {p1, p4}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lt1/j;->t:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-static {p1, p5}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lt1/j;->u:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-static {p1, p6}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lt1/j;->v:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-static {p1, p7}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lt1/j;->w:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-static {p1, p8}, Lt1/j;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final g(ZZZZZZZZ)V
    .registers 10

    .line 1
    iget-object v0, p0, Lt1/j;->p:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt1/j;->q:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lt1/j;->r:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lt1/j;->s:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p4}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lt1/j;->t:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p5}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lt1/j;->u:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p6}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lt1/j;->v:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p7}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lt1/j;->w:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p8}, Lt1/j;->h(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final h(Landroid/view/View;Z)V
    .registers 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/16 v3, 0x8

    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    iget-object v5, p0, Lt1/j;->g:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x0

    .line 11
    const/high16 v8, 0x3f000000    # 0.5f

    .line 12
    .line 13
    if-eqz p2, :cond_93

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-eqz v9, :cond_93

    .line 20
    .line 21
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/high16 p2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-wide/16 v7, 0x320

    .line 52
    .line 53
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    .line 58
    .line 59
    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 67
    .line 68
    .line 69
    if-eqz v5, :cond_114

    .line 70
    .line 71
    new-array p1, v4, [B

    .line 72
    .line 73
    fill-array-data p1, :array_116

    .line 74
    .line 75
    .line 76
    new-array p2, v3, [B

    .line 77
    .line 78
    fill-array-data p2, :array_11e

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-array p2, v6, [F

    .line 86
    .line 87
    fill-array-data p2, :array_126

    .line 88
    .line 89
    .line 90
    invoke-static {v5, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-array p2, v4, [B

    .line 95
    .line 96
    fill-array-data p2, :array_130

    .line 97
    .line 98
    .line 99
    new-array v3, v3, [B

    .line 100
    .line 101
    fill-array-data v3, :array_138

    .line 102
    .line 103
    .line 104
    invoke-static {p2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-array v3, v6, [F

    .line 109
    .line 110
    fill-array-data v3, :array_140

    .line 111
    .line 112
    .line 113
    invoke-static {v5, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 118
    .line 119
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 120
    .line 121
    .line 122
    new-array v0, v0, [Landroid/animation/Animator;

    .line 123
    .line 124
    aput-object p1, v0, v2

    .line 125
    .line 126
    aput-object p2, v0, v1

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 129
    .line 130
    .line 131
    const-wide/16 p1, 0x12c

    .line 132
    .line 133
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 134
    .line 135
    .line 136
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 137
    .line 138
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_93
    if-nez p2, :cond_114

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_114

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    const-wide/16 v7, 0x258

    .line 173
    .line 174
    invoke-virtual {p2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    new-instance v7, Landroid/view/animation/AnticipateInterpolator;

    .line 179
    .line 180
    invoke-direct {v7}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    new-instance v7, Ls3/o;

    .line 188
    .line 189
    invoke-direct {v7, v1, p1}, Ls3/o;-><init>(ILandroid/view/View;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    .line 198
    .line 199
    if-eqz v5, :cond_114

    .line 200
    .line 201
    new-array p1, v4, [B

    .line 202
    .line 203
    fill-array-data p1, :array_14a

    .line 204
    .line 205
    .line 206
    new-array p2, v3, [B

    .line 207
    .line 208
    fill-array-data p2, :array_152

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-array p2, v6, [F

    .line 216
    .line 217
    fill-array-data p2, :array_15a

    .line 218
    .line 219
    .line 220
    invoke-static {v5, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-array p2, v4, [B

    .line 225
    .line 226
    fill-array-data p2, :array_164

    .line 227
    .line 228
    .line 229
    new-array v3, v3, [B

    .line 230
    .line 231
    fill-array-data v3, :array_16c

    .line 232
    .line 233
    .line 234
    invoke-static {p2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    new-array v3, v6, [F

    .line 239
    .line 240
    fill-array-data v3, :array_174

    .line 241
    .line 242
    .line 243
    invoke-static {v5, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 248
    .line 249
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    .line 251
    .line 252
    new-array v0, v0, [Landroid/animation/Animator;

    .line 253
    .line 254
    aput-object p1, v0, v2

    .line 255
    .line 256
    aput-object p2, v0, v1

    .line 257
    .line 258
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 259
    .line 260
    .line 261
    const-wide/16 p1, 0xfa

    .line 262
    .line 263
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 264
    .line 265
    .line 266
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 267
    .line 268
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 275
    .line 276
    .line 277
    :cond_114
    return-void

    .line 278
    nop

    .line 279
    :array_116
    .array-data 1
        0x52t
        -0x5at
        -0x5bt
        -0x28t
        -0x48t
        -0x1ct
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    nop

    .line 287
    :array_11e
    .array-data 1
        0x21t
        -0x3bt
        -0x3ct
        -0x4ct
        -0x23t
        -0x44t
        0x2ct
        -0x62t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_126
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_130
    .array-data 1
        0x37t
        0x48t
        0x62t
        -0xft
        -0x2dt
        0x6et
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    nop

    .line 313
    :array_138
    .array-data 1
        0x44t
        0x2bt
        0x3t
        -0x63t
        -0x4at
        0x37t
        0x26t
        0x61t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_140
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_14a
    .array-data 1
        0x55t
        0x14t
        0x19t
        -0x13t
        0x41t
        -0xet
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    nop

    .line 339
    :array_152
    .array-data 1
        0x26t
        0x77t
        0x78t
        -0x7ft
        0x24t
        -0x56t
        0x20t
        0x1ct
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_15a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_164
    .array-data 1
        0x39t
        -0x5bt
        -0x51t
        -0x2et
        -0x63t
        0x28t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    nop

    .line 365
    :array_16c
    .array-data 1
        0x4at
        -0x3at
        -0x32t
        -0x42t
        -0x8t
        0x71t
        -0x6ft
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
    :array_174
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setImageRun([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    .line 4
    iget-object v1, p0, Lt1/j;->h:Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    aget-object v0, p1, v0

    .line 11
    .line 12
    iget-object v1, p0, Lt1/j;->i:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    aget-object v0, p1, v0

    .line 19
    .line 20
    iget-object v1, p0, Lt1/j;->j:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aget-object v0, p1, v0

    .line 27
    .line 28
    iget-object v1, p0, Lt1/j;->k:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    aget-object v0, p1, v0

    .line 35
    .line 36
    iget-object v1, p0, Lt1/j;->l:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x5

    .line 42
    aget-object v0, p1, v0

    .line 43
    .line 44
    iget-object v1, p0, Lt1/j;->m:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    aget-object v0, p1, v0

    .line 51
    .line 52
    iget-object v1, p0, Lt1/j;->n:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x7

    .line 58
    aget-object p1, p1, v0

    .line 59
    .line 60
    iget-object v0, p0, Lt1/j;->o:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
