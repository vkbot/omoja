.class public final Lp7/j;
.super Lo7/b1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public final E:Lp7/d;

.field public final F:Lb7/p;

.field public final G:Lp7/n;

.field public H:Z

.field public final I:Lw7/c;

.field public J:Lp7/v;

.field public K:I

.field public final synthetic L:Lp7/k;

.field public final v:I

.field public final w:Ljava/lang/Object;

.field public x:Ljava/util/ArrayList;

.field public final y:Ll9/l;

.field public z:Z


# direct methods
.method public constructor <init>(Lp7/k;ILo7/t4;Ljava/lang/Object;Lp7/d;Lb7/p;Lp7/n;I)V
    .registers 9

    .line 1
    iput-object p1, p0, Lp7/j;->L:Lp7/k;

    .line 2
    .line 3
    iget-object p1, p1, Lo7/b;->b:Lo7/w4;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p1}, Lo7/b1;-><init>(ILo7/t4;Lo7/w4;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Li4/b;->b:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    iput-object p1, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    new-instance p1, Ll9/l;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lp7/j;->y:Ll9/l;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lp7/j;->z:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lp7/j;->A:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lp7/j;->B:Z

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lp7/j;->H:Z

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lp7/j;->K:I

    .line 31
    .line 32
    const-string p1, "lock"

    .line 33
    .line 34
    invoke-static {p4, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p4, p0, Lp7/j;->w:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p5, p0, Lp7/j;->E:Lp7/d;

    .line 40
    .line 41
    iput-object p6, p0, Lp7/j;->F:Lb7/p;

    .line 42
    .line 43
    iput-object p7, p0, Lp7/j;->G:Lp7/n;

    .line 44
    .line 45
    iput p8, p0, Lp7/j;->C:I

    .line 46
    .line 47
    iput p8, p0, Lp7/j;->D:I

    .line 48
    .line 49
    iput p8, p0, Lp7/j;->v:I

    .line 50
    .line 51
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object p1, Lw7/a;->a:Lw7/c;

    .line 57
    .line 58
    iput-object p1, p0, Lp7/j;->I:Lw7/c;

    .line 59
    .line 60
    return-void
.end method

.method public static j(Lp7/j;Ln7/v0;Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lp7/j;->L:Lp7/k;

    .line 2
    .line 3
    iget-object v1, v0, Lp7/k;->l:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lp7/k;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lp7/k;->p:Z

    .line 8
    .line 9
    iget-object v4, p0, Lp7/j;->G:Lp7/n;

    .line 10
    .line 11
    iget-object v5, v4, Lp7/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    if-nez v5, :cond_12

    .line 16
    .line 17
    move v5, v7

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v5, v6

    .line 20
    :goto_13
    sget-object v8, Lp7/e;->a:Lr7/b;

    .line 21
    .line 22
    const-string v8, "headers"

    .line 23
    .line 24
    invoke-static {p1, v8}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v8, "authority"

    .line 28
    .line 29
    invoke-static {v1, v8}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v8, Lo7/y0;->i:Ln7/q0;

    .line 33
    .line 34
    invoke-virtual {p1, v8}, Ln7/v0;->a(Ln7/s0;)V

    .line 35
    .line 36
    .line 37
    sget-object v8, Lo7/y0;->j:Ln7/q0;

    .line 38
    .line 39
    invoke-virtual {p1, v8}, Ln7/v0;->a(Ln7/s0;)V

    .line 40
    .line 41
    .line 42
    sget-object v8, Lo7/y0;->k:Ln7/q0;

    .line 43
    .line 44
    invoke-virtual {p1, v8}, Ln7/v0;->a(Ln7/s0;)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget v10, p1, Ln7/v0;->b:I

    .line 50
    .line 51
    add-int/lit8 v10, v10, 0x7

    .line 52
    .line 53
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v5, :cond_3f

    .line 57
    .line 58
    sget-object v5, Lp7/e;->b:Lr7/b;

    .line 59
    .line 60
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    sget-object v5, Lp7/e;->a:Lr7/b;

    .line 65
    .line 66
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_44
    if-eqz v3, :cond_4c

    .line 70
    .line 71
    sget-object v3, Lp7/e;->d:Lr7/b;

    .line 72
    .line 73
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_51

    .line 77
    :cond_4c
    sget-object v3, Lp7/e;->c:Lr7/b;

    .line 78
    .line 79
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_51
    new-instance v3, Lr7/b;

    .line 83
    .line 84
    sget-object v5, Lr7/b;->h:Ll9/o;

    .line 85
    .line 86
    invoke-direct {v3, v5, v1}, Lr7/b;-><init>(Ll9/o;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v1, Lr7/b;

    .line 93
    .line 94
    sget-object v3, Lr7/b;->f:Ll9/o;

    .line 95
    .line 96
    invoke-direct {v1, v3, p2}, Lr7/b;-><init>(Ll9/o;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance p2, Lr7/b;

    .line 103
    .line 104
    iget-object v1, v8, Ln7/s0;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {p2, v1, v2}, Lr7/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    sget-object p2, Lp7/e;->e:Lr7/b;

    .line 113
    .line 114
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    sget-object p2, Lp7/e;->f:Lr7/b;

    .line 118
    .line 119
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    sget-object p2, Lo7/v4;->a:Ljava/util/logging/Logger;

    .line 123
    .line 124
    sget-object p2, Ln7/b0;->a:Ljava/nio/charset/Charset;

    .line 125
    .line 126
    iget p2, p1, Ln7/v0;->b:I

    .line 127
    .line 128
    mul-int/lit8 p2, p2, 0x2

    .line 129
    .line 130
    new-array v1, p2, [[B

    .line 131
    .line 132
    iget-object v2, p1, Ln7/v0;->a:[Ljava/lang/Object;

    .line 133
    .line 134
    instance-of v3, v2, [[B

    .line 135
    .line 136
    if-eqz v3, :cond_8d

    .line 137
    .line 138
    invoke-static {v2, v6, v1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    goto :goto_af

    .line 142
    :cond_8d
    move v2, v6

    .line 143
    :goto_8e
    iget v3, p1, Ln7/v0;->b:I

    .line 144
    .line 145
    if-ge v2, v3, :cond_af

    .line 146
    .line 147
    mul-int/lit8 v3, v2, 0x2

    .line 148
    .line 149
    iget-object v5, p1, Ln7/v0;->a:[Ljava/lang/Object;

    .line 150
    .line 151
    aget-object v8, v5, v3

    .line 152
    .line 153
    check-cast v8, [B

    .line 154
    .line 155
    aput-object v8, v1, v3

    .line 156
    .line 157
    add-int/2addr v3, v7

    .line 158
    aget-object v5, v5, v3

    .line 159
    .line 160
    instance-of v8, v5, [B

    .line 161
    .line 162
    if-eqz v8, :cond_aa

    .line 163
    .line 164
    check-cast v5, [B

    .line 165
    .line 166
    aput-object v5, v1, v3

    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_8e

    .line 171
    :cond_aa
    invoke-static {v5}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    const/4 p0, 0x0

    .line 175
    throw p0

    .line 176
    :cond_af
    :goto_af
    move p1, v6

    .line 177
    move v2, p1

    .line 178
    :goto_b1
    if-ge p1, p2, :cond_117

    .line 179
    .line 180
    aget-object v3, v1, p1

    .line 181
    .line 182
    add-int/lit8 v5, p1, 0x1

    .line 183
    .line 184
    aget-object v5, v1, v5

    .line 185
    .line 186
    sget-object v8, Lo7/v4;->b:[B

    .line 187
    .line 188
    invoke-static {v3, v8}, Lo7/v4;->a([B[B)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_d6

    .line 193
    .line 194
    aput-object v3, v1, v2

    .line 195
    .line 196
    add-int/lit8 v3, v2, 0x1

    .line 197
    .line 198
    sget-object v8, Ln7/b0;->b:Lk4/c;

    .line 199
    .line 200
    invoke-virtual {v8, v5}, Lk4/e;->c([B)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    sget-object v8, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 205
    .line 206
    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    aput-object v5, v1, v3

    .line 211
    .line 212
    :goto_d3
    add-int/lit8 v2, v2, 0x2

    .line 213
    .line 214
    goto :goto_114

    .line 215
    :cond_d6
    array-length v8, v5

    .line 216
    move v10, v6

    .line 217
    :goto_d8
    if-ge v10, v8, :cond_10d

    .line 218
    .line 219
    aget-byte v11, v5, v10

    .line 220
    .line 221
    const/16 v12, 0x20

    .line 222
    .line 223
    if-lt v11, v12, :cond_e8

    .line 224
    .line 225
    const/16 v12, 0x7e

    .line 226
    .line 227
    if-le v11, v12, :cond_e5

    .line 228
    .line 229
    goto :goto_e8

    .line 230
    :cond_e5
    add-int/lit8 v10, v10, 0x1

    .line 231
    .line 232
    goto :goto_d8

    .line 233
    :cond_e8
    :goto_e8
    new-instance v8, Ljava/lang/String;

    .line 234
    .line 235
    sget-object v10, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 236
    .line 237
    invoke-direct {v8, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 238
    .line 239
    .line 240
    sget-object v3, Lo7/v4;->a:Ljava/util/logging/Logger;

    .line 241
    .line 242
    const-string v10, "Metadata key="

    .line 243
    .line 244
    const-string v11, ", value="

    .line 245
    .line 246
    invoke-static {v10, v8, v11}, Lai/onnxruntime/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v5, " contains invalid ASCII characters"

    .line 258
    .line 259
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_114

    .line 270
    :cond_10d
    aput-object v3, v1, v2

    .line 271
    .line 272
    add-int/lit8 v3, v2, 0x1

    .line 273
    .line 274
    aput-object v5, v1, v3

    .line 275
    .line 276
    goto :goto_d3

    .line 277
    :goto_114
    add-int/lit8 p1, p1, 0x2

    .line 278
    .line 279
    goto :goto_b1

    .line 280
    :cond_117
    if-ne v2, p2, :cond_11a

    .line 281
    .line 282
    goto :goto_121

    .line 283
    :cond_11a
    invoke-static {v1, v6, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    move-object v1, p1

    .line 288
    check-cast v1, [[B

    .line 289
    .line 290
    :goto_121
    move p1, v6

    .line 291
    :goto_122
    array-length p2, v1

    .line 292
    if-ge p1, p2, :cond_14a

    .line 293
    .line 294
    aget-object p2, v1, p1

    .line 295
    .line 296
    invoke-static {p2}, Ll9/o;->g([B)Ll9/o;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    iget-object v2, p2, Ll9/o;->b:[B

    .line 301
    .line 302
    array-length v3, v2

    .line 303
    if-eqz v3, :cond_147

    .line 304
    .line 305
    aget-byte v2, v2, v6

    .line 306
    .line 307
    const/16 v3, 0x3a

    .line 308
    .line 309
    if-ne v2, v3, :cond_137

    .line 310
    .line 311
    goto :goto_147

    .line 312
    :cond_137
    add-int/lit8 v2, p1, 0x1

    .line 313
    .line 314
    aget-object v2, v1, v2

    .line 315
    .line 316
    invoke-static {v2}, Ll9/o;->g([B)Ll9/o;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    new-instance v3, Lr7/b;

    .line 321
    .line 322
    invoke-direct {v3, p2, v2}, Lr7/b;-><init>(Ll9/o;Ll9/o;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    :cond_147
    :goto_147
    add-int/lit8 p1, p1, 0x2

    .line 329
    .line 330
    goto :goto_122

    .line 331
    :cond_14a
    iput-object v9, p0, Lp7/j;->x:Ljava/util/ArrayList;

    .line 332
    .line 333
    iget-object p0, v4, Lp7/n;->v:Ln7/f1;

    .line 334
    .line 335
    if-eqz p0, :cond_15d

    .line 336
    .line 337
    iget-object p1, v0, Lp7/k;->m:Lp7/j;

    .line 338
    .line 339
    new-instance p2, Ln7/v0;

    .line 340
    .line 341
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 342
    .line 343
    .line 344
    sget-object v0, Lo7/v;->e:Lo7/v;

    .line 345
    .line 346
    invoke-virtual {p1, p0, v0, v7, p2}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_15d
    iget-object p0, v4, Lp7/n;->n:Ljava/util/HashMap;

    .line 351
    .line 352
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    iget p1, v4, Lp7/n;->C:I

    .line 357
    .line 358
    if-lt p0, p1, :cond_183

    .line 359
    .line 360
    iget-object p0, v4, Lp7/n;->D:Ljava/util/LinkedList;

    .line 361
    .line 362
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    iget-boolean p0, v4, Lp7/n;->z:Z

    .line 366
    .line 367
    if-nez p0, :cond_179

    .line 368
    .line 369
    iput-boolean v7, v4, Lp7/n;->z:Z

    .line 370
    .line 371
    iget-object p0, v4, Lp7/n;->F:Lo7/p1;

    .line 372
    .line 373
    if-eqz p0, :cond_179

    .line 374
    .line 375
    invoke-virtual {p0}, Lo7/p1;->b()V

    .line 376
    .line 377
    .line 378
    :cond_179
    iget-boolean p0, v0, Lo7/b;->d:Z

    .line 379
    .line 380
    if-eqz p0, :cond_182

    .line 381
    .line 382
    iget-object p0, v4, Lp7/n;->M:Lo7/e1;

    .line 383
    .line 384
    invoke-virtual {p0, v0, v7}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 385
    .line 386
    .line 387
    :cond_182
    return-void

    .line 388
    :cond_183
    invoke-virtual {v4, v0}, Lp7/n;->t(Lp7/k;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public static k(Lp7/j;Ll9/l;ZZ)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lp7/j;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lp7/j;->H:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1d

    .line 9
    .line 10
    iget-wide v0, p1, Ll9/l;->c:J

    .line 11
    .line 12
    long-to-int v0, v0

    .line 13
    iget-object v1, p0, Lp7/j;->y:Ll9/l;

    .line 14
    .line 15
    int-to-long v2, v0

    .line 16
    invoke-virtual {v1, p1, v2, v3}, Ll9/l;->write(Ll9/l;J)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lp7/j;->z:Z

    .line 20
    .line 21
    or-int/2addr p1, p2

    .line 22
    iput-boolean p1, p0, Lp7/j;->z:Z

    .line 23
    .line 24
    iget-boolean p1, p0, Lp7/j;->A:Z

    .line 25
    .line 26
    or-int/2addr p1, p3

    .line 27
    iput-boolean p1, p0, Lp7/j;->A:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    iget v0, p0, Lp7/j;->K:I

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq v0, v1, :cond_24

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    const-string v1, "streamId should be set"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lp7/j;->F:Lb7/p;

    .line 44
    .line 45
    iget-object p0, p0, Lp7/j;->J:Lp7/v;

    .line 46
    .line 47
    invoke-virtual {v0, p2, p0, p1, p3}, Lb7/p;->c(ZLp7/v;Ll9/l;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    .line 1
    iget v0, p0, Lp7/j;->D:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lp7/j;->D:I

    .line 5
    .line 6
    int-to-float p1, v0

    .line 7
    iget v1, p0, Lp7/j;->v:I

    .line 8
    .line 9
    int-to-float v2, v1

    .line 10
    const/high16 v3, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float/2addr v2, v3

    .line 13
    cmpg-float p1, p1, v2

    .line 14
    .line 15
    if-gtz p1, :cond_21

    .line 16
    .line 17
    sub-int/2addr v1, v0

    .line 18
    iget p1, p0, Lp7/j;->C:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    iput p1, p0, Lp7/j;->C:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lp7/j;->D:I

    .line 25
    .line 26
    iget p1, p0, Lp7/j;->K:I

    .line 27
    .line 28
    int-to-long v0, v1

    .line 29
    iget-object v2, p0, Lp7/j;->E:Lp7/d;

    .line 30
    .line 31
    invoke-virtual {v2, p1, v0, v1}, Lp7/d;->V(IJ)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public final c(Z)V
    .registers 9

    .line 1
    sget-object v3, Lo7/v;->b:Lo7/v;

    .line 2
    .line 3
    iget-boolean v0, p0, Lo7/b1;->n:Z

    .line 4
    .line 5
    move v1, v0

    .line 6
    iget-object v0, p0, Lp7/j;->G:Lp7/n;

    .line 7
    .line 8
    move v2, v1

    .line 9
    iget v1, p0, Lp7/j;->K:I

    .line 10
    .line 11
    if-nez v2, :cond_15

    .line 12
    .line 13
    sget-object v5, Lr7/a;->j:Lr7/a;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual/range {v0 .. v6}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-boolean v0, p0, Lo7/b1;->o:Z

    .line 30
    .line 31
    const-string v1, "status should have been reported on deframer closed"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lo7/b1;->l:Z

    .line 38
    .line 39
    iget-boolean v1, p0, Lo7/b1;->p:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3c

    .line 42
    .line 43
    if-eqz p1, :cond_3c

    .line 44
    .line 45
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 46
    .line 47
    const-string v1, "Encountered end-of-stream mid-frame"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Ln7/v0;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0, v1}, Lo7/b1;->h(Ln7/f1;ZLn7/v0;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    iget-object p1, p0, Lo7/b1;->m:Lm0/r0;

    .line 62
    .line 63
    if-eqz p1, :cond_46

    .line 64
    .line 65
    invoke-virtual {p1}, Lm0/r0;->run()V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lo7/b1;->m:Lm0/r0;

    .line 70
    .line 71
    :cond_46
    return-void
.end method

.method public final l(Ln7/f1;ZLn7/v0;)V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lp7/j;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp7/j;->B:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lp7/j;->H:Z

    .line 10
    .line 11
    iget-object v2, p0, Lp7/j;->G:Lp7/n;

    .line 12
    .line 13
    if-eqz v1, :cond_2f

    .line 14
    .line 15
    iget-object p2, v2, Lp7/n;->D:Ljava/util/LinkedList;

    .line 16
    .line 17
    iget-object v1, p0, Lp7/j;->L:Lp7/k;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lp7/n;->m(Lp7/k;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lp7/j;->x:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object p2, p0, Lp7/j;->y:Ll9/l;

    .line 29
    .line 30
    invoke-virtual {p2}, Ll9/l;->b()V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lp7/j;->H:Z

    .line 35
    .line 36
    if-eqz p3, :cond_26

    .line 37
    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    new-instance p3, Ln7/v0;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_2b
    invoke-virtual {p0, p1, v0, p3}, Lo7/b1;->h(Ln7/f1;ZLn7/v0;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2f
    iget v3, p0, Lp7/j;->K:I

    .line 49
    .line 50
    sget-object v5, Lo7/v;->b:Lo7/v;

    .line 51
    .line 52
    sget-object v7, Lr7/a;->j:Lr7/a;

    .line 53
    .line 54
    move-object v4, p1

    .line 55
    move v6, p2

    .line 56
    move-object v8, p3

    .line 57
    invoke-virtual/range {v2 .. v8}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final m(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ln7/f1;->e(Ljava/lang/Throwable;)Ln7/f1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ln7/v0;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Lp7/j;->l(Ln7/f1;ZLn7/v0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final n(IZLl9/l;)V
    .registers 11

    .line 1
    iget-wide v0, p3, Ll9/l;->c:J

    .line 2
    .line 3
    long-to-int v2, v0

    .line 4
    iget v3, p0, Lp7/j;->C:I

    .line 5
    .line 6
    add-int/2addr v2, p1

    .line 7
    sub-int/2addr v3, v2

    .line 8
    iput v3, p0, Lp7/j;->C:I

    .line 9
    .line 10
    iget v2, p0, Lp7/j;->D:I

    .line 11
    .line 12
    sub-int/2addr v2, p1

    .line 13
    iput v2, p0, Lp7/j;->D:I

    .line 14
    .line 15
    if-gez v3, :cond_2e

    .line 16
    .line 17
    iget p1, p0, Lp7/j;->K:I

    .line 18
    .line 19
    sget-object p2, Lr7/a;->f:Lr7/a;

    .line 20
    .line 21
    iget-object p3, p0, Lp7/j;->E:Lp7/d;

    .line 22
    .line 23
    invoke-virtual {p3, p1, p2}, Lp7/d;->S(ILr7/a;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lp7/j;->K:I

    .line 27
    .line 28
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 29
    .line 30
    const-string p2, "Received data size exceeded our receiving window size"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    iget-object v0, p0, Lp7/j;->G:Lp7/n;

    .line 39
    .line 40
    sget-object v3, Lo7/v;->b:Lo7/v;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual/range {v0 .. v6}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance p1, Lp7/r;

    .line 48
    .line 49
    invoke-direct {p1, p3}, Lp7/r;-><init>(Ll9/l;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lo7/b1;->q:Ln7/f1;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_73

    .line 56
    .line 57
    iget-object v0, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    sget-object v1, Lo7/k3;->a:Lo7/j3;

    .line 60
    .line 61
    const-string v1, "charset"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-wide v4, p3, Ll9/l;->c:J

    .line 67
    .line 68
    long-to-int p3, v4

    .line 69
    new-array v1, p3, [B

    .line 70
    .line 71
    invoke-virtual {p1, v1, v3, p3}, Lp7/r;->d0([BII)V

    .line 72
    .line 73
    .line 74
    new-instance p3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p3, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "DATA-----------------------------\n"

    .line 80
    .line 81
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {v2, p3}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    iput-object p3, p0, Lo7/b1;->q:Ln7/f1;

    .line 90
    .line 91
    invoke-virtual {p1}, Lp7/r;->close()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 95
    .line 96
    iget-object p1, p1, Ln7/f1;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/16 p3, 0x3e8

    .line 103
    .line 104
    if-gt p1, p3, :cond_6b

    .line 105
    .line 106
    if-eqz p2, :cond_f0

    .line 107
    .line 108
    :cond_6b
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 109
    .line 110
    iget-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 111
    .line 112
    invoke-virtual {p0, p1, v3, p2}, Lp7/j;->l(Ln7/f1;ZLn7/v0;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_73
    iget-boolean p3, p0, Lo7/b1;->t:Z

    .line 117
    .line 118
    if-nez p3, :cond_88

    .line 119
    .line 120
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 121
    .line 122
    const-string p2, "headers not received before payload"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p2, Ln7/v0;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, v3, p2}, Lp7/j;->l(Ln7/f1;ZLn7/v0;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_88
    long-to-int p3, v0

    .line 138
    const/4 v1, 0x1

    .line 139
    :try_start_8a
    iget-boolean v0, p0, Lo7/b1;->o:Z

    .line 140
    .line 141
    if-eqz v0, :cond_9f

    .line 142
    .line 143
    sget-object v0, Lo7/b;->h:Ljava/util/logging/Logger;

    .line 144
    .line 145
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 146
    .line 147
    const-string v4, "Received data on closed stream"

    .line 148
    .line 149
    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_9b

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lp7/r;->close()V

    .line 153
    .line 154
    .line 155
    goto :goto_cb

    .line 156
    :catchall_9b
    move-exception v0

    .line 157
    move-object p2, v0

    .line 158
    move v3, v1

    .line 159
    goto :goto_f3

    .line 160
    :cond_9f
    :try_start_9f
    iget-object v0, p0, Lo7/b1;->a:Lo7/q2;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_c7

    .line 163
    .line 164
    .line 165
    :try_start_a4
    invoke-virtual {v0}, Lo7/q2;->isClosed()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_bd

    .line 170
    .line 171
    iget-boolean v2, v0, Lo7/q2;->r:Z

    .line 172
    .line 173
    if-eqz v2, :cond_af

    .line 174
    .line 175
    goto :goto_bd

    .line 176
    :cond_af
    iget-object v2, v0, Lo7/q2;->m:Lo7/b0;

    .line 177
    .line 178
    invoke-virtual {v2, p1}, Lo7/b0;->i0(Lo7/c;)V
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_bb

    .line 179
    .line 180
    .line 181
    :try_start_b4
    invoke-virtual {v0}, Lo7/q2;->b()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    .line 182
    .line 183
    .line 184
    goto :goto_cb

    .line 185
    :catchall_b8
    move-exception v0

    .line 186
    move v1, v3

    .line 187
    goto :goto_c1

    .line 188
    :catchall_bb
    move-exception v0

    .line 189
    goto :goto_c1

    .line 190
    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-virtual {p1}, Lp7/r;->close()V

    .line 191
    .line 192
    .line 193
    goto :goto_cb

    .line 194
    :goto_c1
    if-eqz v1, :cond_c6

    .line 195
    .line 196
    invoke-virtual {p1}, Lp7/r;->close()V

    .line 197
    .line 198
    .line 199
    :cond_c6
    throw v0
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_c7

    .line 200
    :catchall_c7
    move-exception v0

    .line 201
    :try_start_c8
    invoke-virtual {p0, v0}, Lp7/j;->m(Ljava/lang/Throwable;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_f1

    .line 202
    .line 203
    .line 204
    :goto_cb
    if-eqz p2, :cond_f0

    .line 205
    .line 206
    if-lez p3, :cond_da

    .line 207
    .line 208
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 209
    .line 210
    const-string p2, "Received unexpected EOS on non-empty DATA frame from server"

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 217
    .line 218
    goto :goto_e4

    .line 219
    :cond_da
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 220
    .line 221
    const-string p2, "Received unexpected EOS on empty DATA frame from server"

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 228
    .line 229
    :goto_e4
    new-instance p1, Ln7/v0;

    .line 230
    .line 231
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object p1, p0, Lo7/b1;->r:Ln7/v0;

    .line 235
    .line 236
    iget-object p2, p0, Lo7/b1;->q:Ln7/f1;

    .line 237
    .line 238
    invoke-virtual {p0, p2, v3, p1}, Lo7/b1;->h(Ln7/f1;ZLn7/v0;)V

    .line 239
    .line 240
    .line 241
    :cond_f0
    return-void

    .line 242
    :catchall_f1
    move-exception v0

    .line 243
    move-object p2, v0

    .line 244
    :goto_f3
    if-eqz v3, :cond_f8

    .line 245
    .line 246
    invoke-virtual {p1}, Lp7/r;->close()V

    .line 247
    .line 248
    .line 249
    :cond_f8
    throw p2
.end method

.method public final o(Ljava/util/ArrayList;Z)V
    .registers 8

    .line 1
    sget-object v0, Lo7/b1;->u:Ln7/t0;

    .line 2
    .line 3
    if-eqz p2, :cond_bb

    .line 4
    .line 5
    invoke-static {p1}, Lp7/w;->a(Ljava/util/ArrayList;)[[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ln7/v0;

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    div-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput v1, p2, Ln7/v0;->b:I

    .line 18
    .line 19
    iput-object p1, p2, Ln7/v0;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 22
    .line 23
    if-nez p1, :cond_26

    .line 24
    .line 25
    iget-boolean p1, p0, Lo7/b1;->t:Z

    .line 26
    .line 27
    if-nez p1, :cond_26

    .line 28
    .line 29
    invoke-static {p2}, Lo7/b1;->i(Ln7/v0;)Ln7/f1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 34
    .line 35
    if-eqz p1, :cond_26

    .line 36
    .line 37
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 38
    .line 39
    :cond_26
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_45

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "trailers: "

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 63
    .line 64
    iget-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v1, p2}, Lp7/j;->l(Ln7/f1;ZLn7/v0;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_45
    sget-object p1, Ln7/c0;->b:Ln7/t0;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ln7/f1;

    .line 77
    .line 78
    if-eqz v2, :cond_5c

    .line 79
    .line 80
    sget-object v3, Ln7/c0;->a:Ln7/t0;

    .line 81
    .line 82
    invoke-virtual {p2, v3}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    goto :goto_88

    .line 93
    :cond_5c
    iget-boolean v2, p0, Lo7/b1;->t:Z

    .line 94
    .line 95
    if-eqz v2, :cond_69

    .line 96
    .line 97
    sget-object v2, Ln7/f1;->g:Ln7/f1;

    .line 98
    .line 99
    const-string v3, "missing GRPC status in response"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_88

    .line 106
    :cond_69
    invoke-virtual {p2, v0}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Integer;

    .line 111
    .line 112
    if-eqz v2, :cond_7a

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Lo7/y0;->g(I)Ln7/f1;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_82

    .line 123
    :cond_7a
    sget-object v2, Ln7/f1;->l:Ln7/f1;

    .line 124
    .line 125
    const-string v3, "missing HTTP status code"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_82
    const-string v3, "missing GRPC status, inferred error from HTTP status code"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_88
    invoke-virtual {p2, v0}, Ln7/v0;->a(Ln7/s0;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Ln7/v0;->a(Ln7/s0;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Ln7/c0;->a:Ln7/t0;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ln7/v0;->a(Ln7/s0;)V

    .line 146
    .line 147
    .line 148
    iget-boolean p1, p0, Lo7/b1;->o:Z

    .line 149
    .line 150
    if-eqz p1, :cond_a5

    .line 151
    .line 152
    sget-object p1, Lo7/b;->h:Ljava/util/logging/Logger;

    .line 153
    .line 154
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 155
    .line 156
    const-string v1, "Received trailers on closed stream:\n {1}\n {2}"

    .line 157
    .line 158
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a5
    iget-object p1, p0, Lo7/b1;->h:Lo7/t4;

    .line 167
    .line 168
    iget-object p1, p1, Lo7/t4;->a:[Ln7/e;

    .line 169
    .line 170
    array-length v0, p1

    .line 171
    move v3, v1

    .line 172
    :goto_ab
    if-ge v3, v0, :cond_b5

    .line 173
    .line 174
    aget-object v4, p1, v3

    .line 175
    .line 176
    invoke-virtual {v4, p2}, Ln7/e;->j(Ln7/v0;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v3, v3, 0x1

    .line 180
    .line 181
    goto :goto_ab

    .line 182
    :cond_b5
    sget-object p1, Lo7/v;->b:Lo7/v;

    .line 183
    .line 184
    invoke-virtual {p0, v2, p1, v1, p2}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_bb
    invoke-static {p1}, Lp7/w;->a(Ljava/util/ArrayList;)[[B

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance p2, Ln7/v0;

    .line 193
    .line 194
    array-length v1, p1

    .line 195
    div-int/lit8 v1, v1, 0x2

    .line 196
    .line 197
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    iput v1, p2, Ln7/v0;->b:I

    .line 201
    .line 202
    iput-object p1, p2, Ln7/v0;->a:[Ljava/lang/Object;

    .line 203
    .line 204
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 205
    .line 206
    const-string v1, "headers: "

    .line 207
    .line 208
    if-eqz p1, :cond_e4

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 227
    .line 228
    return-void

    .line 229
    :cond_e4
    :try_start_e4
    iget-boolean p1, p0, Lo7/b1;->t:Z

    .line 230
    .line 231
    if-eqz p1, :cond_110

    .line 232
    .line 233
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 234
    .line 235
    const-string v0, "Received headers twice"

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;
    :try_end_f2
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_10d

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 260
    .line 261
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 262
    .line 263
    invoke-static {p2}, Lo7/b1;->d(Ln7/v0;)Ljava/nio/charset/Charset;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 268
    .line 269
    return-void

    .line 270
    :catchall_10d
    move-exception p1

    .line 271
    goto/16 :goto_19c

    .line 272
    .line 273
    :cond_110
    :try_start_110
    invoke-virtual {p2, v0}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/lang/Integer;

    .line 278
    .line 279
    if-eqz p1, :cond_147

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    const/16 v3, 0x64

    .line 286
    .line 287
    if-lt v2, v3, :cond_147

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result p1
    :try_end_124
    .catchall {:try_start_110 .. :try_end_124} :catchall_10d

    .line 293
    const/16 v2, 0xc8

    .line 294
    .line 295
    if-ge p1, v2, :cond_147

    .line 296
    .line 297
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 298
    .line 299
    if-eqz p1, :cond_19b

    .line 300
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 318
    .line 319
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 320
    .line 321
    invoke-static {p2}, Lo7/b1;->d(Ln7/v0;)Ljava/nio/charset/Charset;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 326
    .line 327
    return-void

    .line 328
    :cond_147
    const/4 p1, 0x1

    .line 329
    :try_start_148
    iput-boolean p1, p0, Lo7/b1;->t:Z

    .line 330
    .line 331
    invoke-static {p2}, Lo7/b1;->i(Ln7/v0;)Ln7/f1;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;
    :try_end_150
    .catchall {:try_start_148 .. :try_end_150} :catchall_10d

    .line 336
    .line 337
    if-eqz p1, :cond_16d

    .line 338
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 356
    .line 357
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 358
    .line 359
    invoke-static {p2}, Lo7/b1;->d(Ln7/v0;)Ljava/nio/charset/Charset;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iput-object p1, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 364
    .line 365
    return-void

    .line 366
    :cond_16d
    :try_start_16d
    invoke-virtual {p2, v0}, Ln7/v0;->a(Ln7/s0;)V

    .line 367
    .line 368
    .line 369
    sget-object p1, Ln7/c0;->b:Ln7/t0;

    .line 370
    .line 371
    invoke-virtual {p2, p1}, Ln7/v0;->a(Ln7/s0;)V

    .line 372
    .line 373
    .line 374
    sget-object p1, Ln7/c0;->a:Ln7/t0;

    .line 375
    .line 376
    invoke-virtual {p2, p1}, Ln7/v0;->a(Ln7/s0;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, p2}, Lo7/b1;->e(Ln7/v0;)V
    :try_end_17d
    .catchall {:try_start_16d .. :try_end_17d} :catchall_10d

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 383
    .line 384
    if-eqz p1, :cond_19b

    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iput-object p1, p0, Lo7/b1;->q:Ln7/f1;

    .line 403
    .line 404
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 405
    .line 406
    invoke-static {p2}, Lo7/b1;->d(Ln7/v0;)Ljava/nio/charset/Charset;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    iput-object p1, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 411
    .line 412
    :cond_19b
    return-void

    .line 413
    :goto_19c
    iget-object v0, p0, Lo7/b1;->q:Ln7/f1;

    .line 414
    .line 415
    if-eqz v0, :cond_1ba

    .line 416
    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    iput-object v0, p0, Lo7/b1;->q:Ln7/f1;

    .line 434
    .line 435
    iput-object p2, p0, Lo7/b1;->r:Ln7/v0;

    .line 436
    .line 437
    invoke-static {p2}, Lo7/b1;->d(Ln7/v0;)Ljava/nio/charset/Charset;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    iput-object p2, p0, Lo7/b1;->s:Ljava/nio/charset/Charset;

    .line 442
    .line 443
    :cond_1ba
    throw p1
.end method
