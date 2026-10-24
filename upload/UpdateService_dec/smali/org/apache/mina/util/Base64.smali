.class public Lorg/apache/mina/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 58
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    .line 102
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    .line 104
    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    sget-object v2, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 112
    sget-object v1, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 115
    sget-object v1, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 117
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 118
    sget-object v1, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 121
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 122
    const/16 v3, 0x2f

    const/16 v4, 0x3f

    aput-byte v4, v0, v3

    .line 124
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    const/16 v5, 0x19

    if-gt v0, v5, :cond_4

    .line 125
    sget-object v5, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v6, v0, 0x41

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    .end local v0    # "i":I
    :cond_4
    const/16 v0, 0x1a

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    const/16 v6, 0x33

    if-gt v0, v6, :cond_5

    .line 129
    sget-object v6, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v5, 0x61

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 132
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_5
    const/16 v0, 0x34

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_6

    .line 133
    sget-object v6, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v5, 0x30

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 136
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_6
    sget-object v0, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    aput-byte v1, v0, v2

    .line 137
    aput-byte v3, v0, v4

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .line 349
    invoke-static {p0}, Lorg/apache/mina/util/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 352
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 353
    new-array v0, v1, [B

    return-object v0

    .line 356
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 357
    .local v0, "numberQuadruple":I
    const/4 v2, 0x0

    .line 358
    .local v2, "decodedData":[B
    const/4 v3, 0x0

    .local v3, "b1":B
    const/4 v4, 0x0

    .local v4, "b2":B
    const/4 v5, 0x0

    .local v5, "b3":B
    const/4 v6, 0x0

    .local v6, "b4":B
    const/4 v7, 0x0

    .local v7, "marker0":B
    const/4 v8, 0x0

    .line 362
    .local v8, "marker1":B
    const/4 v9, 0x0

    .line 363
    .local v9, "encodedIndex":I
    const/4 v10, 0x0

    .line 366
    .local v10, "dataIndex":I
    array-length v11, p0

    .line 368
    .local v11, "lastData":I
    :cond_1
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_2

    .line 369
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_1

    .line 370
    new-array v1, v1, [B

    return-object v1

    .line 373
    :cond_2
    sub-int v1, v11, v0

    new-array v1, v1, [B

    .line 376
    .end local v2    # "decodedData":[B
    .end local v11    # "lastData":I
    .local v1, "decodedData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 377
    mul-int/lit8 v10, v2, 0x4

    .line 378
    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    .line 379
    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    .line 381
    sget-object v11, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    .line 382
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    .line 384
    if-eq v7, v13, :cond_3

    if-eq v8, v13, :cond_3

    .line 386
    aget-byte v5, v11, v7

    .line 387
    aget-byte v6, v11, v8

    .line 389
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 390
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 391
    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    goto :goto_1

    .line 392
    :cond_3
    if-ne v7, v13, :cond_4

    .line 394
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    goto :goto_1

    .line 395
    :cond_4
    if-ne v8, v13, :cond_5

    .line 397
    sget-object v11, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 399
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 400
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 402
    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x3

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_6
    return-object v1
.end method

.method static discardNonBase64([B)[B
    .locals 5
    .param p0, "data"    # [B

    .line 447
    array-length v0, p0

    new-array v0, v0, [B

    .line 448
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 450
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 451
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/mina/util/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesCopied":I
    .local v3, "bytesCopied":I
    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    .line 450
    .end local v3    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "i":I
    :cond_1
    new-array v2, v1, [B

    .line 458
    .local v2, "packedData":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    return-object v2
.end method

.method static discardWhitespace([B)[B
    .locals 5
    .param p0, "data"    # [B

    .line 415
    array-length v0, p0

    new-array v0, v0, [B

    .line 416
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 418
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 419
    aget-byte v3, p0, v2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 426
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesCopied":I
    .local v3, "bytesCopied":I
    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    goto :goto_1

    .line 424
    .end local v3    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    :cond_0
    nop

    .line 418
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "i":I
    :cond_1
    new-array v2, v1, [B

    .line 432
    .local v2, "packedData":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    return-object v2
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .line 183
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 26
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .line 237
    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 238
    .local v1, "lengthDataBits":I
    rem-int/lit8 v3, v1, 0x18

    .line 239
    .local v3, "fewerThan24bits":I
    div-int/lit8 v4, v1, 0x18

    .line 240
    .local v4, "numberTriplets":I
    const/4 v5, 0x0

    .line 241
    .local v5, "encodedData":[B
    const/4 v6, 0x0

    .line 242
    .local v6, "encodedDataLength":I
    const/4 v7, 0x0

    .line 244
    .local v7, "nbrChunks":I
    if-eqz v3, :cond_0

    .line 246
    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x4

    .end local v6    # "encodedDataLength":I
    .local v8, "encodedDataLength":I
    goto :goto_0

    .line 249
    .end local v8    # "encodedDataLength":I
    .restart local v6    # "encodedDataLength":I
    :cond_0
    mul-int/lit8 v8, v4, 0x4

    .line 255
    .end local v6    # "encodedDataLength":I
    .restart local v8    # "encodedDataLength":I
    :goto_0
    if-eqz p1, :cond_2

    .line 257
    sget-object v9, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    array-length v9, v9

    if-nez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    int-to-float v9, v8

    const/high16 v10, 0x42980000    # 76.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    :goto_1
    move v7, v9

    .line 258
    sget-object v9, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    array-length v9, v9

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    .line 261
    :cond_2
    new-array v5, v8, [B

    .line 263
    const/4 v9, 0x0

    .local v9, "k":B
    const/4 v10, 0x0

    .local v10, "l":B
    const/4 v11, 0x0

    .local v11, "b1":B
    const/4 v12, 0x0

    .local v12, "b2":B
    const/4 v13, 0x0

    .line 265
    .local v13, "b3":B
    const/4 v14, 0x0

    .line 266
    .local v14, "encodedIndex":I
    const/4 v15, 0x0

    .line 267
    .local v15, "dataIndex":I
    const/16 v16, 0x0

    .line 268
    .local v16, "i":I
    const/16 v17, 0x4c

    .line 269
    .local v17, "nextSeparatorIndex":I
    const/16 v18, 0x0

    .line 271
    .local v18, "chunksSoFar":I
    const/16 v16, 0x0

    move/from16 v2, v16

    move/from16 v6, v17

    move/from16 v25, v18

    move/from16 v18, v1

    move/from16 v1, v25

    .end local v16    # "i":I
    .end local v17    # "nextSeparatorIndex":I
    .local v1, "chunksSoFar":I
    .local v2, "i":I
    .local v6, "nextSeparatorIndex":I
    .local v18, "lengthDataBits":I
    :goto_2
    if-ge v2, v4, :cond_8

    .line 272
    mul-int/lit8 v15, v2, 0x3

    .line 273
    aget-byte v11, v0, v15

    .line 274
    add-int/lit8 v19, v15, 0x1

    aget-byte v12, v0, v19

    .line 275
    add-int/lit8 v19, v15, 0x2

    aget-byte v13, v0, v19

    .line 277
    move/from16 v19, v4

    .end local v4    # "numberTriplets":I
    .local v19, "numberTriplets":I
    and-int/lit8 v4, v12, 0xf

    int-to-byte v10, v4

    .line 278
    and-int/lit8 v4, v11, 0x3

    int-to-byte v9, v4

    .line 280
    and-int/lit8 v4, v11, -0x80

    if-nez v4, :cond_3

    shr-int/lit8 v4, v11, 0x2

    goto :goto_3

    :cond_3
    shr-int/lit8 v4, v11, 0x2

    xor-int/lit16 v4, v4, 0xc0

    :goto_3
    int-to-byte v4, v4

    .line 281
    .local v4, "val1":B
    and-int/lit8 v20, v12, -0x80

    if-nez v20, :cond_4

    move/from16 v20, v11

    .end local v11    # "b1":B
    .local v20, "b1":B
    shr-int/lit8 v11, v12, 0x4

    goto :goto_4

    .end local v20    # "b1":B
    .restart local v11    # "b1":B
    :cond_4
    move/from16 v20, v11

    .end local v11    # "b1":B
    .restart local v20    # "b1":B
    shr-int/lit8 v11, v12, 0x4

    xor-int/lit16 v11, v11, 0xf0

    :goto_4
    int-to-byte v11, v11

    .line 282
    .local v11, "val2":B
    and-int/lit8 v21, v13, -0x80

    if-nez v21, :cond_5

    move/from16 v21, v12

    .end local v12    # "b2":B
    .local v21, "b2":B
    shr-int/lit8 v12, v13, 0x6

    goto :goto_5

    .end local v21    # "b2":B
    .restart local v12    # "b2":B
    :cond_5
    move/from16 v21, v12

    .end local v12    # "b2":B
    .restart local v21    # "b2":B
    shr-int/lit8 v12, v13, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_5
    int-to-byte v12, v12

    .line 284
    .local v12, "val3":B
    sget-object v22, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v22, v4

    aput-byte v23, v5, v14

    .line 285
    add-int/lit8 v23, v14, 0x1

    shl-int/lit8 v24, v9, 0x4

    or-int v24, v11, v24

    aget-byte v24, v22, v24

    aput-byte v24, v5, v23

    .line 286
    add-int/lit8 v23, v14, 0x2

    shl-int/lit8 v24, v10, 0x2

    or-int v24, v24, v12

    aget-byte v24, v22, v24

    aput-byte v24, v5, v23

    .line 287
    add-int/lit8 v23, v14, 0x3

    and-int/lit8 v24, v13, 0x3f

    aget-byte v22, v22, v24

    aput-byte v22, v5, v23

    .line 289
    add-int/lit8 v14, v14, 0x4

    .line 292
    if-eqz p1, :cond_7

    .line 294
    if-ne v14, v6, :cond_6

    .line 295
    move/from16 v22, v4

    .end local v4    # "val1":B
    .local v22, "val1":B
    sget-object v4, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    move/from16 v23, v6

    .end local v6    # "nextSeparatorIndex":I
    .local v23, "nextSeparatorIndex":I
    array-length v6, v4

    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "k":B
    .local v24, "k":B
    invoke-static {v4, v9, v5, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    .line 297
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x4c

    sget-object v6, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    array-length v9, v6

    mul-int/2addr v9, v1

    add-int/2addr v4, v9

    .line 298
    .end local v23    # "nextSeparatorIndex":I
    .local v4, "nextSeparatorIndex":I
    array-length v6, v6

    add-int/2addr v14, v6

    move v6, v4

    goto :goto_7

    .line 294
    .end local v22    # "val1":B
    .end local v24    # "k":B
    .local v4, "val1":B
    .restart local v6    # "nextSeparatorIndex":I
    .restart local v9    # "k":B
    :cond_6
    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v9

    .end local v4    # "val1":B
    .end local v6    # "nextSeparatorIndex":I
    .end local v9    # "k":B
    .restart local v22    # "val1":B
    .restart local v23    # "nextSeparatorIndex":I
    .restart local v24    # "k":B
    goto :goto_6

    .line 292
    .end local v22    # "val1":B
    .end local v23    # "nextSeparatorIndex":I
    .end local v24    # "k":B
    .restart local v4    # "val1":B
    .restart local v6    # "nextSeparatorIndex":I
    .restart local v9    # "k":B
    :cond_7
    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v9

    .line 271
    .end local v4    # "val1":B
    .end local v6    # "nextSeparatorIndex":I
    .end local v9    # "k":B
    .end local v11    # "val2":B
    .end local v12    # "val3":B
    .restart local v23    # "nextSeparatorIndex":I
    .restart local v24    # "k":B
    :goto_6
    move/from16 v6, v23

    .end local v23    # "nextSeparatorIndex":I
    .restart local v6    # "nextSeparatorIndex":I
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v9, v24

    goto/16 :goto_2

    .line 304
    .end local v19    # "numberTriplets":I
    .end local v20    # "b1":B
    .end local v21    # "b2":B
    .end local v24    # "k":B
    .local v4, "numberTriplets":I
    .restart local v9    # "k":B
    .local v11, "b1":B
    .local v12, "b2":B
    :cond_8
    move/from16 v19, v4

    move/from16 v23, v6

    .end local v4    # "numberTriplets":I
    .end local v6    # "nextSeparatorIndex":I
    .restart local v19    # "numberTriplets":I
    .restart local v23    # "nextSeparatorIndex":I
    mul-int/lit8 v4, v2, 0x3

    .line 306
    .end local v15    # "dataIndex":I
    .local v4, "dataIndex":I
    const/16 v6, 0x3d

    const/16 v15, 0x8

    if-ne v3, v15, :cond_a

    .line 307
    aget-byte v11, v0, v4

    .line 308
    and-int/lit8 v15, v11, 0x3

    int-to-byte v9, v15

    .line 309
    and-int/lit8 v15, v11, -0x80

    if-nez v15, :cond_9

    shr-int/lit8 v15, v11, 0x2

    goto :goto_8

    :cond_9
    shr-int/lit8 v15, v11, 0x2

    xor-int/lit16 v15, v15, 0xc0

    :goto_8
    int-to-byte v15, v15

    .line 310
    .local v15, "val1":B
    sget-object v16, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    aget-byte v20, v16, v15

    aput-byte v20, v5, v14

    .line 311
    add-int/lit8 v20, v14, 0x1

    shl-int/lit8 v21, v9, 0x4

    aget-byte v16, v16, v21

    aput-byte v16, v5, v20

    .line 312
    add-int/lit8 v16, v14, 0x2

    aput-byte v6, v5, v16

    .line 313
    add-int/lit8 v16, v14, 0x3

    aput-byte v6, v5, v16

    .end local v15    # "val1":B
    goto :goto_b

    .line 314
    :cond_a
    const/16 v15, 0x10

    if-ne v3, v15, :cond_d

    .line 316
    aget-byte v11, v0, v4

    .line 317
    add-int/lit8 v15, v4, 0x1

    aget-byte v12, v0, v15

    .line 318
    and-int/lit8 v15, v12, 0xf

    int-to-byte v10, v15

    .line 319
    and-int/lit8 v15, v11, 0x3

    int-to-byte v9, v15

    .line 321
    and-int/lit8 v15, v11, -0x80

    if-nez v15, :cond_b

    shr-int/lit8 v15, v11, 0x2

    goto :goto_9

    :cond_b
    shr-int/lit8 v15, v11, 0x2

    xor-int/lit16 v15, v15, 0xc0

    :goto_9
    int-to-byte v15, v15

    .line 322
    .restart local v15    # "val1":B
    and-int/lit8 v16, v12, -0x80

    shr-int/lit8 v6, v12, 0x4

    if-nez v16, :cond_c

    goto :goto_a

    :cond_c
    xor-int/lit16 v6, v6, 0xf0

    :goto_a
    int-to-byte v6, v6

    .line 324
    .local v6, "val2":B
    sget-object v20, Lorg/apache/mina/util/Base64;->lookUpBase64Alphabet:[B

    aget-byte v21, v20, v15

    aput-byte v21, v5, v14

    .line 325
    add-int/lit8 v21, v14, 0x1

    shl-int/lit8 v22, v9, 0x4

    or-int v22, v6, v22

    aget-byte v22, v20, v22

    aput-byte v22, v5, v21

    .line 326
    add-int/lit8 v21, v14, 0x2

    shl-int/lit8 v22, v10, 0x2

    aget-byte v20, v20, v22

    aput-byte v20, v5, v21

    .line 327
    add-int/lit8 v20, v14, 0x3

    const/16 v16, 0x3d

    aput-byte v16, v5, v20

    goto :goto_c

    .line 314
    .end local v6    # "val2":B
    .end local v15    # "val1":B
    :cond_d
    :goto_b
    nop

    .line 330
    :goto_c
    if-eqz p1, :cond_f

    .line 332
    if-ge v1, v7, :cond_e

    .line 333
    sget-object v6, Lorg/apache/mina/util/Base64;->CHUNK_SEPARATOR:[B

    array-length v15, v6

    sub-int v15, v8, v15

    array-length v0, v6

    move/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "chunksSoFar":I
    .local v16, "chunksSoFar":I
    invoke-static {v6, v1, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    .line 332
    .end local v16    # "chunksSoFar":I
    .restart local v1    # "chunksSoFar":I
    :cond_e
    move/from16 v16, v1

    .end local v1    # "chunksSoFar":I
    .restart local v16    # "chunksSoFar":I
    goto :goto_d

    .line 330
    .end local v16    # "chunksSoFar":I
    .restart local v1    # "chunksSoFar":I
    :cond_f
    move/from16 v16, v1

    .line 338
    .end local v1    # "chunksSoFar":I
    .restart local v16    # "chunksSoFar":I
    :goto_d
    return-object v5
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .line 194
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/mina/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 4
    .param p0, "arrayOctect"    # [B

    .line 160
    invoke-static {p0}, Lorg/apache/mina/util/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 162
    array-length v0, p0

    .line 163
    .local v0, "length":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 168
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/mina/util/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    const/4 v1, 0x0

    return v1

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .line 141
    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_0

    .line 142
    return v0

    .line 143
    :cond_0
    sget-object v1, Lorg/apache/mina/util/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_1
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 210
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 213
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .line 224
    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 478
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 481
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/Base64;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 479
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .line 492
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/mina/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
