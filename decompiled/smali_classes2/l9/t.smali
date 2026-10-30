.class public final Ll9/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/g0;


# instance fields
.field public b:B

.field public final c:Ll9/a0;

.field public final d:Ljava/util/zip/Inflater;

.field public final e:Ll9/u;

.field public final f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ll9/g0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ll9/a0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ll9/t;->c:Ll9/a0;

    .line 13
    .line 14
    new-instance p1, Ljava/util/zip/Inflater;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ll9/t;->d:Ljava/util/zip/Inflater;

    .line 21
    .line 22
    new-instance v1, Ll9/u;

    .line 23
    .line 24
    invoke-direct {v1, v0, p1}, Ll9/u;-><init>(Ll9/a0;Ljava/util/zip/Inflater;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Ll9/t;->e:Ll9/u;

    .line 28
    .line 29
    new-instance p1, Ljava/util/zip/CRC32;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Ll9/t;->f:Ljava/util/zip/CRC32;

    .line 35
    .line 36
    return-void
.end method

.method public static b(IILjava/lang/String;)V
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x3

    .line 19
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 24
    .line 25
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method


# virtual methods
.method public final c(JLl9/l;J)V
    .locals 4

    .line 1
    iget-object p3, p3, Ll9/l;->b:Ll9/b0;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :goto_0
    iget v0, p3, Ll9/b0;->c:I

    .line 7
    .line 8
    iget v1, p3, Ll9/b0;->b:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v2, p1, v2

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    sub-long/2addr p1, v0

    .line 20
    iget-object p3, p3, Ll9/b0;->f:Ll9/b0;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p4, v0

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget v2, p3, Ll9/b0;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v2, p1

    .line 36
    long-to-int p1, v2

    .line 37
    iget p2, p3, Ll9/b0;->c:I

    .line 38
    .line 39
    sub-int/2addr p2, p1

    .line 40
    int-to-long v2, p2

    .line 41
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int p2, v2

    .line 46
    iget-object v2, p0, Ll9/t;->f:Ljava/util/zip/CRC32;

    .line 47
    .line 48
    iget-object v3, p3, Ll9/b0;->a:[B

    .line 49
    .line 50
    invoke-virtual {v2, v3, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    .line 52
    .line 53
    int-to-long p1, p2

    .line 54
    sub-long/2addr p4, p1

    .line 55
    iget-object p3, p3, Ll9/b0;->f:Ll9/b0;

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-wide p1, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/t;->e:Ll9/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/u;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(Ll9/l;J)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-wide/from16 v7, p2

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    cmp-long v3, v7, v1

    .line 13
    .line 14
    if-ltz v3, :cond_12

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-wide v1

    .line 19
    :cond_0
    iget-byte v1, v0, Ll9/t;->b:B

    .line 20
    .line 21
    iget-object v9, v0, Ll9/t;->f:Ljava/util/zip/CRC32;

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    iget-object v11, v0, Ll9/t;->c:Ll9/a0;

    .line 25
    .line 26
    const-wide/16 v17, -0x1

    .line 27
    .line 28
    if-nez v1, :cond_d

    .line 29
    .line 30
    const-wide/16 v1, 0xa

    .line 31
    .line 32
    invoke-virtual {v11, v1, v2}, Ll9/a0;->Y(J)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v11, Ll9/a0;->c:Ll9/l;

    .line 36
    .line 37
    const-wide/16 v1, 0x3

    .line 38
    .line 39
    invoke-virtual {v3, v1, v2}, Ll9/l;->V(J)B

    .line 40
    .line 41
    .line 42
    move-result v19

    .line 43
    shr-int/lit8 v1, v19, 0x1

    .line 44
    .line 45
    and-int/2addr v1, v10

    .line 46
    if-ne v1, v10, :cond_1

    .line 47
    .line 48
    move/from16 v20, v10

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    move/from16 v20, v1

    .line 53
    .line 54
    :goto_0
    if-eqz v20, :cond_2

    .line 55
    .line 56
    const-wide/16 v1, 0x0

    .line 57
    .line 58
    const-wide/16 v4, 0xa

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v11}, Ll9/a0;->readShort()S

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string v1, "ID1ID2"

    .line 68
    .line 69
    const/16 v2, 0x1f8b

    .line 70
    .line 71
    invoke-static {v2, v0, v1}, Ll9/t;->b(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x8

    .line 75
    .line 76
    invoke-virtual {v11, v0, v1}, Ll9/a0;->skip(J)V

    .line 77
    .line 78
    .line 79
    shr-int/lit8 v0, v19, 0x2

    .line 80
    .line 81
    and-int/2addr v0, v10

    .line 82
    const v21, 0xff00

    .line 83
    .line 84
    .line 85
    const-wide/16 v12, 0x2

    .line 86
    .line 87
    if-ne v0, v10, :cond_5

    .line 88
    .line 89
    invoke-virtual {v11, v12, v13}, Ll9/a0;->Y(J)V

    .line 90
    .line 91
    .line 92
    if-eqz v20, :cond_3

    .line 93
    .line 94
    const-wide/16 v1, 0x0

    .line 95
    .line 96
    const-wide/16 v4, 0x2

    .line 97
    .line 98
    move-object/from16 v0, p0

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v3}, Ll9/l;->readShort()S

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    and-int v1, v0, v21

    .line 108
    .line 109
    ushr-int/lit8 v1, v1, 0x8

    .line 110
    .line 111
    and-int/lit16 v0, v0, 0xff

    .line 112
    .line 113
    shl-int/lit8 v0, v0, 0x8

    .line 114
    .line 115
    or-int/2addr v0, v1

    .line 116
    int-to-short v0, v0

    .line 117
    const v1, 0xffff

    .line 118
    .line 119
    .line 120
    and-int/2addr v0, v1

    .line 121
    int-to-long v4, v0

    .line 122
    invoke-virtual {v11, v4, v5}, Ll9/a0;->Y(J)V

    .line 123
    .line 124
    .line 125
    if-eqz v20, :cond_4

    .line 126
    .line 127
    const-wide/16 v1, 0x0

    .line 128
    .line 129
    move-object/from16 v0, p0

    .line 130
    .line 131
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {v11, v4, v5}, Ll9/a0;->skip(J)V

    .line 135
    .line 136
    .line 137
    :cond_5
    shr-int/lit8 v0, v19, 0x3

    .line 138
    .line 139
    and-int/2addr v0, v10

    .line 140
    const-wide/16 v22, 0x1

    .line 141
    .line 142
    if-ne v0, v10, :cond_8

    .line 143
    .line 144
    move-wide v0, v12

    .line 145
    const-wide/16 v12, 0x0

    .line 146
    .line 147
    const-wide v14, 0x7fffffffffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    const/16 v16, 0x0

    .line 153
    .line 154
    invoke-virtual/range {v11 .. v16}, Ll9/a0;->b(JJB)J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    cmp-long v2, v12, v17

    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    if-eqz v20, :cond_6

    .line 163
    .line 164
    move-wide v4, v0

    .line 165
    const-wide/16 v1, 0x0

    .line 166
    .line 167
    move-wide v14, v4

    .line 168
    add-long v4, v12, v22

    .line 169
    .line 170
    move-object/from16 v0, p0

    .line 171
    .line 172
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    move-wide v14, v0

    .line 177
    :goto_1
    add-long v12, v12, v22

    .line 178
    .line 179
    invoke-virtual {v11, v12, v13}, Ll9/a0;->skip(J)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_8
    move-wide v14, v12

    .line 190
    :goto_2
    shr-int/lit8 v0, v19, 0x4

    .line 191
    .line 192
    and-int/2addr v0, v10

    .line 193
    if-ne v0, v10, :cond_b

    .line 194
    .line 195
    const-wide/16 v12, 0x0

    .line 196
    .line 197
    move-wide v0, v14

    .line 198
    const-wide v14, 0x7fffffffffffffffL

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    const/16 v16, 0x0

    .line 204
    .line 205
    invoke-virtual/range {v11 .. v16}, Ll9/a0;->b(JJB)J

    .line 206
    .line 207
    .line 208
    move-result-wide v12

    .line 209
    cmp-long v2, v12, v17

    .line 210
    .line 211
    if-eqz v2, :cond_a

    .line 212
    .line 213
    move-wide v14, v0

    .line 214
    if-eqz v20, :cond_9

    .line 215
    .line 216
    const-wide/16 v1, 0x0

    .line 217
    .line 218
    add-long v4, v12, v22

    .line 219
    .line 220
    move-object/from16 v0, p0

    .line 221
    .line 222
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_9
    move-object/from16 v0, p0

    .line 227
    .line 228
    :goto_3
    add-long v12, v12, v22

    .line 229
    .line 230
    invoke-virtual {v11, v12, v13}, Ll9/a0;->skip(J)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_a
    move-object/from16 v0, p0

    .line 235
    .line 236
    new-instance v1, Ljava/io/EOFException;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 239
    .line 240
    .line 241
    throw v1

    .line 242
    :cond_b
    move-object/from16 v0, p0

    .line 243
    .line 244
    :goto_4
    if-eqz v20, :cond_c

    .line 245
    .line 246
    invoke-virtual {v11, v14, v15}, Ll9/a0;->Y(J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Ll9/l;->readShort()S

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    and-int v2, v1, v21

    .line 254
    .line 255
    ushr-int/lit8 v2, v2, 0x8

    .line 256
    .line 257
    and-int/lit16 v1, v1, 0xff

    .line 258
    .line 259
    shl-int/lit8 v1, v1, 0x8

    .line 260
    .line 261
    or-int/2addr v1, v2

    .line 262
    int-to-short v1, v1

    .line 263
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    long-to-int v2, v2

    .line 268
    int-to-short v2, v2

    .line 269
    const-string v3, "FHCRC"

    .line 270
    .line 271
    invoke-static {v1, v2, v3}, Ll9/t;->b(IILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    .line 275
    .line 276
    .line 277
    :cond_c
    iput-byte v10, v0, Ll9/t;->b:B

    .line 278
    .line 279
    :cond_d
    iget-byte v1, v0, Ll9/t;->b:B

    .line 280
    .line 281
    const/4 v12, 0x2

    .line 282
    if-ne v1, v10, :cond_f

    .line 283
    .line 284
    iget-wide v1, v6, Ll9/l;->c:J

    .line 285
    .line 286
    iget-object v3, v0, Ll9/t;->e:Ll9/u;

    .line 287
    .line 288
    invoke-virtual {v3, v6, v7, v8}, Ll9/u;->read(Ll9/l;J)J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    cmp-long v3, v4, v17

    .line 293
    .line 294
    if-eqz v3, :cond_e

    .line 295
    .line 296
    move-object v3, v6

    .line 297
    invoke-virtual/range {v0 .. v5}, Ll9/t;->c(JLl9/l;J)V

    .line 298
    .line 299
    .line 300
    return-wide v4

    .line 301
    :cond_e
    iput-byte v12, v0, Ll9/t;->b:B

    .line 302
    .line 303
    :cond_f
    iget-byte v1, v0, Ll9/t;->b:B

    .line 304
    .line 305
    if-ne v1, v12, :cond_11

    .line 306
    .line 307
    invoke-virtual {v11}, Ll9/a0;->c()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    .line 312
    .line 313
    .line 314
    move-result-wide v2

    .line 315
    long-to-int v2, v2

    .line 316
    const-string v3, "CRC"

    .line 317
    .line 318
    invoke-static {v1, v2, v3}, Ll9/t;->b(IILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11}, Ll9/a0;->c()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    iget-object v2, v0, Ll9/t;->d:Ljava/util/zip/Inflater;

    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 328
    .line 329
    .line 330
    move-result-wide v2

    .line 331
    long-to-int v2, v2

    .line 332
    const-string v3, "ISIZE"

    .line 333
    .line 334
    invoke-static {v1, v2, v3}, Ll9/t;->b(IILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 v1, 0x3

    .line 338
    iput-byte v1, v0, Ll9/t;->b:B

    .line 339
    .line 340
    invoke-virtual {v11}, Ll9/a0;->k()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_10

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_10
    const-string v1, "gzip finished without exhausting source"

    .line 348
    .line 349
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_5
    const-wide/16 v1, 0x0

    .line 353
    .line 354
    return-wide v1

    .line 355
    :cond_11
    :goto_6
    return-wide v17

    .line 356
    :cond_12
    const-string v1, "byteCount < 0: "

    .line 357
    .line 358
    invoke-static {v7, v8, v1}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto :goto_5
.end method

.method public final timeout()Ll9/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/t;->c:Ll9/a0;

    .line 2
    .line 3
    iget-object v0, v0, Ll9/a0;->b:Ll9/g0;

    .line 4
    .line 5
    invoke-interface {v0}, Ll9/g0;->timeout()Ll9/j0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
