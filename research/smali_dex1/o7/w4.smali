.class public final Lo7/w4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/w;
.implements Lo7/u;


# static fields
.field public static final e:Lo7/u2;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo7/u2;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo7/w4;->e:Lo7/u2;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lo7/w4;->b:I

    sget-object v0, Lo7/u2;->d:Lo7/u2;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lo7/p4;->b()Lo7/r1;

    move-result-object v1

    iput-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 29
    iput p1, p0, Lo7/w4;->b:I

    iput-object p2, p0, Lo7/w4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lo7/w4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo7/w4;->b:I

    .line 3
    .line 4
    invoke-static {}, Ln7/l0;->a()Ln7/l0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "registry"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 17
    .line 18
    const-string v0, "defaultPolicy"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(Ln7/h;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u4;->a(Ln7/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Ln7/f1;Lo7/v;Ln7/v0;)V
    .registers 14

    .line 1
    iget v0, p0, Lo7/w4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_306

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lo7/v1;

    .line 14
    .line 15
    iget-object v1, v1, Lo7/v1;->j:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_11
    iget-object v2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lo7/v1;

    .line 21
    .line 22
    iget-object v3, v2, Lo7/v1;->p:Lo7/z3;

    .line 23
    .line 24
    iget-object v4, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lo7/c4;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lo7/z3;->d(Lo7/c4;)Lo7/z3;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iput-object v3, v2, Lo7/v1;->p:Lo7/z3;

    .line 33
    .line 34
    iget-object v2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lo7/v1;

    .line 37
    .line 38
    iget-object v2, v2, Lo7/v1;->o:Li7/i;

    .line 39
    .line 40
    iget-object v3, p1, Ln7/f1;->a:Ln7/e1;

    .line 41
    .line 42
    iget-object v2, v2, Li7/i;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_2dc

    .line 52
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lo7/v1;

    .line 55
    .line 56
    iget-object v1, v1, Lo7/v1;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/high16 v2, -0x80000000

    .line 63
    .line 64
    if-ne v1, v2, :cond_52

    .line 65
    .line 66
    iget-object p1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lo7/v1;

    .line 69
    .line 70
    iget-object p1, p1, Lo7/v1;->d:Ln7/k1;

    .line 71
    .line 72
    new-instance p2, Lo7/b4;

    .line 73
    .line 74
    const/4 p3, 0x0

    .line 75
    invoke-direct {p2, p0, p3}, Lo7/b4;-><init>(Lo7/w4;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2db

    .line 82
    .line 83
    :cond_52
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lo7/c4;

    .line 86
    .line 87
    iget-boolean v2, v1, Lo7/c4;->c:Z

    .line 88
    .line 89
    if-eqz v2, :cond_80

    .line 90
    .line 91
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lo7/v1;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lo7/v1;->j(Lo7/c4;)Lo7/p3;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_69

    .line 100
    .line 101
    iget-object v0, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 102
    .line 103
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    :cond_69
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lo7/v1;

    .line 109
    .line 110
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 111
    .line 112
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 113
    .line 114
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Lo7/c4;

    .line 117
    .line 118
    if-ne v0, v1, :cond_2db

    .line 119
    .line 120
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lo7/v1;

    .line 123
    .line 124
    invoke-virtual {v0, p1, p2, p3}, Lo7/v1;->s(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2db

    .line 128
    .line 129
    :cond_80
    sget-object v1, Lo7/v;->e:Lo7/v;

    .line 130
    .line 131
    if-ne p2, v1, :cond_cc

    .line 132
    .line 133
    iget-object v2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lo7/v1;

    .line 136
    .line 137
    iget-object v2, v2, Lo7/v1;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/16 v3, 0x3e8

    .line 144
    .line 145
    if-le v2, v3, :cond_cc

    .line 146
    .line 147
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lo7/v1;

    .line 150
    .line 151
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Lo7/c4;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lo7/v1;->j(Lo7/c4;)Lo7/p3;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_a5

    .line 160
    .line 161
    iget-object v0, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 162
    .line 163
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lo7/v1;

    .line 169
    .line 170
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 171
    .line 172
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 173
    .line 174
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lo7/c4;

    .line 177
    .line 178
    if-ne v0, v1, :cond_2db

    .line 179
    .line 180
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 181
    .line 182
    const-string v1, "Too many transparent retries. Might be a bug in gRPC"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lo7/v1;

    .line 199
    .line 200
    invoke-virtual {v0, p1, p2, p3}, Lo7/v1;->s(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_2db

    .line 204
    .line 205
    :cond_cc
    iget-object v2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v2, Lo7/v1;

    .line 208
    .line 209
    iget-object v2, v2, Lo7/v1;->p:Lo7/z3;

    .line 210
    .line 211
    iget-object v2, v2, Lo7/z3;->f:Lo7/c4;

    .line 212
    .line 213
    if-nez v2, :cond_2b3

    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    if-eq p2, v1, :cond_272

    .line 217
    .line 218
    sget-object v1, Lo7/v;->c:Lo7/v;

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    if-ne p2, v1, :cond_ec

    .line 222
    .line 223
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Lo7/v1;

    .line 226
    .line 227
    iget-object v1, v1, Lo7/v1;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    .line 229
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_ec

    .line 234
    .line 235
    goto/16 :goto_272

    .line 236
    .line 237
    :cond_ec
    sget-object v1, Lo7/v;->d:Lo7/v;

    .line 238
    .line 239
    iget-object v4, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v4, Lo7/v1;

    .line 242
    .line 243
    if-ne p2, v1, :cond_fd

    .line 244
    .line 245
    iget-boolean v0, v4, Lo7/v1;->i:Z

    .line 246
    .line 247
    if-eqz v0, :cond_2b3

    .line 248
    .line 249
    invoke-virtual {v4}, Lo7/v1;->q()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2b3

    .line 253
    .line 254
    :cond_fd
    iget-object v1, v4, Lo7/v1;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Lo7/v1;

    .line 262
    .line 263
    iget-boolean v4, v1, Lo7/v1;->i:Z

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    if-eqz v4, :cond_1a3

    .line 267
    .line 268
    sget-object v1, Lo7/v1;->G:Ln7/q0;

    .line 269
    .line 270
    invoke-virtual {p3, v1}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Ljava/lang/String;

    .line 275
    .line 276
    if-eqz v1, :cond_11a

    .line 277
    .line 278
    :try_start_115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v0
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_119} :catch_11b

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    move-object v0, v5

    .line 284
    :catch_11b
    :goto_11b
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v1, Lo7/v1;

    .line 287
    .line 288
    iget-object v4, v1, Lo7/v1;->h:Lo7/a1;

    .line 289
    .line 290
    iget-object v4, v4, Lo7/a1;->c:Lj4/g;

    .line 291
    .line 292
    iget-object v5, p1, Ln7/f1;->a:Ln7/e1;

    .line 293
    .line 294
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iget-object v5, v1, Lo7/v1;->n:Lo7/d4;

    .line 299
    .line 300
    if-eqz v5, :cond_13f

    .line 301
    .line 302
    if-nez v4, :cond_137

    .line 303
    .line 304
    if-eqz v0, :cond_13f

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-gez v5, :cond_13f

    .line 311
    .line 312
    :cond_137
    iget-object v1, v1, Lo7/v1;->n:Lo7/d4;

    .line 313
    .line 314
    invoke-virtual {v1}, Lo7/d4;->a()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    xor-int/2addr v1, v2

    .line 319
    goto :goto_140

    .line 320
    :cond_13f
    move v1, v3

    .line 321
    :goto_140
    if-eqz v4, :cond_156

    .line 322
    .line 323
    if-nez v1, :cond_156

    .line 324
    .line 325
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-nez v5, :cond_156

    .line 330
    .line 331
    if-eqz v0, :cond_156

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-lez v5, :cond_156

    .line 338
    .line 339
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :cond_156
    if-eqz v4, :cond_15b

    .line 344
    .line 345
    if-nez v1, :cond_15b

    .line 346
    .line 347
    goto :goto_15c

    .line 348
    :cond_15b
    move v2, v3

    .line 349
    :goto_15c
    if-eqz v2, :cond_165

    .line 350
    .line 351
    iget-object v1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v1, Lo7/v1;

    .line 354
    .line 355
    invoke-static {v1, v0}, Lo7/v1;->b(Lo7/v1;Ljava/lang/Integer;)V

    .line 356
    .line 357
    .line 358
    :cond_165
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lo7/v1;

    .line 361
    .line 362
    iget-object v4, v0, Lo7/v1;->j:Ljava/lang/Object;

    .line 363
    .line 364
    monitor-enter v4

    .line 365
    :try_start_16c
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v0, Lo7/v1;

    .line 368
    .line 369
    iget-object v1, v0, Lo7/v1;->p:Lo7/z3;

    .line 370
    .line 371
    iget-object v3, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v3, Lo7/c4;

    .line 374
    .line 375
    invoke-virtual {v1, v3}, Lo7/z3;->b(Lo7/c4;)Lo7/z3;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    iput-object v1, v0, Lo7/v1;->p:Lo7/z3;

    .line 380
    .line 381
    if-eqz v2, :cond_19e

    .line 382
    .line 383
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v0, Lo7/v1;

    .line 386
    .line 387
    iget-object v1, v0, Lo7/v1;->p:Lo7/z3;

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lo7/v1;->r(Lo7/z3;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_19b

    .line 394
    .line 395
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v0, Lo7/v1;

    .line 398
    .line 399
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 400
    .line 401
    iget-object v0, v0, Lo7/z3;->d:Ljava/util/Collection;

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-nez v0, :cond_19e

    .line 408
    .line 409
    goto :goto_19b

    .line 410
    :catchall_199
    move-exception p1

    .line 411
    goto :goto_1a1

    .line 412
    :cond_19b
    :goto_19b
    monitor-exit v4

    .line 413
    goto/16 :goto_2db

    .line 414
    .line 415
    :cond_19e
    monitor-exit v4

    .line 416
    goto/16 :goto_2b3

    .line 417
    .line 418
    :goto_1a1
    monitor-exit v4
    :try_end_1a2
    .catchall {:try_start_16c .. :try_end_1a2} :catchall_199

    .line 419
    throw p1

    .line 420
    :cond_1a3
    iget-object v4, v1, Lo7/v1;->g:Lo7/e4;

    .line 421
    .line 422
    const-wide/16 v6, 0x0

    .line 423
    .line 424
    if-nez v4, :cond_1b0

    .line 425
    .line 426
    new-instance v0, Lo7/x3;

    .line 427
    .line 428
    invoke-direct {v0, v6, v7, v3}, Lo7/x3;-><init>(JZ)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_22f

    .line 432
    .line 433
    :cond_1b0
    iget-object v4, v4, Lo7/e4;->f:Lj4/g;

    .line 434
    .line 435
    iget-object v8, p1, Ln7/f1;->a:Ln7/e1;

    .line 436
    .line 437
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    sget-object v8, Lo7/v1;->G:Ln7/q0;

    .line 442
    .line 443
    invoke-virtual {p3, v8}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    check-cast v8, Ljava/lang/String;

    .line 448
    .line 449
    if-eqz v8, :cond_1c7

    .line 450
    .line 451
    :try_start_1c2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v0
    :try_end_1c6
    .catch Ljava/lang/NumberFormatException; {:try_start_1c2 .. :try_end_1c6} :catch_1c8

    .line 455
    goto :goto_1c8

    .line 456
    :cond_1c7
    move-object v0, v5

    .line 457
    :catch_1c8
    :goto_1c8
    iget-object v5, v1, Lo7/v1;->n:Lo7/d4;

    .line 458
    .line 459
    if-eqz v5, :cond_1de

    .line 460
    .line 461
    if-nez v4, :cond_1d6

    .line 462
    .line 463
    if-eqz v0, :cond_1de

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-gez v5, :cond_1de

    .line 470
    .line 471
    :cond_1d6
    iget-object v5, v1, Lo7/v1;->n:Lo7/d4;

    .line 472
    .line 473
    invoke-virtual {v5}, Lo7/d4;->a()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    xor-int/2addr v5, v2

    .line 478
    goto :goto_1df

    .line 479
    :cond_1de
    move v5, v3

    .line 480
    :goto_1df
    iget-object v8, v1, Lo7/v1;->g:Lo7/e4;

    .line 481
    .line 482
    iget v8, v8, Lo7/e4;->a:I

    .line 483
    .line 484
    iget-object v9, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v9, Lo7/c4;

    .line 487
    .line 488
    iget v9, v9, Lo7/c4;->d:I

    .line 489
    .line 490
    add-int/2addr v9, v2

    .line 491
    if-le v8, v9, :cond_228

    .line 492
    .line 493
    if-nez v5, :cond_228

    .line 494
    .line 495
    if-nez v0, :cond_210

    .line 496
    .line 497
    if-eqz v4, :cond_228

    .line 498
    .line 499
    iget-wide v4, v1, Lo7/v1;->y:J

    .line 500
    .line 501
    long-to-double v4, v4

    .line 502
    sget-object v0, Lo7/v1;->I:Ljava/util/Random;

    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 505
    .line 506
    .line 507
    move-result-wide v6

    .line 508
    mul-double/2addr v6, v4

    .line 509
    double-to-long v6, v6

    .line 510
    iget-wide v4, v1, Lo7/v1;->y:J

    .line 511
    .line 512
    long-to-double v4, v4

    .line 513
    iget-object v0, v1, Lo7/v1;->g:Lo7/e4;

    .line 514
    .line 515
    iget-wide v8, v0, Lo7/e4;->d:D

    .line 516
    .line 517
    mul-double/2addr v4, v8

    .line 518
    double-to-long v4, v4

    .line 519
    iget-wide v8, v0, Lo7/e4;->c:J

    .line 520
    .line 521
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 522
    .line 523
    .line 524
    move-result-wide v4

    .line 525
    iput-wide v4, v1, Lo7/v1;->y:J

    .line 526
    .line 527
    :goto_20e
    move v0, v2

    .line 528
    goto :goto_229

    .line 529
    :cond_210
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    if-ltz v4, :cond_228

    .line 534
    .line 535
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    int-to-long v5, v0

    .line 542
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 543
    .line 544
    .line 545
    move-result-wide v6

    .line 546
    iget-object v0, v1, Lo7/v1;->g:Lo7/e4;

    .line 547
    .line 548
    iget-wide v4, v0, Lo7/e4;->b:J

    .line 549
    .line 550
    iput-wide v4, v1, Lo7/v1;->y:J

    .line 551
    .line 552
    goto :goto_20e

    .line 553
    :cond_228
    move v0, v3

    .line 554
    :goto_229
    new-instance v1, Lo7/x3;

    .line 555
    .line 556
    invoke-direct {v1, v6, v7, v0}, Lo7/x3;-><init>(JZ)V

    .line 557
    .line 558
    .line 559
    move-object v0, v1

    .line 560
    :goto_22f
    iget-boolean v1, v0, Lo7/x3;->a:Z

    .line 561
    .line 562
    if-eqz v1, :cond_2b3

    .line 563
    .line 564
    iget-object p1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast p1, Lo7/v1;

    .line 567
    .line 568
    iget-object p2, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast p2, Lo7/c4;

    .line 571
    .line 572
    iget p2, p2, Lo7/c4;->d:I

    .line 573
    .line 574
    add-int/2addr p2, v2

    .line 575
    invoke-virtual {p1, p2, v3}, Lo7/v1;->k(IZ)Lo7/c4;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    if-nez p1, :cond_246

    .line 580
    .line 581
    goto/16 :goto_2db

    .line 582
    .line 583
    :cond_246
    iget-object p2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast p2, Lo7/v1;

    .line 586
    .line 587
    iget-object v1, p2, Lo7/v1;->j:Ljava/lang/Object;

    .line 588
    .line 589
    monitor-enter v1

    .line 590
    :try_start_24d
    iget-object p2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast p2, Lo7/v1;

    .line 593
    .line 594
    new-instance p3, Lcom/bumptech/glide/manager/t;

    .line 595
    .line 596
    iget-object v2, p2, Lo7/v1;->j:Ljava/lang/Object;

    .line 597
    .line 598
    invoke-direct {p3, v2}, Lcom/bumptech/glide/manager/t;-><init>(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    iput-object p3, p2, Lo7/v1;->w:Lcom/bumptech/glide/manager/t;

    .line 602
    .line 603
    monitor-exit v1
    :try_end_25b
    .catchall {:try_start_24d .. :try_end_25b} :catchall_26f

    .line 604
    iget-object p2, p2, Lo7/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 605
    .line 606
    new-instance v1, Lo7/a4;

    .line 607
    .line 608
    const/4 v2, 0x0

    .line 609
    invoke-direct {v1, p0, p1, v2}, Lo7/a4;-><init>(Lo7/w4;Lo7/c4;I)V

    .line 610
    .line 611
    .line 612
    iget-wide v2, v0, Lo7/x3;->b:J

    .line 613
    .line 614
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 615
    .line 616
    invoke-interface {p2, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/manager/t;->i(Ljava/util/concurrent/ScheduledFuture;)V

    .line 621
    .line 622
    .line 623
    goto :goto_2db

    .line 624
    :catchall_26f
    move-exception p1

    .line 625
    :try_start_270
    monitor-exit v1
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    .line 626
    throw p1

    .line 627
    :cond_272
    :goto_272
    iget-object p1, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast p1, Lo7/v1;

    .line 630
    .line 631
    iget-object p2, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast p2, Lo7/c4;

    .line 634
    .line 635
    iget p2, p2, Lo7/c4;->d:I

    .line 636
    .line 637
    invoke-virtual {p1, p2, v2}, Lo7/v1;->k(IZ)Lo7/c4;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    if-nez p1, :cond_283

    .line 642
    .line 643
    goto :goto_2db

    .line 644
    :cond_283
    iget-object p2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast p2, Lo7/v1;

    .line 647
    .line 648
    iget-boolean p3, p2, Lo7/v1;->i:Z

    .line 649
    .line 650
    if-eqz p3, :cond_2a3

    .line 651
    .line 652
    iget-object p2, p2, Lo7/v1;->j:Ljava/lang/Object;

    .line 653
    .line 654
    monitor-enter p2

    .line 655
    :try_start_28e
    iget-object p3, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast p3, Lo7/v1;

    .line 658
    .line 659
    iget-object v0, p3, Lo7/v1;->p:Lo7/z3;

    .line 660
    .line 661
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v1, Lo7/c4;

    .line 664
    .line 665
    invoke-virtual {v0, v1, p1}, Lo7/z3;->c(Lo7/c4;Lo7/c4;)Lo7/z3;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iput-object v0, p3, Lo7/v1;->p:Lo7/z3;

    .line 670
    .line 671
    monitor-exit p2

    .line 672
    goto :goto_2a3

    .line 673
    :catchall_2a0
    move-exception p1

    .line 674
    monitor-exit p2
    :try_end_2a2
    .catchall {:try_start_28e .. :try_end_2a2} :catchall_2a0

    .line 675
    throw p1

    .line 676
    :cond_2a3
    :goto_2a3
    iget-object p2, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast p2, Lo7/v1;

    .line 679
    .line 680
    iget-object p2, p2, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 681
    .line 682
    new-instance p3, Lo7/a4;

    .line 683
    .line 684
    const/4 v0, 0x1

    .line 685
    invoke-direct {p3, p0, p1, v0}, Lo7/a4;-><init>(Lo7/w4;Lo7/c4;I)V

    .line 686
    .line 687
    .line 688
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 689
    .line 690
    .line 691
    goto :goto_2db

    .line 692
    :cond_2b3
    :goto_2b3
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Lo7/v1;

    .line 695
    .line 696
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v1, Lo7/c4;

    .line 699
    .line 700
    invoke-virtual {v0, v1}, Lo7/v1;->j(Lo7/c4;)Lo7/p3;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    if-eqz v1, :cond_2c6

    .line 705
    .line 706
    iget-object v0, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 707
    .line 708
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 709
    .line 710
    .line 711
    :cond_2c6
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lo7/v1;

    .line 714
    .line 715
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 716
    .line 717
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 718
    .line 719
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v1, Lo7/c4;

    .line 722
    .line 723
    if-ne v0, v1, :cond_2db

    .line 724
    .line 725
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, Lo7/v1;

    .line 728
    .line 729
    invoke-virtual {v0, p1, p2, p3}, Lo7/v1;->s(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 730
    .line 731
    .line 732
    :cond_2db
    :goto_2db
    return-void

    .line 733
    :catchall_2dc
    move-exception p1

    .line 734
    :try_start_2dd
    monitor-exit v1
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2dc

    .line 735
    throw p1

    .line 736
    :pswitch_2df
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 737
    .line 738
    check-cast v0, Lo7/w4;

    .line 739
    .line 740
    iget-object v0, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v0, Lo7/g1;

    .line 743
    .line 744
    iget-object v0, v0, Lo7/g1;->b:Lb1/m;

    .line 745
    .line 746
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    if-eqz v1, :cond_2f7

    .line 751
    .line 752
    iget-object v0, v0, Lb1/m;->e:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v0, Lo7/r1;

    .line 755
    .line 756
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 757
    .line 758
    .line 759
    goto :goto_2fe

    .line 760
    :cond_2f7
    iget-object v0, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 761
    .line 762
    check-cast v0, Lo7/r1;

    .line 763
    .line 764
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 765
    .line 766
    .line 767
    :goto_2fe
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v0, Lo7/w;

    .line 770
    .line 771
    invoke-interface {v0, p1, p2, p3}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 772
    .line 773
    .line 774
    return-void

    .line 775
    :pswitch_data_306
    .packed-switch 0x2
        :pswitch_2df
    .end packed-switch
.end method

.method public c(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->c(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Lo7/w;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/g1;

    .line 4
    .line 5
    iget-object v0, v0, Lo7/g1;->b:Lb1/m;

    .line 6
    .line 7
    iget-object v1, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo7/r1;

    .line 10
    .line 11
    invoke-interface {v1}, Lo7/r1;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lo7/u2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lo7/u2;->q()J

    .line 19
    .line 20
    .line 21
    new-instance v0, Lo7/w4;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1, p0, p1}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lo7/u;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lo7/u;->d(Lo7/w;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public e(Li7/i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->e(Li7/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lt7/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u4;->f(Lt7/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/u4;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Ln7/q;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->g(Ln7/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public h(Ln7/f1;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->h(Ln7/f1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/u;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/u4;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public j()V
    .registers 4

    .line 1
    iget v0, p0, Lo7/w4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/v1;

    .line 9
    .line 10
    invoke-virtual {v0}, Lo7/v1;->isReady()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_10

    .line 15
    .line 16
    goto :goto_1b

    .line 17
    :cond_10
    iget-object v0, v0, Lo7/v1;->d:Ln7/k1;

    .line 18
    .line 19
    new-instance v1, Lo7/b4;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, p0, v2}, Lo7/b4;-><init>(Lo7/w4;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :goto_1b
    return-void

    .line 29
    :pswitch_1c
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lo7/w;

    .line 32
    .line 33
    invoke-interface {v0}, Lo7/w;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1c
    .end packed-switch
.end method

.method public k(Lo7/o2;)V
    .registers 5

    .line 1
    iget v0, p0, Lo7/w4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/v1;

    .line 9
    .line 10
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 11
    .line 12
    iget-object v1, v0, Lo7/z3;->f:Lo7/c4;

    .line 13
    .line 14
    if-eqz v1, :cond_11

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    const-string v2, "Headers should be received prior to messages."

    .line 20
    .line 21
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 25
    .line 26
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lo7/c4;

    .line 29
    .line 30
    if-eq v0, v1, :cond_2b

    .line 31
    .line 32
    sget-object v0, Lo7/y0;->a:Ljava/util/logging/Logger;

    .line 33
    .line 34
    :goto_21
    invoke-virtual {p1}, Lo7/o2;->a()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_3b

    .line 39
    .line 40
    invoke-static {v0}, Lo7/y0;->b(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_21

    .line 44
    :cond_2b
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lo7/v1;

    .line 47
    .line 48
    iget-object v0, v0, Lo7/v1;->d:Ln7/k1;

    .line 49
    .line 50
    new-instance v1, Lo7/e0;

    .line 51
    .line 52
    const/16 v2, 0x18

    .line 53
    .line 54
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    return-void

    .line 61
    :pswitch_3c
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lo7/w;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lo7/w;->k(Lo7/o2;)V

    .line 66
    .line 67
    .line 68
    return-void

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_3c
    .end packed-switch
.end method

.method public l(Ln7/v0;)V
    .registers 7

    .line 1
    iget v0, p0, Lo7/w4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_7c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/c4;

    .line 9
    .line 10
    iget v0, v0, Lo7/c4;->d:I

    .line 11
    .line 12
    if-lez v0, :cond_1f

    .line 13
    .line 14
    sget-object v0, Lo7/v1;->F:Ln7/q0;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ln7/v0;->a(Ln7/s0;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lo7/c4;

    .line 22
    .line 23
    iget v1, v1, Lo7/c4;->d:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lo7/v1;

    .line 35
    .line 36
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lo7/c4;

    .line 39
    .line 40
    sget-object v2, Lo7/v1;->F:Ln7/q0;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lo7/v1;->j(Lo7/c4;)Lo7/p3;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_34

    .line 47
    .line 48
    iget-object v0, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lo7/v1;

    .line 56
    .line 57
    iget-object v0, v0, Lo7/v1;->p:Lo7/z3;

    .line 58
    .line 59
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 60
    .line 61
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lo7/c4;

    .line 64
    .line 65
    if-ne v0, v1, :cond_72

    .line 66
    .line 67
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lo7/v1;

    .line 70
    .line 71
    iget-object v0, v0, Lo7/v1;->n:Lo7/d4;

    .line 72
    .line 73
    if-eqz v0, :cond_62

    .line 74
    .line 75
    iget-object v1, v0, Lo7/d4;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    :cond_4c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget v3, v0, Lo7/d4;->a:I

    .line 82
    .line 83
    if-ne v2, v3, :cond_55

    .line 84
    .line 85
    goto :goto_62

    .line 86
    :cond_55
    iget v4, v0, Lo7/d4;->c:I

    .line 87
    .line 88
    add-int/2addr v4, v2

    .line 89
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4c

    .line 98
    .line 99
    :cond_62
    :goto_62
    iget-object v0, p0, Lo7/w4;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lo7/v1;

    .line 102
    .line 103
    iget-object v0, v0, Lo7/v1;->d:Ln7/k1;

    .line 104
    .line 105
    new-instance v1, Lo7/e0;

    .line 106
    .line 107
    const/16 v2, 0x17

    .line 108
    .line 109
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    :cond_72
    return-void

    .line 116
    :pswitch_73
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lo7/w;

    .line 119
    .line 120
    invoke-interface {v0, p1}, Lo7/w;->l(Ln7/v0;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_73
    .end packed-switch
.end method

.method public m(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->m(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n(Ln7/o;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lo7/u;->n(Ln7/o;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/u4;->o()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public request()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/u;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/u4;->request()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lo7/w4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lo7/u;

    .line 18
    .line 19
    const-string v2, "delegate"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :pswitch_1c
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lo7/w4;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lo7/w;

    .line 36
    .line 37
    const-string v2, "delegate"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_a
    .end packed-switch
.end method
