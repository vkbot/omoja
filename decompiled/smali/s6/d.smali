.class public abstract Ls6/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ls6/d;->a:[C

    .line 8
    .line 9
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ls6/d;->b:[C

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 20
    .line 21
    sput-object v0, Ls6/d;->c:[Ljava/math/BigInteger;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    const-wide/16 v1, 0x384

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    :goto_0
    sget-object v2, Ls6/d;->c:[Ljava/math/BigInteger;

    .line 39
    .line 40
    array-length v3, v2

    .line 41
    if-ge v0, v3, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v0, -0x1

    .line 44
    .line 45
    aget-object v3, v2, v3

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public static a([II)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    if-ge v2, p1, :cond_0

    .line 7
    .line 8
    sub-int v4, p1, v2

    .line 9
    .line 10
    sub-int/2addr v4, v3

    .line 11
    sget-object v3, Ls6/d;->c:[Ljava/math/BigInteger;

    .line 12
    .line 13
    aget-object v3, v3, v4

    .line 14
    .line 15
    aget v4, p0, v2

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x31

    .line 42
    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method public static b([IILjava/lang/StringBuilder;)I
    .locals 8

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :cond_0
    :goto_0
    aget v4, p0, v1

    .line 9
    .line 10
    if-ge p1, v4, :cond_5

    .line 11
    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    add-int/lit8 v5, p1, 0x1

    .line 15
    .line 16
    aget v6, p0, p1

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-ne v5, v4, :cond_1

    .line 20
    .line 21
    move v2, v7

    .line 22
    :cond_1
    const/16 v4, 0x384

    .line 23
    .line 24
    if-ge v6, v4, :cond_2

    .line 25
    .line 26
    aput v6, v0, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    :goto_1
    move p1, v5

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    if-eq v6, v4, :cond_3

    .line 33
    .line 34
    const/16 v4, 0x385

    .line 35
    .line 36
    if-eq v6, v4, :cond_3

    .line 37
    .line 38
    const/16 v4, 0x3a0

    .line 39
    .line 40
    if-eq v6, v4, :cond_3

    .line 41
    .line 42
    packed-switch v6, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :pswitch_0
    move v2, v7

    .line 47
    :goto_2
    rem-int/lit8 v4, v3, 0xf

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const/16 v4, 0x386

    .line 52
    .line 53
    if-eq v6, v4, :cond_4

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    :cond_4
    if-lez v3, :cond_0

    .line 58
    .line 59
    invoke-static {v0, v3}, Ls6/d;->a([II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move v3, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    return p1

    .line 69
    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([IILjava/lang/StringBuilder;)I
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p0, v1

    .line 5
    .line 6
    sub-int v2, v2, p1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    shl-int/2addr v2, v3

    .line 10
    new-array v4, v2, [I

    .line 11
    .line 12
    new-array v2, v2, [I

    .line 13
    .line 14
    move/from16 v5, p1

    .line 15
    .line 16
    move v6, v1

    .line 17
    move v7, v6

    .line 18
    :goto_0
    aget v8, p0, v1

    .line 19
    .line 20
    const/16 v9, 0x391

    .line 21
    .line 22
    const/16 v10, 0x384

    .line 23
    .line 24
    if-ge v5, v8, :cond_3

    .line 25
    .line 26
    if-nez v6, :cond_3

    .line 27
    .line 28
    add-int/lit8 v8, v5, 0x1

    .line 29
    .line 30
    aget v11, p0, v5

    .line 31
    .line 32
    if-ge v11, v10, :cond_0

    .line 33
    .line 34
    div-int/lit8 v5, v11, 0x1e

    .line 35
    .line 36
    aput v5, v4, v7

    .line 37
    .line 38
    add-int/lit8 v5, v7, 0x1

    .line 39
    .line 40
    rem-int/lit8 v11, v11, 0x1e

    .line 41
    .line 42
    aput v11, v4, v5

    .line 43
    .line 44
    add-int/lit8 v7, v7, 0x2

    .line 45
    .line 46
    :goto_1
    move v5, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-eq v11, v9, :cond_2

    .line 49
    .line 50
    const/16 v9, 0x3a0

    .line 51
    .line 52
    if-eq v11, v9, :cond_1

    .line 53
    .line 54
    packed-switch v11, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    packed-switch v11, :pswitch_data_1

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    add-int/lit8 v5, v7, 0x1

    .line 62
    .line 63
    aput v10, v4, v7

    .line 64
    .line 65
    move v7, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :pswitch_1
    move v6, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    aput v9, v4, v7

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x2

    .line 72
    .line 73
    aget v8, p0, v8

    .line 74
    .line 75
    aput v8, v2, v7

    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v6, v1

    .line 81
    move v8, v3

    .line 82
    move v11, v8

    .line 83
    :goto_2
    if-ge v6, v7, :cond_1a

    .line 84
    .line 85
    aget v12, v4, v6

    .line 86
    .line 87
    invoke-static {v8}, Lcom/bumptech/glide/g;->c(I)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const/4 v14, 0x3

    .line 92
    const/4 v15, 0x2

    .line 93
    const/16 v16, 0x6

    .line 94
    .line 95
    const/16 v17, 0x20

    .line 96
    .line 97
    if-eqz v13, :cond_15

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    if-eq v13, v3, :cond_12

    .line 101
    .line 102
    const/4 v3, 0x4

    .line 103
    if-eq v13, v15, :cond_f

    .line 104
    .line 105
    sget-object v15, Ls6/d;->a:[C

    .line 106
    .line 107
    const/16 v9, 0x1d

    .line 108
    .line 109
    if-eq v13, v14, :cond_c

    .line 110
    .line 111
    if-eq v13, v3, :cond_9

    .line 112
    .line 113
    if-eq v13, v1, :cond_4

    .line 114
    .line 115
    :goto_3
    goto :goto_7

    .line 116
    :cond_4
    if-ge v12, v9, :cond_6

    .line 117
    .line 118
    aget-char v17, v15, v12

    .line 119
    .line 120
    :cond_5
    move v8, v11

    .line 121
    :goto_4
    :pswitch_2
    move/from16 v3, v17

    .line 122
    .line 123
    :goto_5
    const/16 v1, 0x391

    .line 124
    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :cond_6
    if-eq v12, v9, :cond_8

    .line 128
    .line 129
    if-eq v12, v10, :cond_8

    .line 130
    .line 131
    const/16 v1, 0x391

    .line 132
    .line 133
    if-eq v12, v1, :cond_7

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    aget v1, v2, v6

    .line 137
    .line 138
    int-to-char v1, v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :goto_6
    move v8, v11

    .line 143
    :goto_7
    const/16 v1, 0x391

    .line 144
    .line 145
    :goto_8
    const/4 v3, 0x0

    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_8
    :pswitch_3
    const/16 v1, 0x391

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v8, 0x1

    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_9
    const/16 v1, 0x1a

    .line 155
    .line 156
    if-ge v12, v1, :cond_a

    .line 157
    .line 158
    add-int/lit8 v12, v12, 0x41

    .line 159
    .line 160
    int-to-char v1, v12

    .line 161
    move v3, v1

    .line 162
    move v8, v11

    .line 163
    goto :goto_5

    .line 164
    :cond_a
    if-eq v12, v1, :cond_5

    .line 165
    .line 166
    if-eq v12, v10, :cond_b

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    const/4 v8, 0x1

    .line 170
    goto :goto_7

    .line 171
    :cond_c
    if-ge v12, v9, :cond_d

    .line 172
    .line 173
    aget-char v17, v15, v12

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    if-eq v12, v9, :cond_8

    .line 177
    .line 178
    if-eq v12, v10, :cond_8

    .line 179
    .line 180
    const/16 v1, 0x391

    .line 181
    .line 182
    if-eq v12, v1, :cond_e

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_e
    aget v1, v2, v6

    .line 186
    .line 187
    int-to-char v1, v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_f
    const/16 v1, 0x19

    .line 193
    .line 194
    if-ge v12, v1, :cond_10

    .line 195
    .line 196
    sget-object v1, Ls6/d;->b:[C

    .line 197
    .line 198
    aget-char v17, v1, v12

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_10
    if-eq v12, v10, :cond_8

    .line 202
    .line 203
    const/16 v1, 0x391

    .line 204
    .line 205
    if-eq v12, v1, :cond_11

    .line 206
    .line 207
    packed-switch v12, :pswitch_data_2

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :pswitch_4
    move v11, v8

    .line 212
    move/from16 v8, v16

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :pswitch_5
    move v8, v15

    .line 216
    goto :goto_7

    .line 217
    :pswitch_6
    move v8, v3

    .line 218
    goto :goto_7

    .line 219
    :cond_11
    aget v1, v2, v6

    .line 220
    .line 221
    int-to-char v1, v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_12
    const/16 v3, 0x1a

    .line 227
    .line 228
    if-ge v12, v3, :cond_13

    .line 229
    .line 230
    add-int/lit8 v12, v12, 0x61

    .line 231
    .line 232
    :goto_9
    int-to-char v1, v12

    .line 233
    move v3, v1

    .line 234
    goto :goto_5

    .line 235
    :cond_13
    if-eq v12, v10, :cond_b

    .line 236
    .line 237
    const/16 v3, 0x391

    .line 238
    .line 239
    if-eq v12, v3, :cond_14

    .line 240
    .line 241
    packed-switch v12, :pswitch_data_3

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :pswitch_7
    move v8, v14

    .line 246
    goto :goto_7

    .line 247
    :pswitch_8
    move v11, v8

    .line 248
    const/4 v3, 0x0

    .line 249
    move v8, v1

    .line 250
    goto :goto_5

    .line 251
    :cond_14
    aget v1, v2, v6

    .line 252
    .line 253
    int-to-char v1, v1

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_15
    const/16 v1, 0x1a

    .line 260
    .line 261
    if-ge v12, v1, :cond_16

    .line 262
    .line 263
    add-int/lit8 v12, v12, 0x41

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_16
    if-eq v12, v10, :cond_18

    .line 267
    .line 268
    const/16 v1, 0x391

    .line 269
    .line 270
    if-eq v12, v1, :cond_17

    .line 271
    .line 272
    packed-switch v12, :pswitch_data_4

    .line 273
    .line 274
    .line 275
    goto/16 :goto_8

    .line 276
    .line 277
    :pswitch_9
    move v11, v8

    .line 278
    move/from16 v8, v16

    .line 279
    .line 280
    goto/16 :goto_8

    .line 281
    .line 282
    :pswitch_a
    move v8, v14

    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :pswitch_b
    move v8, v15

    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :pswitch_c
    move/from16 v3, v17

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_17
    aget v3, v2, v6

    .line 292
    .line 293
    int-to-char v3, v3

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto/16 :goto_8

    .line 298
    .line 299
    :cond_18
    const/16 v1, 0x391

    .line 300
    .line 301
    const/4 v8, 0x1

    .line 302
    goto/16 :goto_8

    .line 303
    .line 304
    :goto_a
    if-eqz v3, :cond_19

    .line 305
    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 310
    .line 311
    move v9, v1

    .line 312
    const/4 v1, 0x0

    .line 313
    const/4 v3, 0x1

    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :cond_1a
    return v5

    .line 317
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
