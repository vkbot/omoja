.class public final Lt5/g;
.super La/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static C(Lw5/a;I)Lt5/b;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_43

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_34

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_26

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_17

    .line 17
    .line 18
    invoke-virtual {p0}, Lw5/a;->l0()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lt5/d;->b:Lt5/d;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    invoke-static {p1}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "Unexpected token: "

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_26
    new-instance p1, Lt5/f;

    .line 40
    .line 41
    invoke-virtual {p0}, Lw5/a;->i0()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Lt5/f;-><init>(Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_34
    invoke-virtual {p0}, Lw5/a;->n0()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Lt5/f;

    .line 58
    .line 59
    new-instance v0, Lu5/a;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lu5/a;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Lt5/f;-><init>(Ljava/lang/Number;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_43
    new-instance p1, Lt5/f;

    .line 69
    .line 70
    invoke-virtual {p0}, Lw5/a;->n0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Lt5/f;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public static D(Lw5/b;Lt5/b;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lw5/b;->b:Ljava/io/StringWriter;

    .line 2
    .line 3
    if-eqz p1, :cond_194

    .line 4
    .line 5
    instance-of v1, p1, Lt5/d;

    .line 6
    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_194

    .line 10
    .line 11
    :cond_a
    instance-of v1, p1, Lt5/f;

    .line 12
    .line 13
    if-eqz v1, :cond_c8

    .line 14
    .line 15
    if-eqz v1, :cond_c2

    .line 16
    .line 17
    check-cast p1, Lt5/f;

    .line 18
    .line 19
    iget-object v1, p1, Lt5/f;->b:Ljava/io/Serializable;

    .line 20
    .line 21
    instance-of v2, v1, Ljava/lang/Number;

    .line 22
    .line 23
    if-eqz v2, :cond_93

    .line 24
    .line 25
    invoke-virtual {p1}, Lt5/f;->h()Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lw5/b;->c0()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "-Infinity"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_7e

    .line 43
    .line 44
    const-string v2, "Infinity"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_7e

    .line 51
    .line 52
    const-string v2, "NaN"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3c

    .line 59
    .line 60
    goto :goto_7e

    .line 61
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-class v2, Ljava/lang/Integer;

    .line 66
    .line 67
    if-eq p1, v2, :cond_82

    .line 68
    .line 69
    const-class v2, Ljava/lang/Long;

    .line 70
    .line 71
    if-eq p1, v2, :cond_82

    .line 72
    .line 73
    const-class v2, Ljava/lang/Double;

    .line 74
    .line 75
    if-eq p1, v2, :cond_82

    .line 76
    .line 77
    const-class v2, Ljava/lang/Float;

    .line 78
    .line 79
    if-eq p1, v2, :cond_82

    .line 80
    .line 81
    const-class v2, Ljava/lang/Byte;

    .line 82
    .line 83
    if-eq p1, v2, :cond_82

    .line 84
    .line 85
    const-class v2, Ljava/lang/Short;

    .line 86
    .line 87
    if-eq p1, v2, :cond_82

    .line 88
    .line 89
    const-class v2, Ljava/math/BigDecimal;

    .line 90
    .line 91
    if-eq p1, v2, :cond_82

    .line 92
    .line 93
    const-class v2, Ljava/math/BigInteger;

    .line 94
    .line 95
    if-eq p1, v2, :cond_82

    .line 96
    .line 97
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    .line 99
    if-eq p1, v2, :cond_82

    .line 100
    .line 101
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    .line 103
    if-ne p1, v2, :cond_69

    .line 104
    .line 105
    goto :goto_82

    .line 106
    :cond_69
    sget-object v2, Lw5/b;->i:Ljava/util/regex/Pattern;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_76

    .line 117
    .line 118
    goto :goto_82

    .line 119
    :cond_76
    const-string p0, "String created by "

    .line 120
    .line 121
    const-string v0, " is not a valid JSON number: "

    .line 122
    .line 123
    invoke-static {p0, p1, v0, v1}, Landroidx/navigation/b;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_7e
    :goto_7e
    iget-boolean p1, p0, Lw5/b;->f:Z

    .line 128
    .line 129
    if-eqz p1, :cond_89

    .line 130
    .line 131
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lw5/b;->b()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_89
    const-string p0, "Numeric values must be finite, but was "

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_93
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 149
    .line 150
    if-eqz v2, :cond_ae

    .line 151
    .line 152
    check-cast v1, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {p0}, Lw5/b;->c0()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lw5/b;->b()V

    .line 162
    .line 163
    .line 164
    if-eqz p1, :cond_a8

    .line 165
    .line 166
    const-string p0, "true"

    .line 167
    .line 168
    goto :goto_aa

    .line 169
    :cond_a8
    const-string p0, "false"

    .line 170
    .line 171
    :goto_aa
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_ae
    invoke-virtual {p1}, Lt5/f;->g()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-nez p1, :cond_b8

    .line 180
    .line 181
    invoke-virtual {p0}, Lw5/b;->y()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b8
    invoke-virtual {p0}, Lw5/b;->c0()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lw5/b;->b()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lw5/b;->V(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_c2
    const-string p0, "Not a JSON Primitive: "

    .line 196
    .line 197
    invoke-static {p1, p0}, Lai/onnxruntime/b;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_c8
    instance-of v1, p1, Lt5/a;

    .line 202
    .line 203
    const/4 v2, 0x2

    .line 204
    if-eqz v1, :cond_110

    .line 205
    .line 206
    invoke-virtual {p0}, Lw5/b;->c0()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lw5/b;->b()V

    .line 210
    .line 211
    .line 212
    iget v1, p0, Lw5/b;->d:I

    .line 213
    .line 214
    iget-object v3, p0, Lw5/b;->c:[I

    .line 215
    .line 216
    array-length v4, v3

    .line 217
    if-ne v1, v4, :cond_e1

    .line 218
    .line 219
    mul-int/2addr v1, v2

    .line 220
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iput-object v1, p0, Lw5/b;->c:[I

    .line 225
    .line 226
    :cond_e1
    iget-object v1, p0, Lw5/b;->c:[I

    .line 227
    .line 228
    iget v3, p0, Lw5/b;->d:I

    .line 229
    .line 230
    add-int/lit8 v4, v3, 0x1

    .line 231
    .line 232
    iput v4, p0, Lw5/b;->d:I

    .line 233
    .line 234
    const/4 v4, 0x1

    .line 235
    aput v4, v1, v3

    .line 236
    .line 237
    const/16 v1, 0x5b

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lt5/b;->e()Lt5/a;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object p1, p1, Lt5/a;->b:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    const/4 v1, 0x0

    .line 253
    :goto_fc
    if-ge v1, v0, :cond_10a

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 260
    .line 261
    check-cast v3, Lt5/b;

    .line 262
    .line 263
    invoke-static {p0, v3}, Lt5/g;->D(Lw5/b;Lt5/b;)V

    .line 264
    .line 265
    .line 266
    goto :goto_fc

    .line 267
    :cond_10a
    const/16 p1, 0x5d

    .line 268
    .line 269
    invoke-virtual {p0, v4, v2, p1}, Lw5/b;->c(IIC)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_110
    instance-of v1, p1, Lt5/e;

    .line 274
    .line 275
    if-eqz v1, :cond_18a

    .line 276
    .line 277
    invoke-virtual {p0}, Lw5/b;->c0()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lw5/b;->b()V

    .line 281
    .line 282
    .line 283
    iget v1, p0, Lw5/b;->d:I

    .line 284
    .line 285
    iget-object v3, p0, Lw5/b;->c:[I

    .line 286
    .line 287
    array-length v4, v3

    .line 288
    if-ne v1, v4, :cond_128

    .line 289
    .line 290
    mul-int/2addr v1, v2

    .line 291
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, p0, Lw5/b;->c:[I

    .line 296
    .line 297
    :cond_128
    iget-object v1, p0, Lw5/b;->c:[I

    .line 298
    .line 299
    iget v2, p0, Lw5/b;->d:I

    .line 300
    .line 301
    add-int/lit8 v3, v2, 0x1

    .line 302
    .line 303
    iput v3, p0, Lw5/b;->d:I

    .line 304
    .line 305
    const/4 v3, 0x3

    .line 306
    aput v3, v1, v2

    .line 307
    .line 308
    const/16 v1, 0x7b

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lt5/b;->f()Lt5/e;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget-object p1, p1, Lt5/e;->b:Lu5/e;

    .line 318
    .line 319
    invoke-virtual {p1}, Lu5/e;->entrySet()Ljava/util/Set;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lu5/c;

    .line 324
    .line 325
    invoke-virtual {p1}, Lu5/c;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    :goto_148
    move-object v0, p1

    .line 330
    check-cast v0, Lu5/b;

    .line 331
    .line 332
    invoke-virtual {v0}, Lu5/b;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_183

    .line 337
    .line 338
    move-object v0, p1

    .line 339
    check-cast v0, Lu5/b;

    .line 340
    .line 341
    invoke-virtual {v0}, Lu5/b;->b()Lu5/d;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Ljava/lang/String;

    .line 350
    .line 351
    const-string v2, "name == null"

    .line 352
    .line 353
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    iget-object v2, p0, Lw5/b;->g:Ljava/lang/String;

    .line 357
    .line 358
    if-nez v2, :cond_17d

    .line 359
    .line 360
    iget v2, p0, Lw5/b;->d:I

    .line 361
    .line 362
    if-eqz v2, :cond_177

    .line 363
    .line 364
    iput-object v1, p0, Lw5/b;->g:Ljava/lang/String;

    .line 365
    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Lt5/b;

    .line 371
    .line 372
    invoke-static {p0, v0}, Lt5/g;->D(Lw5/b;Lt5/b;)V

    .line 373
    .line 374
    .line 375
    goto :goto_148

    .line 376
    :cond_177
    const-string p0, "JsonWriter is closed."

    .line 377
    .line 378
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_17d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 385
    .line 386
    .line 387
    throw p0

    .line 388
    :cond_183
    const/4 p1, 0x5

    .line 389
    const/16 v0, 0x7d

    .line 390
    .line 391
    invoke-virtual {p0, v3, p1, v0}, Lw5/b;->c(IIC)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :cond_18a
    const-string p0, "Couldn\'t write "

    .line 396
    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-static {p1, p0}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_194
    :goto_194
    invoke-virtual {p0}, Lw5/b;->y()V

    .line 406
    .line 407
    .line 408
    return-void
.end method


# virtual methods
.method public B(Lw5/a;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lw5/a;->p0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/g;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_19

    .line 12
    .line 13
    if-eq v1, v2, :cond_10

    .line 14
    .line 15
    move-object v1, v3

    .line 16
    goto :goto_21

    .line 17
    :cond_10
    invoke-virtual {p1}, Lw5/a;->c()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lt5/e;

    .line 21
    .line 22
    invoke-direct {v1}, Lt5/e;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_21

    .line 26
    :cond_19
    invoke-virtual {p1}, Lw5/a;->b()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lt5/a;

    .line 30
    .line 31
    invoke-direct {v1}, Lt5/a;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_21
    if-nez v1, :cond_28

    .line 35
    .line 36
    invoke-static {p1, v0}, Lt5/g;->C(Lw5/a;I)Lt5/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_28
    new-instance v0, Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lw5/a;->f0()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_81

    .line 51
    .line 52
    instance-of v4, v1, Lt5/e;

    .line 53
    .line 54
    if-eqz v4, :cond_3c

    .line 55
    .line 56
    invoke-virtual {p1}, Lw5/a;->j0()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move-object v4, v3

    .line 62
    :goto_3d
    invoke-virtual {p1}, Lw5/a;->p0()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v5}, Lcom/bumptech/glide/g;->c(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_54

    .line 71
    .line 72
    if-eq v6, v2, :cond_4b

    .line 73
    .line 74
    move-object v6, v3

    .line 75
    goto :goto_5c

    .line 76
    :cond_4b
    invoke-virtual {p1}, Lw5/a;->c()V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lt5/e;

    .line 80
    .line 81
    invoke-direct {v6}, Lt5/e;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    invoke-virtual {p1}, Lw5/a;->b()V

    .line 86
    .line 87
    .line 88
    new-instance v6, Lt5/a;

    .line 89
    .line 90
    invoke-direct {v6}, Lt5/a;-><init>()V

    .line 91
    .line 92
    .line 93
    :goto_5c
    if-eqz v6, :cond_60

    .line 94
    .line 95
    const/4 v7, 0x1

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    const/4 v7, 0x0

    .line 98
    :goto_61
    if-nez v6, :cond_67

    .line 99
    .line 100
    invoke-static {p1, v5}, Lt5/g;->C(Lw5/a;I)Lt5/b;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    :cond_67
    instance-of v5, v1, Lt5/a;

    .line 105
    .line 106
    if-eqz v5, :cond_74

    .line 107
    .line 108
    move-object v4, v1

    .line 109
    check-cast v4, Lt5/a;

    .line 110
    .line 111
    iget-object v4, v4, Lt5/a;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_7a

    .line 117
    :cond_74
    move-object v5, v1

    .line 118
    check-cast v5, Lt5/e;

    .line 119
    .line 120
    invoke-virtual {v5, v4, v6}, Lt5/e;->h(Ljava/lang/String;Lt5/b;)V

    .line 121
    .line 122
    .line 123
    :goto_7a
    if-eqz v7, :cond_2d

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    move-object v1, v6

    .line 129
    goto :goto_2d

    .line 130
    :cond_81
    instance-of v4, v1, Lt5/a;

    .line 131
    .line 132
    if-eqz v4, :cond_89

    .line 133
    .line 134
    invoke-virtual {p1}, Lw5/a;->V()V

    .line 135
    .line 136
    .line 137
    goto :goto_8c

    .line 138
    :cond_89
    invoke-virtual {p1}, Lw5/a;->c0()V

    .line 139
    .line 140
    .line 141
    :goto_8c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_93

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_93
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lt5/b;

    .line 153
    .line 154
    goto :goto_2d
.end method
