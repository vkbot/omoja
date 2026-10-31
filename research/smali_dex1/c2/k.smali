.class public final Lc2/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;
.implements Lf2/b;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 21
    iput p1, p0, Lc2/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;I)V
    .registers 9

    .line 1
    iput p8, p0, Lc2/k;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc2/k;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lc2/k;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lc2/k;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lc2/k;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lc2/k;->g:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Lc2/k;->h:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p7, p0, Lc2/k;->i:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 12

    .line 1
    iget v0, p0, Lc2/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_178

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc2/k;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt8/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Landroid/content/Context;

    .line 16
    .line 17
    iget-object v0, p0, Lc2/k;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lt8/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Le2/d;

    .line 27
    .line 28
    iget-object v0, p0, Lc2/k;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lt8/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Lk2/d;

    .line 38
    .line 39
    iget-object v0, p0, Lc2/k;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, La5/h;

    .line 42
    .line 43
    invoke-virtual {v0}, La5/h;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v5, v0

    .line 48
    check-cast v5, La5/h;

    .line 49
    .line 50
    iget-object v0, p0, Lc2/k;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lt8/a;

    .line 53
    .line 54
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v6, v0

    .line 59
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    iget-object v0, p0, Lc2/k;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lt8/a;

    .line 64
    .line 65
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v7, v0

    .line 70
    check-cast v7, Ll2/c;

    .line 71
    .line 72
    new-instance v8, Lc5/e;

    .line 73
    .line 74
    const/16 v0, 0xf

    .line 75
    .line 76
    invoke-direct {v8, v0}, Lc5/e;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Lz3/f;

    .line 80
    .line 81
    const/16 v0, 0xe

    .line 82
    .line 83
    invoke-direct {v9, v0}, Lz3/f;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lc2/k;->i:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lt8/a;

    .line 89
    .line 90
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v10, v0

    .line 95
    check-cast v10, Lk2/c;

    .line 96
    .line 97
    new-instance v1, Lj2/i;

    .line 98
    .line 99
    invoke-direct/range {v1 .. v10}, Lj2/i;-><init>(Landroid/content/Context;Le2/d;Lk2/d;La5/h;Ljava/util/concurrent/Executor;Ll2/c;Lm2/a;Lm2/a;Lk2/c;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :pswitch_66
    iget-object v0, p0, Lc2/k;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lt8/a;

    .line 106
    .line 107
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lf5/t;

    .line 112
    .line 113
    iget-object v1, p0, Lc2/k;->d:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Lg5/a;

    .line 116
    .line 117
    invoke-virtual {v1}, Lg5/a;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lc2/k;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, La5/h;

    .line 123
    .line 124
    invoke-virtual {v1}, La5/h;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lc2/k;->f:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Lh5/a;

    .line 130
    .line 131
    invoke-virtual {v1}, Lh5/a;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ll5/e;

    .line 136
    .line 137
    iget-object v2, p0, Lc2/k;->g:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lf5/i;

    .line 140
    .line 141
    invoke-virtual {v2}, Lf5/i;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lc2/k;->h:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Lg5/a;

    .line 147
    .line 148
    invoke-virtual {v2}, Lg5/a;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lc2/k;->i:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v2, Lg5/a;

    .line 154
    .line 155
    invoke-virtual {v2}, Lg5/a;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 160
    .line 161
    new-instance v3, Ld5/j;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v2, v3, Ld5/j;->a:Ljava/util/concurrent/Executor;

    .line 167
    .line 168
    check-cast v1, Ll5/d;

    .line 169
    .line 170
    invoke-virtual {v1}, Ll5/d;->c()Lo7/a;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v4, Landroidx/navigation/b;

    .line 175
    .line 176
    const/16 v5, 0x19

    .line 177
    .line 178
    invoke-direct {v4, v5}, Landroidx/navigation/b;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    new-instance v5, Lz2/e;

    .line 185
    .line 186
    invoke-direct {v5, v2, v4}, Lz2/e;-><init>(Ljava/util/concurrent/Executor;Lz2/b;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v1, Lo7/a;->c:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v2, Lcom/bumptech/glide/manager/t;

    .line 192
    .line 193
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/manager/t;->m(Lz2/f;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lo7/a;->i()V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lf5/t;->f:Lf5/k0;

    .line 200
    .line 201
    iget-object v2, v0, Lf5/t;->a:Lh8/p0;

    .line 202
    .line 203
    iget-object v4, v0, Lf5/t;->j:Lf5/b;

    .line 204
    .line 205
    iget-object v4, v4, Lf5/b;->b:Lh8/p0;

    .line 206
    .line 207
    iget-object v5, v0, Lf5/t;->b:Lh8/p0;

    .line 208
    .line 209
    sget v6, Lx7/b;->b:I

    .line 210
    .line 211
    const-string v6, "source1 is null"

    .line 212
    .line 213
    invoke-static {v2, v6}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v6, "source2 is null"

    .line 217
    .line 218
    invoke-static {v4, v6}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v6, "source3 is null"

    .line 222
    .line 223
    invoke-static {v5, v6}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const/4 v6, 0x3

    .line 227
    new-array v7, v6, [Ln9/a;

    .line 228
    .line 229
    const/4 v8, 0x0

    .line 230
    aput-object v2, v7, v8

    .line 231
    .line 232
    const/4 v2, 0x1

    .line 233
    aput-object v4, v7, v2

    .line 234
    .line 235
    const/4 v4, 0x2

    .line 236
    aput-object v5, v7, v4

    .line 237
    .line 238
    new-instance v5, Lh8/l;

    .line 239
    .line 240
    invoke-direct {v5, v2, v7}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget v7, Lx7/b;->b:I

    .line 244
    .line 245
    const-string v8, "maxConcurrency"

    .line 246
    .line 247
    invoke-static {v6, v8}, Ld8/b;->b(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v6, "bufferSize"

    .line 251
    .line 252
    invoke-static {v7, v6}, Ld8/b;->b(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    instance-of v8, v5, Le8/e;

    .line 256
    .line 257
    if-eqz v8, :cond_116

    .line 258
    .line 259
    check-cast v5, Le8/e;

    .line 260
    .line 261
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    if-nez v5, :cond_10d

    .line 266
    .line 267
    sget-object v5, Lh8/t;->c:Lh8/t;

    .line 268
    .line 269
    goto :goto_11c

    .line 270
    :cond_10d
    new-instance v8, Lh8/q0;

    .line 271
    .line 272
    sget-object v9, Ld8/b;->a:Lc5/e;

    .line 273
    .line 274
    invoke-direct {v8, v5, v9}, Lh8/q0;-><init>(Ljava/lang/Object;Lb8/c;)V

    .line 275
    .line 276
    .line 277
    :goto_114
    move-object v5, v8

    .line 278
    goto :goto_11c

    .line 279
    :cond_116
    new-instance v8, Lh8/g;

    .line 280
    .line 281
    invoke-direct {v8, v5, v7}, Lh8/g;-><init>(Lh8/l;I)V

    .line 282
    .line 283
    .line 284
    goto :goto_114

    .line 285
    :goto_11c
    new-instance v8, Le0/g;

    .line 286
    .line 287
    const/16 v9, 0xc

    .line 288
    .line 289
    invoke-direct {v8, v9}, Le0/g;-><init>(I)V

    .line 290
    .line 291
    .line 292
    new-instance v9, Lh8/o;

    .line 293
    .line 294
    invoke-direct {v9, v5, v8}, Lh8/o;-><init>(Lx7/b;Le0/g;)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v1, Lf5/k0;->a:Lx7/k;

    .line 298
    .line 299
    const-string v8, "scheduler is null"

    .line 300
    .line 301
    invoke-static {v5, v8}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v6}, Ld8/b;->b(ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v10, Lh8/a0;

    .line 308
    .line 309
    invoke-direct {v10, v9, v5, v7}, Lh8/a0;-><init>(Lx7/b;Lx7/k;I)V

    .line 310
    .line 311
    .line 312
    new-instance v5, Lf5/q;

    .line 313
    .line 314
    invoke-direct {v5, v0, v2}, Lf5/q;-><init>(Lf5/t;I)V

    .line 315
    .line 316
    .line 317
    const-string v0, "prefetch"

    .line 318
    .line 319
    invoke-static {v4, v0}, Ld8/b;->b(ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    instance-of v0, v10, Le8/e;

    .line 323
    .line 324
    if-eqz v0, :cond_157

    .line 325
    .line 326
    check-cast v10, Le8/e;

    .line 327
    .line 328
    invoke-interface {v10}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-nez v0, :cond_150

    .line 333
    .line 334
    sget-object v0, Lh8/t;->c:Lh8/t;

    .line 335
    .line 336
    goto :goto_15c

    .line 337
    :cond_150
    new-instance v2, Lh8/q0;

    .line 338
    .line 339
    invoke-direct {v2, v0, v5}, Lh8/q0;-><init>(Ljava/lang/Object;Lb8/c;)V

    .line 340
    .line 341
    .line 342
    move-object v0, v2

    .line 343
    goto :goto_15c

    .line 344
    :cond_157
    new-instance v0, Lh8/g;

    .line 345
    .line 346
    invoke-direct {v0, v10, v5}, Lh8/g;-><init>(Lh8/a0;Lf5/q;)V

    .line 347
    .line 348
    .line 349
    :goto_15c
    iget-object v1, v1, Lf5/k0;->b:Lx7/k;

    .line 350
    .line 351
    invoke-static {v1, v8}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v7, v6}, Ld8/b;->b(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Lh8/a0;

    .line 358
    .line 359
    invoke-direct {v2, v0, v1, v7}, Lh8/a0;-><init>(Lx7/b;Lx7/k;I)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Landroidx/navigation/b;

    .line 363
    .line 364
    invoke-direct {v0, v3}, Landroidx/navigation/b;-><init>(Ld5/j;)V

    .line 365
    .line 366
    .line 367
    new-instance v1, Ln8/c;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Ln8/c;-><init>(Landroidx/navigation/b;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v1}, Lx7/b;->d(Lx7/d;)V

    .line 373
    .line 374
    .line 375
    return-object v3

    .line 376
    nop

    .line 377
    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_66
    .end packed-switch
.end method
