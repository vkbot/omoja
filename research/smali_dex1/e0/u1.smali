.class public final Le0/u1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/WindowManager;

.field public final c:Landroid/view/WindowManager$LayoutParams;

.field public d:Ljava/lang/Runnable;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field public g:Ljava/lang/Boolean;

.field public h:Landroid/os/Handler;

.field public i:La1/a;

.field public j:Landroid/animation/ObjectAnimator;

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:F

.field public p:J

.field public final q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iput v1, v0, Le0/u1;->k:F

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Le0/u1;->q:Landroid/os/Handler;

    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    iput-object v1, v0, Le0/u1;->f:Landroid/content/Context;

    .line 26
    .line 27
    iput-object v7, v0, Le0/u1;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lj1/v;->b()Lz0/a;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Lz0/a;->m()I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/16 v3, 0x13

    .line 49
    .line 50
    new-array v3, v3, [B

    .line 51
    .line 52
    fill-array-data v3, :array_108

    .line 53
    .line 54
    .line 55
    const/16 v14, 0x8

    .line 56
    .line 57
    new-array v4, v14, [B

    .line 58
    .line 59
    fill-array-data v4, :array_116

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v15, 0x0

    .line 67
    invoke-virtual {v2, v3, v15}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4c

    .line 72
    .line 73
    const/16 v2, 0x328

    .line 74
    .line 75
    move v12, v2

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v12, v14

    .line 78
    :goto_4d
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 79
    .line 80
    const/4 v10, -0x2

    .line 81
    const/4 v13, -0x3

    .line 82
    const/4 v9, -0x2

    .line 83
    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x33

    .line 87
    .line 88
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .line 100
    div-int/lit8 v4, v1, 0x2

    .line 101
    .line 102
    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    .line 104
    div-int/lit8 v10, v1, 0x2

    .line 105
    .line 106
    const/high16 v1, 0x44000000    # 512.0f

    .line 107
    .line 108
    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .line 110
    mul-float/2addr v2, v1

    .line 111
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const/4 v11, 0x1

    .line 116
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    new-array v1, v11, [B

    .line 121
    .line 122
    const/16 v2, -0x59

    .line 123
    .line 124
    aput-byte v2, v1, v15

    .line 125
    .line 126
    new-array v2, v14, [B

    .line 127
    .line 128
    fill-array-data v2, :array_11e

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-array v3, v11, [B

    .line 144
    .line 145
    const/16 v6, -0x1e

    .line 146
    .line 147
    aput-byte v6, v3, v15

    .line 148
    .line 149
    new-array v6, v14, [B

    .line 150
    .line 151
    fill-array-data v6, :array_126

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3, v4}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iget v3, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .line 168
    new-array v6, v11, [B

    .line 169
    .line 170
    const/16 v12, 0x16

    .line 171
    .line 172
    aput-byte v12, v6, v15

    .line 173
    .line 174
    new-array v12, v14, [B

    .line 175
    .line 176
    fill-array-data v12, :array_12e

    .line 177
    .line 178
    .line 179
    invoke-static {v6, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual/range {v0 .. v6}, Le0/u1;->b(Ljava/lang/String;IIIILjava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 188
    .line 189
    new-array v0, v11, [B

    .line 190
    .line 191
    const/16 v1, -0x5a

    .line 192
    .line 193
    aput-byte v1, v0, v15

    .line 194
    .line 195
    new-array v1, v14, [B

    .line 196
    .line 197
    fill-array-data v1, :array_136

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-array v2, v11, [B

    .line 213
    .line 214
    const/16 v3, -0x24

    .line 215
    .line 216
    aput-byte v3, v2, v15

    .line 217
    .line 218
    new-array v3, v14, [B

    .line 219
    .line 220
    fill-array-data v3, :array_13e

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2, v10}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 236
    .line 237
    new-array v0, v11, [B

    .line 238
    .line 239
    const/16 v4, -0x6b

    .line 240
    .line 241
    aput-byte v4, v0, v15

    .line 242
    .line 243
    new-array v4, v14, [B

    .line 244
    .line 245
    fill-array-data v4, :array_146

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    move-object/from16 v0, p0

    .line 253
    .line 254
    move v4, v10

    .line 255
    invoke-virtual/range {v0 .. v6}, Le0/u1;->b(Ljava/lang/String;IIIILjava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 260
    .line 261
    iput-object v8, v0, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :array_108
    .array-data 1
        -0x40t
        0x50t
        0x3dt
        -0x11t
        0x1t
        0x1bt
        -0x1ft
        -0x7et
        -0x28t
        0x4ft
        0x3ct
        -0x6t
        0x3bt
        0x1ct
        -0x15t
        -0x52t
        -0x3dt
        0x5ct
        0x34t
    .end array-data

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
    :array_116
    .array-data 1
        -0x49t
        0x39t
        0x59t
        -0x78t
        0x64t
        0x6ft
        -0x6et
        -0x23t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_11e
    .array-data 1
        -0x1t
        0x6et
        0x13t
        0x6dt
        0x56t
        0x12t
        0xat
        0x5bt
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
    .array-data 1
        -0x46t
        -0x10t
        -0x5ct
        0x6t
        0x44t
        0x54t
        0x45t
        -0x65t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_12e
    .array-data 1
        0x4et
        0x4ct
        -0x64t
        -0x20t
        -0x70t
        -0x2ct
        -0x51t
        0x62t
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_136
    .array-data 1
        -0x1t
        -0x72t
        0x23t
        -0x72t
        -0x2et
        0x5ct
        0x39t
        -0x65t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_13e
    .array-data 1
        -0x7bt
        -0x73t
        0x1at
        0x8t
        -0x5bt
        -0x5dt
        0x4et
        0x46t
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_146
    .array-data 1
        -0x34t
        0x8t
        -0x35t
        -0x18t
        0x2t
        0x5at
        -0x9t
        -0x6bt
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Le0/u1;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Le0/u1;->b:Landroid/view/WindowManager;

    .line 4
    .line 5
    iput-object p3, p0, Le0/u1;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    new-instance p2, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Le0/u1;->h:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance p2, La1/a;

    .line 15
    .line 16
    const/16 p3, 0x13

    .line 17
    .line 18
    invoke-direct {p2, p3, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Le0/u1;->i:La1/a;

    .line 22
    .line 23
    return-void
.end method

.method public final b(Ljava/lang/String;IIIILjava/lang/String;)I
    .registers 13

    .line 1
    if-lez p3, :cond_76

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    neg-int v2, p5

    .line 5
    int-to-long v2, v2

    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_10

    .line 9
    .line 10
    int-to-long v2, p3

    .line 11
    int-to-long v4, p5

    .line 12
    add-long/2addr v2, v4

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_76

    .line 16
    .line 17
    :cond_10
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p4}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_78

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    new-array v2, v1, [B

    .line 38
    .line 39
    fill-array-data v2, :array_80

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2, p1, p6}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p6, 0x1

    .line 46
    new-array p6, p6, [B

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    const/16 v2, -0x29

    .line 50
    .line 51
    aput-byte v2, p6, v0

    .line 52
    .line 53
    new-array v0, v1, [B

    .line 54
    .line 55
    fill-array-data v0, :array_88

    .line 56
    .line 57
    .line 58
    invoke-static {p6, v0, p1, p2}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 59
    .line 60
    .line 61
    const/16 p2, 0xc

    .line 62
    .line 63
    new-array p2, p2, [B

    .line 64
    .line 65
    fill-array-data p2, :array_90

    .line 66
    .line 67
    .line 68
    new-array p6, v1, [B

    .line 69
    .line 70
    fill-array-data p6, :array_9a

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p6, p1, p3}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 74
    .line 75
    .line 76
    new-array p2, v1, [B

    .line 77
    .line 78
    fill-array-data p2, :array_a2

    .line 79
    .line 80
    .line 81
    new-array p3, v1, [B

    .line 82
    .line 83
    fill-array-data p3, :array_aa

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p3, p1, p5}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0x9

    .line 90
    .line 91
    new-array p2, p2, [B

    .line 92
    .line 93
    fill-array-data p2, :array_b2

    .line 94
    .line 95
    .line 96
    new-array p3, v1, [B

    .line 97
    .line 98
    fill-array-data p3, :array_bc

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Le0/u1;->c(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return p4

    .line 119
    :cond_76
    return p2

    .line 120
    nop

    .line 121
    :array_78
    .array-data 1
        -0x35t
        -0x42t
        0x1et
        0x53t
        0x5et
        0x1ft
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    nop

    .line 129
    :array_80
    .array-data 1
        -0x67t
        -0x5t
        0x4dt
        0x16t
        0xat
        0x3ft
        0x14t
        0x20t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_88
    .array-data 1
        -0x16t
        0x7dt
        -0x69t
        0x21t
        0x7dt
        0x1bt
        -0x38t
        0x1ct
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_90
    .array-data 1
        0x2t
        -0x20t
        0x53t
        -0x24t
        -0x43t
        -0x5dt
        -0x60t
        -0x48t
        0x4bt
        -0x17t
        0x55t
        -0x6dt
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
    .line 155
    :array_9a
    .array-data 1
        0x22t
        -0x6dt
        0x30t
        -0x52t
        -0x28t
        -0x3at
        -0x32t
        -0x15t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_a2
    .array-data 1
        -0x7dt
        0x60t
        -0x5dt
        -0x33t
        0x2t
        -0x3et
        0x26t
        -0x55t
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_aa
    .array-data 1
        -0x5dt
        0xdt
        -0x3et
        -0x41t
        0x65t
        -0x55t
        0x48t
        -0x6at
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_b2
    .array-data 1
        -0x24t
        -0x7ft
        -0x33t
        -0xet
        0x5t
        0x3dt
        -0x29t
        -0x77t
        -0x3ft
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    nop

    .line 189
    :array_bc
    .array-data 1
        -0x4t
        -0x1bt
        -0x58t
        -0x6ct
        0x64t
        0x48t
        -0x45t
        -0x3t
    .end array-data
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_34

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    fill-array-data v3, :array_3e

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
    iget-object v1, p0, Le0/u1;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_46

    .line 36
    .line 37
    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_4c

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2, v0, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 48
    .line 49
    invoke-static {p1, v0}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_34
    .array-data 1
        0x4ft
        0x56t
        0x1dt
        0x37t
        0x26t
        0x16t
        0x1at
        0x7dt
        0x22t
        0x62t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :array_3e
    .array-data 1
        0x2t
        0x39t
        0x6bt
        0x52t
        0x70t
        0x7ft
        0x7ft
        0xat
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_46
    .array-data 1
        0x36t
        0x60t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    .line 77
    :array_4c
    .array-data 1
        0x6bt
        0x40t
        -0x18t
        0x27t
        -0x57t
        0x38t
        0x51t
        0x14t
    .end array-data
.end method

.method public final d()V
    .registers 4

    .line 1
    iget-object v0, p0, Le0/u1;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Le0/u1;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    new-instance v2, Le0/t1;

    .line 6
    .line 7
    invoke-direct {v2, p0, v1}, Le0/t1;-><init>(Le0/u1;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
