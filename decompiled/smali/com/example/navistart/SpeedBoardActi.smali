.class public Lcom/example/navistart/SpeedBoardActi;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh0/c;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:La4/g;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 1
        -0x41t
        -0x4et
        0x57t
        0x6et
        0x77t
        -0x20t
        0x17t
        -0x29t
        -0x62t
        -0x5at
        0x73t
        0x68t
        0x67t
        -0x35t
    .end array-data

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
    nop

    .line 43
    :array_1
    .array-data 1
        -0x14t
        -0x3et
        0x32t
        0xbt
        0x13t
        -0x5et
        0x78t
        -0x4at
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/example/navistart/BlackActivity;->t(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0c010e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x13

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    new-array v2, v1, [B

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x7

    .line 39
    new-array v3, v2, [B

    .line 40
    .line 41
    fill-array-data v3, :array_2

    .line 42
    .line 43
    .line 44
    new-array v4, v1, [B

    .line 45
    .line 46
    fill-array-data v4, :array_3

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1, v0, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-array v0, v2, [B

    .line 58
    .line 59
    fill-array-data v0, :array_4

    .line 60
    .line 61
    .line 62
    new-array v2, v1, [B

    .line 63
    .line 64
    fill-array-data v2, :array_5

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    new-instance p1, Lv0/e;

    .line 78
    .line 79
    invoke-direct {p1}, Lv0/e;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lb1/h;

    .line 84
    .line 85
    invoke-direct {p1}, Lb1/h;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/16 v2, 0xb

    .line 97
    .line 98
    new-array v2, v2, [B

    .line 99
    .line 100
    fill-array-data v2, :array_6

    .line 101
    .line 102
    .line 103
    new-array v1, v1, [B

    .line 104
    .line 105
    fill-array-data v1, :array_7

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const v2, 0x7f09046a

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 123
    .line 124
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    new-instance v0, Le0/q2;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lv1/c;->b:Landroidx/lifecycle/MutableLiveData;

    .line 152
    .line 153
    new-instance v0, Le0/q2;

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p1, p1, Lv1/c;->c:Landroidx/lifecycle/MutableLiveData;

    .line 171
    .line 172
    new-instance v0, Le0/q2;

    .line 173
    .line 174
    const/4 v1, 0x2

    .line 175
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object p1, p1, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    new-instance v0, Le0/q2;

    .line 192
    .line 193
    const/4 v1, 0x3

    .line 194
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lv1/c;->e:Landroidx/lifecycle/MutableLiveData;

    .line 209
    .line 210
    new-instance v0, Le0/q2;

    .line 211
    .line 212
    const/4 v1, 0x4

    .line 213
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object p1, p1, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 228
    .line 229
    new-instance v0, Le0/q2;

    .line 230
    .line 231
    const/4 v1, 0x5

    .line 232
    invoke-direct {v0, p0, v1}, Le0/q2;-><init>(Lcom/example/navistart/SpeedBoardActi;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 236
    .line 237
    .line 238
    new-instance p1, La4/g;

    .line 239
    .line 240
    const/16 v0, 0x12

    .line 241
    .line 242
    invoke-direct {p1, v0, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iput-object p1, p0, Lcom/example/navistart/SpeedBoardActi;->c:La4/g;

    .line 246
    .line 247
    return-void

    .line 248
    nop

    .line 249
    :array_0
    .array-data 1
        0x72t
        -0x6at
        -0x1at
        -0x68t
        -0x80t
        -0x44t
        -0x41t
        0x20t
        0x60t
        -0x79t
        -0x25t
        -0x4ct
        -0x6et
        -0x47t
        -0x42t
        0x24t
        0x71t
        -0x6at
        -0x20t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_1
    .array-data 1
        0x5t
        -0xdt
        -0x7ct
        -0x39t
        -0x9t
        -0x2bt
        -0x25t
        0x47t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_2
    .array-data 1
        -0x67t
        0x65t
        0x6at
        0x1ft
        -0x37t
        -0x6t
        0x65t
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_3
    .array-data 1
        -0x3t
        0x0t
        0xct
        0x7et
        -0x44t
        -0x6at
        0x11t
        0x4ft
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_4
    .array-data 1
        0x2at
        0x1ct
        0x6et
        -0x60t
        -0x5ft
        -0x5ft
        0x7dt
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_5
    .array-data 1
        0x4et
        0x79t
        0x8t
        -0x3ft
        -0x2ct
        -0x33t
        0x9t
        0x1dt
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_6
    .array-data 1
        0x29t
        0x6t
        0x51t
        0x1dt
        -0xdt
        -0x62t
        -0x48t
        0x30t
        0x3bt
        0x4t
        0x50t
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_7
    .array-data 1
        0x7at
        0x56t
        0x14t
        0x58t
        -0x49t
        -0x3ft
        -0x6t
        0x7ft
    .end array-data
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/SpeedBoardActi;->s()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    invoke-interface {v0}, Lv0/g;->q()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/UiModeManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v0, v2, :cond_0

    .line 43
    .line 44
    const/16 v0, 0x35

    .line 45
    .line 46
    new-array v0, v0, [B

    .line 47
    .line 48
    fill-array-data v0, :array_2

    .line 49
    .line 50
    .line 51
    new-array v1, v1, [B

    .line 52
    .line 53
    fill-array-data v1, :array_3

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/16 v0, 0x3d

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    fill-array-data v0, :array_4

    .line 69
    .line 70
    .line 71
    new-array v1, v1, [B

    .line 72
    .line 73
    fill-array-data v1, :array_5

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-interface {v0}, Lv0/g;->r()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/16 v0, 0x3f

    .line 92
    .line 93
    new-array v0, v0, [B

    .line 94
    .line 95
    fill-array-data v0, :array_6

    .line 96
    .line 97
    .line 98
    new-array v1, v1, [B

    .line 99
    .line 100
    fill-array-data v1, :array_7

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-interface {v0}, Lv0/g;->h()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/16 v0, 0x55

    .line 119
    .line 120
    new-array v0, v0, [B

    .line 121
    .line 122
    fill-array-data v0, :array_8

    .line 123
    .line 124
    .line 125
    new-array v1, v1, [B

    .line 126
    .line 127
    fill-array-data v1, :array_9

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    invoke-interface {v0}, Lv0/g;->a()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :array_0
    .array-data 1
        0x6ft
        0xct
        0x7bt
        -0x45t
        -0x7t
        0x40t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_1
    .array-data 1
        0x1at
        0x65t
        0x16t
        -0x2ct
        -0x63t
        0x25t
        -0x76t
        0x6t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_2
    .array-data 1
        0x3bt
        -0x1dt
        0x8t
        -0x68t
        -0x4ft
        -0x4at
        0x46t
        -0x10t
        0x9t
        -0x3et
        0x4bt
        0x8t
        0x41t
        -0x3bt
        0x17t
        -0x6bt
        0x61t
        -0x51t
        0x1at
        0x69t
        -0x1dt
        -0x3ct
        0x23t
        -0x6bt
        0x65t
        -0x51t
        0x10t
        -0x68t
        -0x4ft
        -0x57t
        0x46t
        -0x10t
        -0x7t
        -0x52t
        0x25t
        0x68t
        -0x22t
        -0x3bt
        0x16t
        -0x6bt
        0x6ct
        -0x52t
        0x2ft
        0x68t
        -0x2ct
        -0x3ct
        0x2dt
        -0x6bt
        0x6ct
        -0x52t
        0x26t
        0x68t
        -0x2ft
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    nop

    .line 191
    :array_3
    .array-data 1
        -0x27t
        0x7et
        -0x65t
        -0x48t
        0x61t
        0x14t
        -0x6at
        0x45t
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_4
    .array-data 1
        0x29t
        -0x43t
        -0x75t
        -0x77t
        -0x22t
        0xdt
        0x1ft
        -0x3ct
        0x8t
        -0x5dt
        -0x29t
        -0x5et
        0x2ft
        0x5ct
        0x5ct
        0x66t
        0x9t
        -0x69t
        -0x29t
        -0x5at
        0x2et
        0x68t
        -0x53t
        0x34t
        0x6bt
        -0xet
        -0x43t
        -0x36t
        0x45t
        0xct
        0x3t
        0x35t
        0x5et
        -0xet
        -0x4et
        -0x36t
        0x43t
        0xdt
        0x3dt
        -0x3ct
        0x8t
        -0x60t
        -0x2at
        -0x75t
        0x2et
        0x61t
        0x5dt
        0x59t
        0x9t
        -0x6et
        -0x2at
        -0x6bt
        -0x22t
        0xct
        0xft
        0x34t
        0x6ct
        -0xet
        -0x45t
        -0x36t
        0x4et
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    nop

    .line 235
    :array_5
    .array-data 1
        -0x27t
        0x22t
        0x7t
        0x1at
        -0x2t
        -0x23t
        -0x73t
        -0x1ct
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_6
    .array-data 1
        0x6bt
        -0x73t
        0x78t
        0x78t
        -0x34t
        0x71t
        0x39t
        -0x6t
        0x4at
        -0x6dt
        0x24t
        0x5et
        0x3dt
        0x20t
        0x7at
        0x58t
        0x4bt
        -0x59t
        0x24t
        0x5at
        0x3ct
        0x14t
        -0x75t
        0xat
        0x29t
        -0x3et
        0x4et
        0x36t
        0x57t
        0x70t
        0x25t
        0xbt
        0x1ct
        -0x3et
        0x41t
        0x36t
        0x51t
        0x71t
        0x1bt
        -0x6t
        0x4at
        -0x6dt
        0x24t
        0x54t
        0x3ct
        0x14t
        0x7at
        0x58t
        0x4bt
        -0x57t
        0x24t
        0x56t
        0x3dt
        0x2et
        -0x75t
        0xbt
        0x19t
        -0x3et
        0x41t
        0x36t
        0x50t
        0x71t
        0x1bt
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_7
    .array-data 1
        -0x65t
        0x12t
        -0xct
        -0x1at
        -0x14t
        -0x5ft
        -0x55t
        -0x26t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_8
    .array-data 1
        -0x5bt
        -0x9t
        -0x64t
        -0x1t
        -0x7bt
        0x2t
        -0x4et
        -0x7ft
        -0x6at
        -0x7t
        -0x3t
        0x5dt
        -0x7bt
        0x16t
        -0x4et
        -0x7bt
        -0x69t
        -0x3bt
        -0x4t
        0x6ft
        -0x7ct
        0x2ct
        0x42t
        -0x18t
        -0x3bt
        -0x58t
        -0x67t
        0xft
        -0x17t
        0x73t
        -0x2et
        0x19t
        -0x69t
        -0x39t
        -0x4t
        0x6at
        -0x7ct
        0x23t
        -0x4et
        -0x74t
        -0x69t
        -0x3et
        -0x4t
        0x64t
        -0x7ct
        0x2dt
        -0x4dt
        -0x42t
        -0x69t
        -0x38t
        -0x4t
        0x6at
        -0x7ct
        0x21t
        -0x4dt
        -0x48t
        -0x6at
        -0x9t
        0xct
        0xft
        -0x1bt
        0x73t
        -0x30t
        -0x18t
        -0x3bt
        -0x58t
        -0x6et
        0xft
        -0x17t
        0x73t
        -0x2et
        -0x18t
        -0x3bt
        -0x58t
        -0x6ct
        0xet
        -0x2et
        0x73t
        -0x29t
        -0x18t
        -0x3at
        -0x58t
        -0x6at
        0xft
        -0x13t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
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
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
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
    .line 332
    .line 333
    .line 334
    nop

    .line 335
    :array_9
    .array-data 1
        0x47t
        0x78t
        0x2ct
        -0x21t
        0x55t
        -0x5dt
        0x62t
        0x39t
    .end array-data
.end method

.method public final onStart()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lh0/b;->q:Landroid/content/ContextWrapper;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Le0/m;->j:[B

    .line 16
    .line 17
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x9

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Le0/m;->f:[B

    .line 45
    .line 46
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-wide v3, 0x7fffffffffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    new-instance v3, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v6, Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 82
    .line 83
    .line 84
    sget-object v2, Le0/m;->g:[B

    .line 85
    .line 86
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v5, 0x1

    .line 91
    new-array v6, v5, [B

    .line 92
    .line 93
    const/16 v7, -0x5f

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    aput-byte v7, v6, v8

    .line 97
    .line 98
    const/16 v7, 0x8

    .line 99
    .line 100
    new-array v7, v7, [B

    .line 101
    .line 102
    fill-array-data v7, :array_1

    .line 103
    .line 104
    .line 105
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    cmp-long v0, v0, v2

    .line 117
    .line 118
    if-gez v0, :cond_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    move v5, v8

    .line 122
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/example/navistart/SpeedBoardActi;->s()V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/example/navistart/SpeedBoardActi;->c:La4/g;

    .line 139
    .line 140
    const-wide/16 v5, 0x190

    .line 141
    .line 142
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/example/navistart/SpeedBoardActi;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 145
    .line 146
    const-wide/16 v3, 0xa

    .line 147
    .line 148
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 153
    .line 154
    :cond_2
    return-void

    .line 155
    :array_0
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

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    nop

    .line 165
    :array_1
    .array-data 1
        -0x6ft
        0x1ct
        -0x49t
        -0x39t
        -0x34t
        0xft
        -0x78t
        -0x7et
    .end array-data
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/SpeedBoardActi;->s()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lh0/b;->q:Landroid/content/ContextWrapper;

    .line 9
    .line 10
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardActi;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
