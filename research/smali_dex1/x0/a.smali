.class public final synthetic Lx0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lx0/c;

.field public final synthetic b:Ljava/lang/reflect/Method;

.field public final synthetic c:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Lx0/c;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/a;->a:Lx0/c;

    .line 5
    .line 6
    iput-object p2, p0, Lx0/a;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p3, p0, Lx0/a;->c:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_120

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_130

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v0, :cond_b0

    .line 31
    .line 32
    aget-object p1, p3, v4

    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lx0/a;->b:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    aget-object p1, p3, v4

    .line 49
    .line 50
    iget-object p2, p0, Lx0/a;->c:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/graphics/Region;

    .line 57
    .line 58
    new-instance v5, Landroid/graphics/Region;

    .line 59
    .line 60
    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lx0/a;->a:Lx0/c;

    .line 64
    .line 65
    iget-object p3, p2, Lx0/c;->c:Lx0/o;

    .line 66
    .line 67
    iget v0, p3, Lx0/o;->j:I

    .line 68
    .line 69
    const/16 v2, 0x64

    .line 70
    .line 71
    if-ne v0, v2, :cond_49

    .line 72
    .line 73
    goto :goto_ac

    .line 74
    :cond_49
    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [I

    .line 76
    .line 77
    iget-boolean v6, p2, Lx0/c;->e:Z

    .line 78
    .line 79
    if-eqz v6, :cond_6b

    .line 80
    .line 81
    iget p3, p3, Lx0/o;->k:I

    .line 82
    .line 83
    if-ge p3, v2, :cond_6b

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 86
    .line 87
    .line 88
    aget p3, v0, v4

    .line 89
    .line 90
    aget v2, v0, v3

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    add-int/2addr v4, p3

    .line 97
    aget v0, v0, v3

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    add-int/2addr p2, v0

    .line 104
    invoke-virtual {v5, p3, v2, v4, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 105
    .line 106
    .line 107
    goto :goto_ac

    .line 108
    :cond_6b
    move p3, v4

    .line 109
    :goto_6c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ge p3, v2, :cond_ac

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_7d

    .line 124
    .line 125
    goto :goto_a9

    .line 126
    :cond_7d
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 127
    .line 128
    .line 129
    aget v6, v0, v4

    .line 130
    .line 131
    aget v7, v0, v3

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    int-to-float v8, v8

    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    mul-float/2addr v9, v8

    .line 143
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    add-int/2addr v8, v6

    .line 148
    aget v9, v0, v3

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    int-to-float v10, v10

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    mul-float/2addr v2, v10

    .line 160
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    add-int/2addr v9, v2

    .line 165
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 166
    .line 167
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 168
    .line 169
    .line 170
    :goto_a9
    add-int/lit8 p3, p3, 0x1

    .line 171
    .line 172
    goto :goto_6c

    .line 173
    :cond_ac
    :goto_ac
    invoke-virtual {p1, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 174
    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_b0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/4 v5, 0x6

    .line 182
    new-array v5, v5, [B

    .line 183
    .line 184
    fill-array-data v5, :array_138

    .line 185
    .line 186
    .line 187
    new-array v6, v2, [B

    .line 188
    .line 189
    fill-array-data v6, :array_140

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_d4

    .line 201
    .line 202
    aget-object p2, p3, v4

    .line 203
    .line 204
    if-ne p1, p2, :cond_ce

    .line 205
    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    move v3, v4

    .line 208
    :goto_cf
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    return-object p1

    .line 213
    :cond_d4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    new-array v0, v2, [B

    .line 218
    .line 219
    fill-array-data v0, :array_148

    .line 220
    .line 221
    .line 222
    new-array v3, v2, [B

    .line 223
    .line 224
    fill-array-data v3, :array_150

    .line 225
    .line 226
    .line 227
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    if-eqz p3, :cond_f5

    .line 236
    .line 237
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    return-object p1

    .line 246
    :cond_f5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    new-array p2, v2, [B

    .line 251
    .line 252
    fill-array-data p2, :array_158

    .line 253
    .line 254
    .line 255
    new-array p3, v2, [B

    .line 256
    .line 257
    fill-array-data p3, :array_160

    .line 258
    .line 259
    .line 260
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_11e

    .line 269
    .line 270
    const/16 p1, 0x11

    .line 271
    .line 272
    new-array p1, p1, [B

    .line 273
    .line 274
    fill-array-data p1, :array_168

    .line 275
    .line 276
    .line 277
    new-array p2, v2, [B

    .line 278
    .line 279
    fill-array-data p2, :array_176

    .line 280
    .line 281
    .line 282
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    return-object p1

    .line 287
    :cond_11e
    return-object v1

    .line 288
    nop

    .line 289
    :array_120
    .array-data 1
        -0x38t
        0x5bt
        -0x53t
        0x14t
        0x4at
        0x4et
        0xdt
        -0x73t
        -0x3et
        0x7ct
        -0x80t
        0xft
        0x42t
        0x4ct
        0x16t
        -0x68t
        -0x35t
        0x7ct
        -0x80t
        0x8t
        0x42t
        0x4at
        0xbt
    .end array-data

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
    :array_130
    .array-data 1
        -0x59t
        0x35t
        -0x12t
        0x7bt
        0x27t
        0x3et
        0x78t
        -0x7t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        -0x7ft
        0x40t
        0x12t
        0x42t
        0x36t
        0x5bt
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    nop

    .line 321
    :array_140
    .array-data 1
        -0x1ct
        0x31t
        0x67t
        0x23t
        0x5at
        0x28t
        0x7t
        -0x43t
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
        -0x2ft
        0x30t
        -0x64t
        -0x3ft
        -0xft
        0x46t
        -0x53t
        -0x5dt
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
        -0x47t
        0x51t
        -0x11t
        -0x57t
        -0x4et
        0x29t
        -0x37t
        -0x3at
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_158
    .array-data 1
        0x13t
        -0x7ft
        -0x4at
        0x5ft
        -0xct
        0x0t
        0x7ct
        -0x4ct
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_160
    .array-data 1
        0x67t
        -0x12t
        -0x1bt
        0x2bt
        -0x7at
        0x69t
        0x12t
        -0x2dt
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_168
    .array-data 1
        -0x2at
        -0x77t
        -0x67t
        0x0t
        0x58t
        0x14t
        -0x27t
        -0xet
        -0xct
        -0x7dt
        -0x6bt
        0x35t
        0x58t
        0x7t
        -0x1ct
        -0xet
        -0x11t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    nop

    .line 375
    :array_176
    .array-data 1
        -0x7ft
        -0x20t
        -0x3t
        0x67t
        0x3dt
        0x60t
        -0x73t
        -0x63t
    .end array-data
.end method
