.class public final Lo7/a3;
.super Ln7/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final o:Ljava/util/logging/Logger;


# instance fields
.field public final f:Ln7/e;

.field public final g:Ljava/util/HashMap;

.field public h:Lo7/h1;

.field public i:I

.field public j:Z

.field public k:Ll/d;

.field public l:Ln7/j;

.field public m:Ln7/j;

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lo7/a3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/a3;->o:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ln7/e;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lo7/a3;->i:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lo7/a3;->j:Z

    .line 16
    .line 17
    sget-object v2, Ln7/j;->e:Ln7/j;

    .line 18
    .line 19
    iput-object v2, p0, Lo7/a3;->l:Ln7/j;

    .line 20
    .line 21
    iput-object v2, p0, Lo7/a3;->m:Ln7/j;

    .line 22
    .line 23
    sget-object v2, Lo7/y0;->a:Ljava/util/logging/Logger;

    .line 24
    .line 25
    const-string v2, "GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS"

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_24

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_24
    invoke-static {v3}, Li4/d;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_31

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_31

    .line 48
    .line 49
    move v0, v1

    .line 50
    :cond_31
    iput-boolean v0, p0, Lo7/a3;->n:Z

    .line 51
    .line 52
    iput-object p1, p0, Lo7/a3;->f:Ln7/e;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ln7/g0;)Ln7/f1;
    .registers 9

    .line 1
    iget-object v0, p0, Lo7/a3;->l:Ln7/j;

    .line 2
    .line 3
    sget-object v1, Ln7/j;->f:Ln7/j;

    .line 4
    .line 5
    if-ne v0, v1, :cond_f

    .line 6
    .line 7
    sget-object p1, Ln7/f1;->k:Ln7/f1;

    .line 8
    .line 9
    const-string v0, "Already shut down"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    iget-object v0, p1, Ln7/g0;->a:Ljava/util/List;

    .line 17
    .line 18
    iget-object p1, p1, Ln7/g0;->b:Ln7/b;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, ", attrs="

    .line 25
    .line 26
    if-eqz v1, :cond_39

    .line 27
    .line 28
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "NameResolver returned no usable address. addrs="

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lo7/a3;->c(Ln7/f1;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_69

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ln7/r;

    .line 73
    .line 74
    if-nez v3, :cond_3d

    .line 75
    .line 76
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "NameResolver returned address list with null endpoint. addrs="

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lo7/a3;->c(Ln7/f1;)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_69
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lo7/a3;->j:Z

    .line 108
    .line 109
    sget-object p1, Lj4/e;->c:Lj4/c;

    .line 110
    .line 111
    const-string p1, "initialCapacity"

    .line 112
    .line 113
    const/4 v1, 0x4

    .line 114
    invoke-static {v1, p1}, Lb1/u;->c(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-array p1, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    array-length v2, p1

    .line 124
    if-ge v2, v1, :cond_86

    .line 125
    .line 126
    array-length v2, p1

    .line 127
    invoke-static {v2, v1}, Lj4/b;->b(II)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_86
    instance-of v1, v0, Lj4/a;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    if-eqz v1, :cond_92

    .line 139
    .line 140
    check-cast v0, Lj4/a;

    .line 141
    .line 142
    invoke-virtual {v0, v2, p1}, Lj4/a;->d(I[Ljava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    goto :goto_c5

    .line 147
    :cond_92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move v1, v2

    .line 152
    move v3, v1

    .line 153
    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_c4

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    add-int/lit8 v5, v1, 0x1

    .line 167
    .line 168
    array-length v6, p1

    .line 169
    if-ge v6, v5, :cond_b5

    .line 170
    .line 171
    array-length v3, p1

    .line 172
    invoke-static {v3, v5}, Lj4/b;->b(II)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :goto_b3
    move v3, v2

    .line 181
    goto :goto_be

    .line 182
    :cond_b5
    if-eqz v3, :cond_be

    .line 183
    .line 184
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, [Ljava/lang/Object;

    .line 189
    .line 190
    goto :goto_b3

    .line 191
    :cond_be
    :goto_be
    add-int/lit8 v5, v1, 0x1

    .line 192
    .line 193
    aput-object v4, p1, v1

    .line 194
    .line 195
    move v1, v5

    .line 196
    goto :goto_98

    .line 197
    :cond_c4
    move v0, v1

    .line 198
    :goto_c5
    invoke-static {v0, p1}, Lj4/e;->i(I[Ljava/lang/Object;)Lj4/i;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 203
    .line 204
    sget-object v1, Ln7/j;->c:Ln7/j;

    .line 205
    .line 206
    if-nez v0, :cond_df

    .line 207
    .line 208
    new-instance v0, Lo7/h1;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    if-eqz p1, :cond_d8

    .line 214
    .line 215
    move-object v3, p1

    .line 216
    goto :goto_da

    .line 217
    :cond_d8
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 218
    .line 219
    :goto_da
    iput-object v3, v0, Lo7/h1;->a:Ljava/util/List;

    .line 220
    .line 221
    iput-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 222
    .line 223
    goto :goto_116

    .line 224
    :cond_df
    iget-object v3, p0, Lo7/a3;->l:Ln7/j;

    .line 225
    .line 226
    if-ne v3, v1, :cond_10a

    .line 227
    .line 228
    invoke-virtual {v0}, Lo7/h1;->a()Ljava/net/SocketAddress;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget-object v3, p0, Lo7/a3;->h:Lo7/h1;

    .line 233
    .line 234
    if-eqz p1, :cond_ed

    .line 235
    .line 236
    move-object v4, p1

    .line 237
    goto :goto_f2

    .line 238
    :cond_ed
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 242
    .line 243
    :goto_f2
    iput-object v4, v3, Lo7/h1;->a:Ljava/util/List;

    .line 244
    .line 245
    iput v2, v3, Lo7/h1;->b:I

    .line 246
    .line 247
    iput v2, v3, Lo7/h1;->c:I

    .line 248
    .line 249
    iget-object v3, p0, Lo7/a3;->h:Lo7/h1;

    .line 250
    .line 251
    invoke-virtual {v3, v0}, Lo7/h1;->e(Ljava/net/SocketAddress;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_103

    .line 256
    .line 257
    sget-object p1, Ln7/f1;->e:Ln7/f1;

    .line 258
    .line 259
    return-object p1

    .line 260
    :cond_103
    iget-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 261
    .line 262
    iput v2, v0, Lo7/h1;->b:I

    .line 263
    .line 264
    iput v2, v0, Lo7/h1;->c:I

    .line 265
    .line 266
    goto :goto_116

    .line 267
    :cond_10a
    if-eqz p1, :cond_10e

    .line 268
    .line 269
    move-object v3, p1

    .line 270
    goto :goto_110

    .line 271
    :cond_10e
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 272
    .line 273
    :goto_110
    iput-object v3, v0, Lo7/h1;->a:Ljava/util/List;

    .line 274
    .line 275
    iput v2, v0, Lo7/h1;->b:I

    .line 276
    .line 277
    iput v2, v0, Lo7/h1;->c:I

    .line 278
    .line 279
    :goto_116
    new-instance v0, Ljava/util/HashSet;

    .line 280
    .line 281
    iget-object v3, p0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 288
    .line 289
    .line 290
    new-instance v4, Ljava/util/HashSet;

    .line 291
    .line 292
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Lj4/e;->j(I)Lj4/c;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    :goto_12a
    invoke-virtual {p1}, Lj4/c;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_13c

    .line 304
    .line 305
    invoke-virtual {p1}, Lj4/c;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Ln7/r;

    .line 310
    .line 311
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 312
    .line 313
    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_12a

    .line 317
    :cond_13c
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    :cond_140
    :goto_140
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_15e

    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Ljava/net/SocketAddress;

    .line 332
    .line 333
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-nez v5, :cond_140

    .line 338
    .line 339
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, Lo7/z2;

    .line 344
    .line 345
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 346
    .line 347
    invoke-virtual {v2}, Ln7/t;->n()V

    .line 348
    .line 349
    .line 350
    goto :goto_140

    .line 351
    :cond_15e
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    sget-object v0, Ln7/j;->b:Ln7/j;

    .line 356
    .line 357
    if-eqz p1, :cond_185

    .line 358
    .line 359
    iget-object p1, p0, Lo7/a3;->l:Ln7/j;

    .line 360
    .line 361
    if-eq p1, v0, :cond_185

    .line 362
    .line 363
    if-ne p1, v1, :cond_16d

    .line 364
    .line 365
    goto :goto_185

    .line 366
    :cond_16d
    sget-object v0, Ln7/j;->e:Ln7/j;

    .line 367
    .line 368
    if-ne p1, v0, :cond_17a

    .line 369
    .line 370
    new-instance p1, Lo7/y2;

    .line 371
    .line 372
    invoke-direct {p1, p0, p0}, Lo7/y2;-><init>(Lo7/a3;Lo7/a3;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, v0, p1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 376
    .line 377
    .line 378
    goto :goto_197

    .line 379
    :cond_17a
    sget-object v0, Ln7/j;->d:Ln7/j;

    .line 380
    .line 381
    if-ne p1, v0, :cond_197

    .line 382
    .line 383
    invoke-virtual {p0}, Lo7/a3;->g()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lo7/a3;->e()V

    .line 387
    .line 388
    .line 389
    goto :goto_197

    .line 390
    :cond_185
    :goto_185
    iput-object v0, p0, Lo7/a3;->l:Ln7/j;

    .line 391
    .line 392
    new-instance p1, Lo7/x2;

    .line 393
    .line 394
    sget-object v1, Ln7/f0;->e:Ln7/f0;

    .line 395
    .line 396
    invoke-direct {p1, v1}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v0, p1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0}, Lo7/a3;->g()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0}, Lo7/a3;->e()V

    .line 406
    .line 407
    .line 408
    :cond_197
    :goto_197
    sget-object p1, Ln7/f1;->e:Ln7/f1;

    .line 409
    .line 410
    return-object p1
.end method

.method public final c(Ln7/f1;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1c

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lo7/z2;

    .line 22
    .line 23
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 24
    .line 25
    invoke-virtual {v2}, Ln7/t;->n()V

    .line 26
    .line 27
    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lo7/x2;

    .line 33
    .line 34
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Ln7/j;->d:Ln7/j;

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final e()V
    .registers 12

    .line 1
    iget-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 2
    .line 3
    if-eqz v0, :cond_fe

    .line 4
    .line 5
    invoke-virtual {v0}, Lo7/h1;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_fe

    .line 10
    .line 11
    iget-object v0, p0, Lo7/a3;->l:Ln7/j;

    .line 12
    .line 13
    sget-object v1, Ln7/j;->f:Ln7/j;

    .line 14
    .line 15
    if-ne v0, v1, :cond_12

    .line 16
    .line 17
    goto/16 :goto_fe

    .line 18
    .line 19
    :cond_12
    iget-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lo7/h1;->a()Ljava/net/SocketAddress;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sget-object v3, Lo7/a3;->o:Ljava/util/logging/Logger;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2d

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lo7/z2;

    .line 41
    .line 42
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 43
    .line 44
    goto/16 :goto_a4

    .line 45
    .line 46
    :cond_2d
    new-instance v2, Lo7/w2;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lo7/w2;-><init>(Lo7/a3;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ln7/e0;->d()Ln7/e0;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v6, Ln7/r;

    .line 56
    .line 57
    invoke-direct {v6, v0}, Ln7/r;-><init>(Ljava/net/SocketAddress;)V

    .line 58
    .line 59
    .line 60
    filled-new-array {v6}, [Ln7/r;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v7, "arraySize"

    .line 65
    .line 66
    invoke-static {v4, v7}, Lb1/u;->c(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v7, 0x5

    .line 70
    .line 71
    int-to-long v9, v4

    .line 72
    add-long/2addr v9, v7

    .line 73
    const/4 v7, 0x0

    .line 74
    int-to-long v7, v7

    .line 75
    add-long/2addr v9, v7

    .line 76
    const-wide/32 v7, 0x7fffffff

    .line 77
    .line 78
    .line 79
    cmp-long v7, v9, v7

    .line 80
    .line 81
    if-lez v7, :cond_56

    .line 82
    .line 83
    const v7, 0x7fffffff

    .line 84
    .line 85
    .line 86
    goto :goto_61

    .line 87
    :cond_56
    const-wide/32 v7, -0x80000000

    .line 88
    .line 89
    .line 90
    cmp-long v7, v9, v7

    .line 91
    .line 92
    if-gez v7, :cond_60

    .line 93
    .line 94
    const/high16 v7, -0x80000000

    .line 95
    .line 96
    goto :goto_61

    .line 97
    :cond_60
    long-to-int v7, v9

    .line 98
    :goto_61
    new-instance v8, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v8, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v8}, Ln7/e0;->e(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v2}, Ln7/e0;->a(Ln7/i0;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ln7/e0;->b()Ln7/e0;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-object v6, p0, Lo7/a3;->f:Ln7/e;

    .line 117
    .line 118
    invoke-virtual {v6, v5}, Ln7/e;->b(Ln7/e0;)Ln7/t;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_e8

    .line 123
    .line 124
    new-instance v6, Lo7/z2;

    .line 125
    .line 126
    invoke-direct {v6, v5, v2}, Lo7/z2;-><init>(Ln7/t;Lo7/w2;)V

    .line 127
    .line 128
    .line 129
    iput-object v6, v2, Lo7/w2;->b:Lo7/z2;

    .line 130
    .line 131
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ln7/t;->d()Ln7/b;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    sget-object v7, Ln7/j0;->d:Ln7/a;

    .line 139
    .line 140
    iget-object v6, v6, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    if-nez v6, :cond_9b

    .line 147
    .line 148
    sget-object v6, Ln7/j;->c:Ln7/j;

    .line 149
    .line 150
    invoke-static {v6}, Ln7/k;->a(Ln7/j;)Ln7/k;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    iput-object v6, v2, Lo7/w2;->a:Ln7/k;

    .line 155
    .line 156
    :cond_9b
    new-instance v2, Lo7/v2;

    .line 157
    .line 158
    invoke-direct {v2, p0, v5}, Lo7/v2;-><init>(Lo7/a3;Ln7/t;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v2}, Ln7/t;->p(Ln7/i0;)V

    .line 162
    .line 163
    .line 164
    move-object v2, v5

    .line 165
    :goto_a4
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lo7/z2;

    .line 170
    .line 171
    iget-object v5, v5, Lo7/z2;->b:Ln7/j;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_dc

    .line 178
    .line 179
    if-eq v5, v4, :cond_d6

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    if-eq v5, v3, :cond_cd

    .line 183
    .line 184
    const/4 v3, 0x3

    .line 185
    if-eq v5, v3, :cond_bb

    .line 186
    .line 187
    goto :goto_fe

    .line 188
    :cond_bb
    invoke-virtual {v2}, Ln7/t;->l()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lo7/z2;

    .line 196
    .line 197
    sget-object v1, Ln7/j;->b:Ln7/j;

    .line 198
    .line 199
    invoke-static {v0, v1}, Lo7/z2;->a(Lo7/z2;Ln7/j;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lo7/a3;->h()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_cd
    iget-object v0, p0, Lo7/a3;->h:Lo7/h1;

    .line 207
    .line 208
    invoke-virtual {v0}, Lo7/h1;->b()Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lo7/a3;->e()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_d6
    const-string v0, "Requesting a connection even though we have a READY subchannel"

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_dc
    iget-boolean v0, p0, Lo7/a3;->n:Z

    .line 222
    .line 223
    if-eqz v0, :cond_e4

    .line 224
    .line 225
    invoke-virtual {p0}, Lo7/a3;->h()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_e4
    invoke-virtual {v2}, Ln7/t;->l()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v2, "Was not able to create subchannel for "

    .line 236
    .line 237
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v0, "Can\'t create subchannel"

    .line 251
    .line 252
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_fe
    :goto_fe
    return-void
.end method

.method public final f()V
    .registers 6

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lo7/a3;->o:Ljava/util/logging/Logger;

    .line 14
    .line 15
    const-string v4, "Shutting down, currently have {} subchannels created"

    .line 16
    .line 17
    invoke-virtual {v3, v0, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ln7/j;->f:Ln7/j;

    .line 21
    .line 22
    iput-object v0, p0, Lo7/a3;->l:Ln7/j;

    .line 23
    .line 24
    iput-object v0, p0, Lo7/a3;->m:Ln7/j;

    .line 25
    .line 26
    invoke-virtual {p0}, Lo7/a3;->g()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_36

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lo7/z2;

    .line 48
    .line 49
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 50
    .line 51
    invoke-virtual {v2}, Ln7/t;->n()V

    .line 52
    .line 53
    .line 54
    goto :goto_24

    .line 55
    :cond_36
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/a3;->k:Ll/d;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/d;->j()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo7/a3;->k:Ll/d;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public final h()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lo7/a3;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_30

    .line 4
    .line 5
    iget-object v0, p0, Lo7/a3;->k:Ll/d;

    .line 6
    .line 7
    if-eqz v0, :cond_15

    .line 8
    .line 9
    iget-object v0, v0, Ll/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ln7/j1;

    .line 12
    .line 13
    iget-boolean v1, v0, Ln7/j1;->d:Z

    .line 14
    .line 15
    if-nez v1, :cond_15

    .line 16
    .line 17
    iget-boolean v0, v0, Ln7/j1;->c:Z

    .line 18
    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v0, p0, Lo7/a3;->f:Ln7/e;

    .line 23
    .line 24
    invoke-virtual {v0}, Ln7/e;->f()Ln7/k1;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/bumptech/glide/m;

    .line 29
    .line 30
    const/16 v3, 0x12

    .line 31
    .line 32
    invoke-direct {v2, v3, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-virtual {v0}, Ln7/e;->d()Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-wide/16 v3, 0xfa

    .line 42
    .line 43
    invoke-virtual/range {v1 .. v6}, Ln7/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ll/d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lo7/a3;->k:Ll/d;

    .line 48
    .line 49
    :cond_30
    return-void
.end method

.method public final i(Ln7/j;Ln7/h0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/a3;->m:Ln7/j;

    .line 2
    .line 3
    if-ne p1, v0, :cond_d

    .line 4
    .line 5
    sget-object v0, Ln7/j;->e:Ln7/j;

    .line 6
    .line 7
    if-eq p1, v0, :cond_c

    .line 8
    .line 9
    sget-object v0, Ln7/j;->b:Ln7/j;

    .line 10
    .line 11
    if-ne p1, v0, :cond_d

    .line 12
    .line 13
    :cond_c
    return-void

    .line 14
    :cond_d
    iput-object p1, p0, Lo7/a3;->m:Ln7/j;

    .line 15
    .line 16
    iget-object v0, p0, Lo7/a3;->f:Ln7/e;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ln7/e;->D(Ln7/j;Ln7/h0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j(Lo7/z2;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lo7/z2;->b:Ln7/j;

    .line 2
    .line 3
    sget-object v1, Ln7/j;->c:Ln7/j;

    .line 4
    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    goto :goto_40

    .line 8
    :cond_7
    iget-object v0, p1, Lo7/z2;->c:Lo7/w2;

    .line 9
    .line 10
    iget-object v0, v0, Lo7/w2;->a:Ln7/k;

    .line 11
    .line 12
    iget-object v2, v0, Ln7/k;->a:Ln7/j;

    .line 13
    .line 14
    if-ne v2, v1, :cond_1f

    .line 15
    .line 16
    new-instance v0, Lo7/t1;

    .line 17
    .line 18
    iget-object p1, p1, Lo7/z2;->a:Ln7/t;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p1, v2}, Ln7/f0;->b(Ln7/t;Lv7/r;)Ln7/f0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lo7/t1;-><init>(Ln7/f0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    sget-object p1, Ln7/j;->d:Ln7/j;

    .line 33
    .line 34
    if-ne v2, p1, :cond_32

    .line 35
    .line 36
    new-instance v1, Lo7/x2;

    .line 37
    .line 38
    iget-object v0, v0, Ln7/k;->b:Ln7/f1;

    .line 39
    .line 40
    invoke-static {v0}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, v0}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    iget-object v0, p0, Lo7/a3;->m:Ln7/j;

    .line 52
    .line 53
    if-eq v0, p1, :cond_40

    .line 54
    .line 55
    new-instance p1, Lo7/x2;

    .line 56
    .line 57
    sget-object v0, Ln7/f0;->e:Ln7/f0;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2, p1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 63
    .line 64
    .line 65
    :cond_40
    :goto_40
    return-void
.end method
