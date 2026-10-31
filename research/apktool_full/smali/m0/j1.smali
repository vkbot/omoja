.class public final synthetic Lm0/j1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/k1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lm0/k1;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm0/j1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/j1;->c:Lm0/k1;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/j1;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lm0/j1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lm0/j1;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lm0/j1;->c:Lm0/k1;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lm0/k1;->a:Lm0/l1;

    .line 13
    .line 14
    iget-object v0, v0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    new-array v4, v4, [B

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    new-array v5, v3, [B

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    new-array v5, v4, [B

    .line 42
    .line 43
    const/16 v6, -0x70

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    aput-byte v6, v5, v7

    .line 47
    .line 48
    new-array v6, v3, [B

    .line 49
    .line 50
    fill-array-data v6, :array_2

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x2

    .line 58
    new-array v8, v6, [B

    .line 59
    .line 60
    fill-array-data v8, :array_3

    .line 61
    .line 62
    .line 63
    new-array v9, v3, [B

    .line 64
    .line 65
    fill-array-data v9, :array_4

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-array v4, v4, [B

    .line 77
    .line 78
    const/4 v5, 0x3

    .line 79
    aput-byte v5, v4, v7

    .line 80
    .line 81
    new-array v5, v3, [B

    .line 82
    .line 83
    fill-array-data v5, :array_5

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-array v5, v6, [B

    .line 91
    .line 92
    fill-array-data v5, :array_6

    .line 93
    .line 94
    .line 95
    new-array v7, v3, [B

    .line 96
    .line 97
    fill-array-data v7, :array_7

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v4, "\n"

    .line 109
    .line 110
    const-string v5, ""

    .line 111
    .line 112
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v4, "\r"

    .line 117
    .line 118
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-array v1, v6, [B

    .line 126
    .line 127
    fill-array-data v1, :array_8

    .line 128
    .line 129
    .line 130
    new-array v3, v3, [B

    .line 131
    .line 132
    fill-array-data v3, :array_9

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {v2}, Lm0/k1;->a()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/16 v2, 0xd

    .line 167
    .line 168
    new-array v2, v2, [B

    .line 169
    .line 170
    fill-array-data v2, :array_a

    .line 171
    .line 172
    .line 173
    new-array v3, v3, [B

    .line 174
    .line 175
    fill-array-data v3, :array_b

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {v0, v2, v1}, Lcom/example/navistart/cores/InterC;->sv(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_0
    return-void

    .line 186
    :pswitch_1
    iget-object v0, v2, Lm0/k1;->a:Lm0/l1;

    .line 187
    .line 188
    iget-object v0, v0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Lm0/k1;->a()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/16 v2, 0xb

    .line 209
    .line 210
    new-array v2, v2, [B

    .line 211
    .line 212
    fill-array-data v2, :array_c

    .line 213
    .line 214
    .line 215
    new-array v3, v3, [B

    .line 216
    .line 217
    fill-array-data v3, :array_d

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-interface {v0, v2, v1}, Lcom/example/navistart/cores/InterC;->sv(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_1
    return-void

    .line 228
    :pswitch_2
    invoke-virtual {v2}, Lm0/k1;->a()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_2

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_2
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v2, 0xb

    .line 244
    .line 245
    new-array v2, v2, [B

    .line 246
    .line 247
    fill-array-data v2, :array_e

    .line 248
    .line 249
    .line 250
    new-array v3, v3, [B

    .line 251
    .line 252
    fill-array-data v3, :array_f

    .line 253
    .line 254
    .line 255
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v0, v2, v1}, Lcom/example/navistart/cores/InterC;->sv(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_2
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 1
        0x20t
        -0x49t
        -0x17t
        0x16t
        -0x65t
        0x3at
        -0x6dt
        -0x4dt
        0x3ft
        -0x49t
        -0x4bt
        0x61t
    .end array-data

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
    :array_1
    .array-data 1
        0x53t
        -0x2et
        -0x63t
        0x46t
        -0x17t
        0x55t
        -0xbt
        -0x26t
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_2
    .array-data 1
        -0x34t
        -0x5ft
        -0x17t
        -0x6bt
        -0x59t
        -0xct
        0x53t
        -0x56t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_3
    .array-data 1
        0x70t
        0x17t
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    nop

    .line 305
    :array_4
    .array-data 1
        0x2ct
        0x4bt
        -0x2dt
        -0x7t
        0x12t
        -0x6ft
        -0x65t
        0x4ct
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_5
    .array-data 1
        0x24t
        0x0t
        0x77t
        -0x38t
        0x2dt
        -0x19t
        -0x12t
        0xet
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_6
    .array-data 1
        -0x79t
        0x76t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    nop

    .line 327
    :array_7
    .array-data 1
        -0x25t
        0x51t
        0x27t
        0x4ft
        -0x40t
        -0xft
        0x79t
        0x3t
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_8
    .array-data 1
        0x60t
        -0x15t
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    nop

    .line 341
    :array_9
    .array-data 1
        0x47t
        -0x3et
        0x38t
        0x1et
        0x48t
        0x53t
        -0x1ft
        0x1ct
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_a
    .array-data 1
        -0x50t
        0x2t
        -0x7dt
        0x35t
        -0x11t
        -0xct
        -0x3ct
        0x14t
        -0x4at
        0x4t
        -0x71t
        0x3at
        -0x4t
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    nop

    .line 361
    :array_b
    .array-data 1
        -0x2dt
        0x70t
        -0x1at
        0x54t
        -0x65t
        -0x6ft
        -0x77t
        0x71t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_c
    .array-data 1
        0x15t
        -0x2bt
        0x1ct
        -0x74t
        -0x30t
        0x66t
        -0x5ft
        -0x43t
        0xft
        -0x24t
        0x17t
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_d
    .array-data 1
        0x66t
        -0x50t
        0x72t
        -0x18t
        -0x80t
        0x14t
        -0x32t
        -0x25t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_e
    .array-data 1
        -0x38t
        0x35t
        0x44t
        0x5et
        0x75t
        -0x5t
        -0x34t
        0x26t
        -0x35t
        0x34t
        0x4at
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_f
    .array-data 1
        -0x5et
        0x5at
        0x2dt
        0x30t
        0x38t
        -0x62t
        -0x57t
        0x52t
    .end array-data
.end method
