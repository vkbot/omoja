.class public final Lh8/d0;
.super Lo8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ljava/util/Iterator;

.field public volatile c:Z

.field public d:Z

.field public final synthetic e:I

.field public final f:Lx7/d;


# direct methods
.method public constructor <init>(Lx7/d;Ljava/util/Iterator;I)V
    .registers 4

    .line 1
    iput p3, p0, Lh8/d0;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    iput-object p1, p0, Lh8/d0;->f:Lx7/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/d0;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 3
    .line 4
    return-void
.end method

.method public final d(J)V
    .registers 11

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_183

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_183

    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_ae

    .line 25
    .line 26
    iget p1, p0, Lh8/d0;->e:I

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_184

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 32
    .line 33
    iget-object p2, p0, Lh8/d0;->f:Lx7/d;

    .line 34
    .line 35
    :cond_22
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 36
    .line 37
    if-eqz v0, :cond_28

    .line 38
    .line 39
    goto/16 :goto_ad

    .line 40
    .line 41
    :cond_28
    :try_start_28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_5f

    .line 45
    iget-boolean v1, p0, Lh8/d0;->c:Z

    .line 46
    .line 47
    if-eqz v1, :cond_32

    .line 48
    .line 49
    goto/16 :goto_ad

    .line 50
    .line 51
    :cond_32
    if-nez v0, :cond_40

    .line 52
    .line 53
    new-instance p1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string v0, "Iterator.next() returned a null value"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_ad

    .line 64
    .line 65
    :cond_40
    invoke-interface {p2, v0}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 69
    .line 70
    if-eqz v0, :cond_49

    .line 71
    .line 72
    goto/16 :goto_ad

    .line 73
    .line 74
    :cond_49
    :try_start_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 78
    if-nez v0, :cond_22

    .line 79
    .line 80
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 81
    .line 82
    if-nez p1, :cond_ad

    .line 83
    .line 84
    invoke-interface {p2}, Lx7/d;->a()V

    .line 85
    .line 86
    .line 87
    goto :goto_ad

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_ad

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_ad

    .line 104
    :pswitch_67
    iget-object p1, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 105
    .line 106
    iget-object p2, p0, Lh8/d0;->f:Lx7/d;

    .line 107
    .line 108
    check-cast p2, Le8/a;

    .line 109
    .line 110
    :cond_6d
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 111
    .line 112
    if-eqz v0, :cond_72

    .line 113
    .line 114
    goto :goto_ad

    .line 115
    :cond_72
    :try_start_72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_a6

    .line 119
    iget-boolean v1, p0, Lh8/d0;->c:Z

    .line 120
    .line 121
    if-eqz v1, :cond_7b

    .line 122
    .line 123
    goto :goto_ad

    .line 124
    :cond_7b
    if-nez v0, :cond_88

    .line 125
    .line 126
    new-instance p1, Ljava/lang/NullPointerException;

    .line 127
    .line 128
    const-string v0, "Iterator.next() returned a null value"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    goto :goto_ad

    .line 137
    :cond_88
    invoke-interface {p2, v0}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 141
    .line 142
    if-eqz v0, :cond_90

    .line 143
    .line 144
    goto :goto_ad

    .line 145
    :cond_90
    :try_start_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_9e

    .line 149
    if-nez v0, :cond_6d

    .line 150
    .line 151
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 152
    .line 153
    if-nez p1, :cond_ad

    .line 154
    .line 155
    invoke-interface {p2}, Lx7/d;->a()V

    .line 156
    .line 157
    .line 158
    goto :goto_ad

    .line 159
    :catchall_9e
    move-exception p1

    .line 160
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_ad

    .line 167
    :catchall_a6
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :cond_ad
    :goto_ad
    return-void

    .line 175
    :cond_ae
    iget v0, p0, Lh8/d0;->e:I

    .line 176
    .line 177
    packed-switch v0, :pswitch_data_18a

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 181
    .line 182
    iget-object v1, p0, Lh8/d0;->f:Lx7/d;

    .line 183
    .line 184
    const-wide/16 v2, 0x0

    .line 185
    .line 186
    :cond_b9
    move-wide v4, v2

    .line 187
    :cond_ba
    :goto_ba
    cmp-long v6, v4, p1

    .line 188
    .line 189
    if-eqz v6, :cond_10a

    .line 190
    .line 191
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 192
    .line 193
    if-eqz v6, :cond_c4

    .line 194
    .line 195
    goto/16 :goto_183

    .line 196
    .line 197
    :cond_c4
    :try_start_c4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_101

    .line 201
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 202
    .line 203
    if-eqz v7, :cond_ce

    .line 204
    .line 205
    goto/16 :goto_183

    .line 206
    .line 207
    :cond_ce
    if-nez v6, :cond_dc

    .line 208
    .line 209
    new-instance p1, Ljava/lang/NullPointerException;

    .line 210
    .line 211
    const-string p2, "Iterator.next() returned a null value"

    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_183

    .line 220
    .line 221
    :cond_dc
    invoke-interface {v1, v6}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 225
    .line 226
    if-eqz v6, :cond_e5

    .line 227
    .line 228
    goto/16 :goto_183

    .line 229
    .line 230
    :cond_e5
    :try_start_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v6
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_f8

    .line 234
    if-nez v6, :cond_f4

    .line 235
    .line 236
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 237
    .line 238
    if-nez p1, :cond_183

    .line 239
    .line 240
    invoke-interface {v1}, Lx7/d;->a()V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_183

    .line 244
    .line 245
    :cond_f4
    const-wide/16 v6, 0x1

    .line 246
    .line 247
    add-long/2addr v4, v6

    .line 248
    goto :goto_ba

    .line 249
    :catchall_f8
    move-exception p1

    .line 250
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_183

    .line 257
    .line 258
    :catchall_101
    move-exception p1

    .line 259
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_183

    .line 266
    .line 267
    :cond_10a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 268
    .line 269
    .line 270
    move-result-wide p1

    .line 271
    cmp-long v6, v4, p1

    .line 272
    .line 273
    if-nez v6, :cond_ba

    .line 274
    .line 275
    neg-long p1, v4

    .line 276
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide p1

    .line 280
    cmp-long v4, p1, v2

    .line 281
    .line 282
    if-nez v4, :cond_b9

    .line 283
    .line 284
    goto/16 :goto_183

    .line 285
    .line 286
    :pswitch_11d
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 287
    .line 288
    iget-object v1, p0, Lh8/d0;->f:Lx7/d;

    .line 289
    .line 290
    check-cast v1, Le8/a;

    .line 291
    .line 292
    const-wide/16 v2, 0x0

    .line 293
    .line 294
    :cond_125
    move-wide v4, v2

    .line 295
    :cond_126
    :goto_126
    cmp-long v6, v4, p1

    .line 296
    .line 297
    if-eqz v6, :cond_172

    .line 298
    .line 299
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 300
    .line 301
    if-eqz v6, :cond_12f

    .line 302
    .line 303
    goto :goto_183

    .line 304
    :cond_12f
    :try_start_12f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_16a

    .line 308
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 309
    .line 310
    if-eqz v7, :cond_138

    .line 311
    .line 312
    goto :goto_183

    .line 313
    :cond_138
    if-nez v6, :cond_145

    .line 314
    .line 315
    new-instance p1, Ljava/lang/NullPointerException;

    .line 316
    .line 317
    const-string p2, "Iterator.next() returned a null value"

    .line 318
    .line 319
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    goto :goto_183

    .line 326
    :cond_145
    invoke-interface {v1, v6}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 331
    .line 332
    if-eqz v7, :cond_14e

    .line 333
    .line 334
    goto :goto_183

    .line 335
    :cond_14e
    :try_start_14e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v7
    :try_end_152
    .catchall {:try_start_14e .. :try_end_152} :catchall_162

    .line 339
    if-nez v7, :cond_15c

    .line 340
    .line 341
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 342
    .line 343
    if-nez p1, :cond_183

    .line 344
    .line 345
    invoke-interface {v1}, Lx7/d;->a()V

    .line 346
    .line 347
    .line 348
    goto :goto_183

    .line 349
    :cond_15c
    if-eqz v6, :cond_126

    .line 350
    .line 351
    const-wide/16 v6, 0x1

    .line 352
    .line 353
    add-long/2addr v4, v6

    .line 354
    goto :goto_126

    .line 355
    :catchall_162
    move-exception p1

    .line 356
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    goto :goto_183

    .line 363
    :catchall_16a
    move-exception p1

    .line 364
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    goto :goto_183

    .line 371
    :cond_172
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 372
    .line 373
    .line 374
    move-result-wide p1

    .line 375
    cmp-long v6, v4, p1

    .line 376
    .line 377
    if-nez v6, :cond_126

    .line 378
    .line 379
    neg-long p1, v4

    .line 380
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 381
    .line 382
    .line 383
    move-result-wide p1

    .line 384
    cmp-long v4, p1, v2

    .line 385
    .line 386
    if-nez v4, :cond_125

    .line 387
    .line 388
    :cond_183
    :goto_183
    return-void

    .line 389
    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_67
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_11d
    .end packed-switch
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_13

    .line 6
    :cond_5
    iget-boolean v1, p0, Lh8/d0;->d:Z

    .line 7
    .line 8
    if-nez v1, :cond_d

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lh8/d0;->d:Z

    .line 12
    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_15

    .line 19
    .line 20
    :goto_13
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Iterator.next() returned a null value"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
