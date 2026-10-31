.class public final synthetic Lm0/i0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/n0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Lm0/k0;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lm0/n0;Landroid/content/Context;ILm0/k0;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/i0;->b:Lm0/n0;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/i0;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lm0/i0;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lm0/i0;->e:Lm0/k0;

    .line 11
    .line 12
    iput-boolean p5, p0, Lm0/i0;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget-object v1, p0, Lm0/i0;->b:Lm0/n0;

    .line 2
    .line 3
    iget-object v2, p0, Lm0/i0;->c:Landroid/content/Context;

    .line 4
    .line 5
    move-object v3, v2

    .line 6
    iget v2, p0, Lm0/i0;->d:I

    .line 7
    .line 8
    iget-object v0, p0, Lm0/i0;->e:Lm0/k0;

    .line 9
    .line 10
    iget-boolean v4, p0, Lm0/i0;->f:Z

    .line 11
    .line 12
    sget-object v5, Lm0/n0;->k:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v5, 0x13

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    :try_start_12
    invoke-static {v3}, Lcom/bumptech/glide/d;->n(Landroid/content/Context;)Ld1/a;

    .line 20
    .line 21
    .line 22
    move-result-object v9
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1e

    .line 23
    :try_start_16
    iget v10, v1, Lm0/n0;->c:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_9c

    .line 24
    .line 25
    if-eq v2, v10, :cond_21

    .line 26
    .line 27
    :goto_1a
    :try_start_1a
    invoke-virtual {v9}, Ld1/a;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_1e
    move v4, v8

    .line 32
    goto/16 :goto_e2

    .line 33
    .line 34
    :cond_21
    :try_start_21
    new-instance v10, Landroidx/fragment/app/h;

    .line 35
    .line 36
    invoke-direct {v10, v5, v9}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v10}, Ld1/d;->c(Landroidx/fragment/app/h;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v0, v0, Lm0/k0;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v7, v0, v4}, Lo4/b;->B(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v4, 0xf

    .line 50
    .line 51
    new-array v10, v4, [B

    .line 52
    .line 53
    fill-array-data v10, :array_10e

    .line 54
    .line 55
    .line 56
    const/16 v11, 0x8

    .line 57
    .line 58
    new-array v12, v11, [B

    .line 59
    .line 60
    fill-array-data v12, :array_11a

    .line 61
    .line 62
    .line 63
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v3, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const/16 v12, 0xe

    .line 72
    .line 73
    new-array v13, v12, [B

    .line 74
    .line 75
    fill-array-data v13, :array_122

    .line 76
    .line 77
    .line 78
    new-array v14, v11, [B

    .line 79
    .line 80
    fill-array-data v14, :array_12e

    .line 81
    .line 82
    .line 83
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-interface {v10, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-nez v13, :cond_c1

    .line 92
    .line 93
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    new-array v12, v12, [B

    .line 98
    .line 99
    fill-array-data v12, :array_136

    .line 100
    .line 101
    .line 102
    new-array v13, v11, [B

    .line 103
    .line 104
    fill-array-data v13, :array_142

    .line 105
    .line 106
    .line 107
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-interface {v10, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    new-array v12, v4, [B

    .line 116
    .line 117
    fill-array-data v12, :array_14a

    .line 118
    .line 119
    .line 120
    new-array v13, v11, [B

    .line 121
    .line 122
    fill-array-data v13, :array_156

    .line 123
    .line 124
    .line 125
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    if-nez v7, :cond_84

    .line 130
    .line 131
    move v13, v6

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v13, v8

    .line 134
    :goto_85
    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    new-array v4, v4, [B

    .line 139
    .line 140
    fill-array-data v4, :array_15e

    .line 141
    .line 142
    .line 143
    new-array v12, v11, [B

    .line 144
    .line 145
    fill-array-data v12, :array_16a

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-nez v7, :cond_9f

    .line 153
    .line 154
    const-string v12, ""

    .line 155
    .line 156
    goto :goto_a0

    .line 157
    :catchall_9c
    move-exception v0

    .line 158
    move-object v4, v0

    .line 159
    goto :goto_d9

    .line 160
    :cond_9f
    move-object v12, v7

    .line 161
    :goto_a0
    invoke-interface {v10, v4, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_ab

    .line 170
    .line 171
    goto :goto_c1

    .line 172
    :cond_ab
    new-instance v0, Ljava/io/IOException;

    .line 173
    .line 174
    const/16 v4, 0xd

    .line 175
    .line 176
    new-array v4, v4, [B

    .line 177
    .line 178
    fill-array-data v4, :array_172

    .line 179
    .line 180
    .line 181
    new-array v10, v11, [B

    .line 182
    .line 183
    fill-array-data v10, :array_17e

    .line 184
    .line 185
    .line 186
    invoke-static {v4, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_c1
    :goto_c1
    iget v4, v1, Lm0/n0;->c:I

    .line 195
    .line 196
    if-eq v2, v4, :cond_c7

    .line 197
    .line 198
    goto/16 :goto_1a

    .line 199
    .line 200
    :cond_c7
    new-instance v4, Landroidx/fragment/app/h;

    .line 201
    .line 202
    invoke-direct {v4, v5, v9}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v4, v7, v0}, Ld1/d;->d(Landroidx/fragment/app/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7
    :try_end_d0
    .catchall {:try_start_21 .. :try_end_d0} :catchall_9c

    .line 209
    :try_start_d0
    invoke-virtual {v9}, Ld1/a;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d7

    .line 210
    .line 211
    .line 212
    move v3, v6

    .line 213
    move v5, v3

    .line 214
    :goto_d5
    move-object v4, v7

    .line 215
    goto :goto_103

    .line 216
    :catch_d7
    move v4, v6

    .line 217
    goto :goto_e2

    .line 218
    :goto_d9
    :try_start_d9
    invoke-virtual {v9}, Ld1/a;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    .line 219
    .line 220
    .line 221
    goto :goto_e1

    .line 222
    :catchall_dd
    move-exception v0

    .line 223
    :try_start_de
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_e1
    throw v4
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e2} :catch_1e

    .line 227
    :goto_e2
    :try_start_e2
    invoke-static {v3}, Lcom/bumptech/glide/d;->n(Landroid/content/Context;)Ld1/a;

    .line 228
    .line 229
    .line 230
    move-result-object v3
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e6} :catch_100

    .line 231
    :try_start_e6
    new-instance v0, Landroidx/fragment/app/h;

    .line 232
    .line 233
    invoke-direct {v0, v5, v3}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Ld1/d;->c(Landroidx/fragment/app/h;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_f5

    .line 240
    :try_start_ef
    invoke-virtual {v3}, Ld1/a;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_100

    .line 241
    .line 242
    .line 243
    move v5, v4

    .line 244
    move v3, v6

    .line 245
    goto :goto_d5

    .line 246
    :catchall_f5
    move-exception v0

    .line 247
    move-object v5, v0

    .line 248
    :try_start_f7
    invoke-virtual {v3}, Ld1/a;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    .line 249
    .line 250
    .line 251
    goto :goto_ff

    .line 252
    :catchall_fb
    move-exception v0

    .line 253
    :try_start_fc
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    :goto_ff
    throw v5
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_100} :catch_100

    .line 257
    :catch_100
    move v5, v4

    .line 258
    move-object v4, v7

    .line 259
    move v3, v8

    .line 260
    :goto_103
    iget-object v6, v1, Lm0/n0;->b:Landroid/os/Handler;

    .line 261
    .line 262
    new-instance v0, Lm0/j0;

    .line 263
    .line 264
    invoke-direct/range {v0 .. v5}, Lm0/j0;-><init>(Lm0/n0;IZLjava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :array_10e
    .array-data 1
        0x5t
        0xft
        0x7dt
        0x7ft
        -0x79t
        0x32t
        0x2bt
        0x79t
        0x6t
        0x14t
        0x4et
        0x72t
        -0x7ct
        0x21t
        0x2at
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_11a
    .array-data 1
        0x63t
        0x7at
        0x11t
        0x13t
        -0xct
        0x51t
        0x59t
        0x1ct
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_122
    .array-data 1
        -0x13t
        0x4bt
        0x46t
        -0x5at
        -0x68t
        0x73t
        -0x1t
        0x76t
        -0x23t
        0x4at
        0x4et
        -0x49t
        -0x6ct
        0x79t
    .end array-data

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
    nop

    .line 303
    :array_12e
    .array-data 1
        -0x7et
        0x39t
        0x2ft
        -0x3ft
        -0xft
        0x1dt
        -0x62t
        0x1at
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
        0x2ct
        -0x27t
        -0x54t
        -0x7ft
        0x63t
        0x2bt
        0x69t
        0x63t
        0x1ct
        -0x28t
        -0x5ct
        -0x70t
        0x6ft
        0x21t
    .end array-data

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
    nop

    .line 323
    :array_142
    .array-data 1
        0x43t
        -0x55t
        -0x3bt
        -0x1at
        0xat
        0x45t
        0x8t
        0xft
    .end array-data

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
        0x10t
        -0x66t
        -0x59t
        -0x57t
        0x4ct
        -0x3ct
        -0x3ft
        -0xft
        0x20t
        -0x77t
        -0x54t
        -0x43t
        0x40t
        -0x3ct
        -0x2ct
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_156
    .array-data 1
        0x7ft
        -0x18t
        -0x32t
        -0x32t
        0x25t
        -0x56t
        -0x60t
        -0x63t
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_15e
    .array-data 1
        -0x4ft
        -0x69t
        -0x32t
        0x47t
        0x2ct
        0x58t
        0x1et
        -0x65t
        -0x7ft
        -0x6bt
        -0x38t
        0x4ct
        0x2ct
        0x55t
        0x6t
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_16a
    .array-data 1
        -0x22t
        -0x1bt
        -0x59t
        0x20t
        0x45t
        0x36t
        0x7ft
        -0x9t
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_172
    .array-data 1
        0x3ft
        0x4dt
        -0x6et
        0x52t
        -0x29t
        -0x7dt
        0x20t
        -0x61t
        0x1ct
        0x45t
        -0x63t
        0x5ct
        -0x3at
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    nop

    .line 383
    :array_17e
    .array-data 1
        0x7dt
        0x2ct
        -0xft
        0x39t
        -0x5et
        -0xdt
        0x0t
        -0x7t
    .end array-data
.end method
