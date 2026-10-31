.class public final synthetic Lo0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ld2/h;

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:[F

.field public final synthetic f:[Landroid/view/VelocityTracker;

.field public final synthetic g:Lo0/d;

.field public final synthetic h:Lo0/f;


# direct methods
.method public synthetic constructor <init>(Ld2/h;[F[F[F[Landroid/view/VelocityTracker;Lo0/d;Lo0/f;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo0/b;->b:Ld2/h;

    .line 5
    .line 6
    iput-object p2, p0, Lo0/b;->c:[F

    .line 7
    .line 8
    iput-object p3, p0, Lo0/b;->d:[F

    .line 9
    .line 10
    iput-object p4, p0, Lo0/b;->e:[F

    .line 11
    .line 12
    iput-object p5, p0, Lo0/b;->f:[Landroid/view/VelocityTracker;

    .line 13
    .line 14
    iput-object p6, p0, Lo0/b;->g:Lo0/d;

    .line 15
    .line 16
    iput-object p7, p0, Lo0/b;->h:Lo0/f;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lo0/b;->c:[F

    .line 6
    .line 7
    iget-object v1, p0, Lo0/b;->d:[F

    .line 8
    .line 9
    iget-object v2, p0, Lo0/b;->e:[F

    .line 10
    .line 11
    iget-object v3, p0, Lo0/b;->f:[Landroid/view/VelocityTracker;

    .line 12
    .line 13
    iget-object v4, p0, Lo0/b;->g:Lo0/d;

    .line 14
    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz p1, :cond_119

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    if-eq p1, v10, :cond_6a

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq p1, v5, :cond_2b

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    if-eq p1, p2, :cond_1e

    .line 28
    .line 29
    goto/16 :goto_118

    .line 30
    .line 31
    :cond_1e
    aget-object p1, v3, v6

    .line 32
    .line 33
    if-eqz p1, :cond_27

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 36
    .line 37
    .line 38
    aput-object v7, v3, v6

    .line 39
    .line 40
    :cond_27
    invoke-virtual {v4}, Lo0/d;->c()V

    .line 41
    .line 42
    .line 43
    return v10

    .line 44
    :cond_2b
    aget-object p1, v3, v6

    .line 45
    .line 46
    if-eqz p1, :cond_118

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    aget v0, v0, v6

    .line 56
    .line 57
    sub-float v7, p1, v0

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    aget v0, v1, v6

    .line 64
    .line 65
    sub-float v8, p1, v0

    .line 66
    .line 67
    mul-float p1, v7, v7

    .line 68
    .line 69
    mul-float v0, v8, v8

    .line 70
    .line 71
    add-float/2addr v0, p1

    .line 72
    float-to-double v0, v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    double-to-float p1, v0

    .line 78
    aput p1, v2, v6

    .line 79
    .line 80
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 81
    .line 82
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, v2, v6

    .line 87
    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    .line 90
    div-float/2addr p1, v0

    .line 91
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-virtual/range {v4 .. v9}, Lo0/d;->d(FFFFF)V

    .line 104
    .line 105
    .line 106
    return v10

    .line 107
    :cond_6a
    aget-object p1, v3, v6

    .line 108
    .line 109
    if-eqz p1, :cond_118

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    aget-object p1, v3, v6

    .line 115
    .line 116
    const/16 v8, 0x3e8

    .line 117
    .line 118
    invoke-virtual {p1, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    aget v0, v0, v6

    .line 126
    .line 127
    sub-float/2addr p1, v0

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    aget v0, v1, v6

    .line 133
    .line 134
    sub-float/2addr p2, v0

    .line 135
    aget-object v0, v3, v6

    .line 136
    .line 137
    if-eqz v0, :cond_8f

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    .line 141
    .line 142
    aput-object v7, v3, v6

    .line 143
    .line 144
    :cond_8f
    aget v0, v2, v6

    .line 145
    .line 146
    const/high16 v1, 0x42b40000    # 90.0f

    .line 147
    .line 148
    cmpl-float v0, v0, v1

    .line 149
    .line 150
    if-lez v0, :cond_115

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    cmpl-float v0, v0, v1

    .line 161
    .line 162
    if-lez v0, :cond_a8

    .line 163
    .line 164
    cmpl-float p1, p1, v5

    .line 165
    .line 166
    sget-object p1, Lo0/c;->b:[Lo0/c;

    .line 167
    .line 168
    goto :goto_ac

    .line 169
    :cond_a8
    cmpl-float p1, p2, v5

    .line 170
    .line 171
    sget-object p1, Lo0/c;->b:[Lo0/c;

    .line 172
    .line 173
    :goto_ac
    iget-object p1, p0, Lo0/b;->b:Ld2/h;

    .line 174
    .line 175
    iget-object p2, p1, Ld2/h;->c:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p2, Lo0/e;

    .line 178
    .line 179
    iget-object p2, p2, Lo0/e;->a:Landroid/content/SharedPreferences;

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const/4 v1, 0x7

    .line 187
    new-array v1, v1, [B

    .line 188
    .line 189
    fill-array-data v1, :array_140

    .line 190
    .line 191
    .line 192
    const/16 v2, 0x8

    .line 193
    .line 194
    new-array v3, v2, [B

    .line 195
    .line 196
    fill-array-data v3, :array_148

    .line 197
    .line 198
    .line 199
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lo0/b;->h:Lo0/f;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {p2, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 220
    .line 221
    .line 222
    iget-object p1, p1, Ld2/h;->d:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p1, Le0/g;

    .line 225
    .line 226
    if-eqz p1, :cond_115

    .line 227
    .line 228
    sget-object p1, Lcom/example/navistart/MyA11yService;->c:Lcom/example/navistart/MyA11yService;

    .line 229
    .line 230
    :try_start_e5
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const/16 v0, 0x12

    .line 246
    .line 247
    new-array v0, v0, [B

    .line 248
    .line 249
    fill-array-data v0, :array_150

    .line 250
    .line 251
    .line 252
    new-array v2, v2, [B

    .line 253
    .line 254
    fill-array-data v2, :array_15e

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p1, p2}, Lj0/c;->k(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_115} :catch_115

    .line 276
    .line 277
    .line 278
    :catch_115
    :cond_115
    invoke-virtual {v4}, Lo0/d;->c()V

    .line 279
    .line 280
    .line 281
    :cond_118
    :goto_118
    return v10

    .line 282
    :cond_119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    aput p1, v0, v6

    .line 287
    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    aput p1, v1, v6

    .line 293
    .line 294
    aput v5, v2, v6

    .line 295
    .line 296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    aput-object p1, v3, v6

    .line 301
    .line 302
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    const/4 v8, 0x0

    .line 314
    const/4 v9, 0x0

    .line 315
    const/4 v7, 0x0

    .line 316
    invoke-virtual/range {v4 .. v9}, Lo0/d;->d(FFFFF)V

    .line 317
    .line 318
    .line 319
    return v10

    .line 320
    nop

    .line 321
    :array_140
    .array-data 1
        -0xct
        -0x28t
        0x13t
        -0x2et
        -0x5ft
        -0x74t
        0x6bt
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_148
    .array-data 1
        -0x6bt
        -0x45t
        0x67t
        -0x45t
        -0x32t
        -0x1et
        0x34t
        -0x33t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_150
    .array-data 1
        0x61t
        0x38t
        0x1et
        0x67t
        0x23t
        0x2et
        -0x5ct
        0x2et
        0x49t
        0x33t
        0x8t
        0x5et
        0x37t
        0x32t
        -0x60t
        0x13t
        0x43t
        0x2ft
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    nop

    .line 351
    :array_15e
    .array-data 1
        0x26t
        0x5dt
        0x6dt
        0x13t
        0x56t
        0x5ct
        -0x3ft
        0x74t
    .end array-data
.end method
