.class public final Lq7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lq7/e;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lq7/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq7/e;->a:Lq7/e;

    .line 7
    .line 8
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lq7/e;->b:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_e

    .line 11
    .line 12
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_45

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    if-eqz v1, :cond_12

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x2

    .line 38
    if-ge v2, v3, :cond_28

    .line 39
    .line 40
    goto :goto_12

    .line 41
    :cond_28
    const/4 v2, 0x0

    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    if-nez v2, :cond_32

    .line 49
    .line 50
    goto :goto_12

    .line 51
    :cond_32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ne v2, p1, :cond_12

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_12

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_44} :catch_46

    .line 67
    .line 68
    .line 69
    goto :goto_12

    .line 70
    :cond_45
    return-object v0

    .line 71
    :catch_46
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 72
    .line 73
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lq7/e;->b:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_32

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    invoke-static {v1, v2}, Lq7/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    move v5, v3

    .line 29
    :goto_1c
    if-ge v5, v2, :cond_2e

    .line 30
    .line 31
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2b

    .line 42
    .line 43
    goto :goto_51

    .line 44
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_1c

    .line 47
    :cond_2e
    move/from16 v16, v3

    .line 48
    .line 49
    goto/16 :goto_265

    .line 50
    .line 51
    :cond_32
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-static {v1, v2}, Lq7/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    move v7, v3

    .line 67
    move v8, v7

    .line 68
    :goto_43
    if-ge v7, v6, :cond_56

    .line 69
    .line 70
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v8}, Lq7/e;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_52

    .line 81
    .line 82
    :goto_51
    return v4

    .line 83
    :cond_52
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    move v8, v4

    .line 86
    goto :goto_43

    .line 87
    :cond_56
    if-nez v8, :cond_2e

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v5, Lq7/d;

    .line 94
    .line 95
    invoke-direct {v5, v1}, Lq7/d;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 96
    .line 97
    .line 98
    iput v3, v5, Lq7/d;->c:I

    .line 99
    .line 100
    iput v3, v5, Lq7/d;->d:I

    .line 101
    .line 102
    iput v3, v5, Lq7/d;->e:I

    .line 103
    .line 104
    iput v3, v5, Lq7/d;->f:I

    .line 105
    .line 106
    iget-object v1, v5, Lq7/d;->a:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iput-object v6, v5, Lq7/d;->g:[C

    .line 113
    .line 114
    invoke-virtual {v5}, Lq7/d;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    const/4 v7, 0x0

    .line 119
    if-nez v6, :cond_7c

    .line 120
    .line 121
    :goto_78
    move/from16 v16, v3

    .line 122
    .line 123
    goto/16 :goto_209

    .line 124
    .line 125
    :cond_7c
    :goto_7c
    iget v8, v5, Lq7/d;->c:I

    .line 126
    .line 127
    iget v9, v5, Lq7/d;->b:I

    .line 128
    .line 129
    if-ne v8, v9, :cond_83

    .line 130
    .line 131
    goto :goto_78

    .line 132
    :cond_83
    iget-object v10, v5, Lq7/d;->g:[C

    .line 133
    .line 134
    aget-char v10, v10, v8

    .line 135
    .line 136
    const-string v11, "Unexpected end of DN: "

    .line 137
    .line 138
    const/16 v12, 0x5c

    .line 139
    .line 140
    const/16 v13, 0x22

    .line 141
    .line 142
    const/16 v14, 0x20

    .line 143
    .line 144
    const/16 v15, 0x3b

    .line 145
    .line 146
    move/from16 p0, v2

    .line 147
    .line 148
    const/16 v2, 0x2c

    .line 149
    .line 150
    move/from16 v16, v3

    .line 151
    .line 152
    const/16 v3, 0x2b

    .line 153
    .line 154
    if-eq v10, v13, :cond_1c8

    .line 155
    .line 156
    const/16 v13, 0x23

    .line 157
    .line 158
    if-eq v10, v13, :cond_145

    .line 159
    .line 160
    if-eq v10, v3, :cond_13f

    .line 161
    .line 162
    if-eq v10, v2, :cond_13f

    .line 163
    .line 164
    if-eq v10, v15, :cond_13f

    .line 165
    .line 166
    iput v8, v5, Lq7/d;->d:I

    .line 167
    .line 168
    iput v8, v5, Lq7/d;->e:I

    .line 169
    .line 170
    :goto_a9
    iget v8, v5, Lq7/d;->c:I

    .line 171
    .line 172
    iget-object v10, v5, Lq7/d;->g:[C

    .line 173
    .line 174
    if-lt v8, v9, :cond_bd

    .line 175
    .line 176
    new-instance v8, Ljava/lang/String;

    .line 177
    .line 178
    iget v11, v5, Lq7/d;->d:I

    .line 179
    .line 180
    iget v12, v5, Lq7/d;->e:I

    .line 181
    .line 182
    sub-int/2addr v12, v11

    .line 183
    invoke-direct {v8, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    .line 184
    .line 185
    .line 186
    move/from16 v17, v4

    .line 187
    .line 188
    goto/16 :goto_1fb

    .line 189
    .line 190
    :cond_bd
    aget-char v11, v10, v8

    .line 191
    .line 192
    if-eq v11, v14, :cond_fe

    .line 193
    .line 194
    if-eq v11, v15, :cond_da

    .line 195
    .line 196
    if-eq v11, v12, :cond_dd

    .line 197
    .line 198
    if-eq v11, v3, :cond_da

    .line 199
    .line 200
    if-eq v11, v2, :cond_da

    .line 201
    .line 202
    iget v13, v5, Lq7/d;->e:I

    .line 203
    .line 204
    move/from16 v17, v4

    .line 205
    .line 206
    add-int/lit8 v4, v13, 0x1

    .line 207
    .line 208
    iput v4, v5, Lq7/d;->e:I

    .line 209
    .line 210
    aput-char v11, v10, v13

    .line 211
    .line 212
    add-int/lit8 v8, v8, 0x1

    .line 213
    .line 214
    iput v8, v5, Lq7/d;->c:I

    .line 215
    .line 216
    :cond_d7
    :goto_d7
    move/from16 v4, v17

    .line 217
    .line 218
    goto :goto_a9

    .line 219
    :cond_da
    move/from16 v17, v4

    .line 220
    .line 221
    goto :goto_f2

    .line 222
    :cond_dd
    move/from16 v17, v4

    .line 223
    .line 224
    iget v4, v5, Lq7/d;->e:I

    .line 225
    .line 226
    add-int/lit8 v8, v4, 0x1

    .line 227
    .line 228
    iput v8, v5, Lq7/d;->e:I

    .line 229
    .line 230
    invoke-virtual {v5}, Lq7/d;->b()C

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    aput-char v8, v10, v4

    .line 235
    .line 236
    iget v4, v5, Lq7/d;->c:I

    .line 237
    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 239
    .line 240
    iput v4, v5, Lq7/d;->c:I

    .line 241
    .line 242
    goto :goto_d7

    .line 243
    :goto_f2
    new-instance v8, Ljava/lang/String;

    .line 244
    .line 245
    iget v4, v5, Lq7/d;->d:I

    .line 246
    .line 247
    iget v11, v5, Lq7/d;->e:I

    .line 248
    .line 249
    sub-int/2addr v11, v4

    .line 250
    invoke-direct {v8, v10, v4, v11}, Ljava/lang/String;-><init>([CII)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1fb

    .line 254
    .line 255
    :cond_fe
    move/from16 v17, v4

    .line 256
    .line 257
    iget v4, v5, Lq7/d;->e:I

    .line 258
    .line 259
    iput v4, v5, Lq7/d;->f:I

    .line 260
    .line 261
    add-int/lit8 v8, v8, 0x1

    .line 262
    .line 263
    iput v8, v5, Lq7/d;->c:I

    .line 264
    .line 265
    add-int/lit8 v8, v4, 0x1

    .line 266
    .line 267
    iput v8, v5, Lq7/d;->e:I

    .line 268
    .line 269
    aput-char v14, v10, v4

    .line 270
    .line 271
    :goto_10e
    iget v4, v5, Lq7/d;->c:I

    .line 272
    .line 273
    if-ge v4, v9, :cond_125

    .line 274
    .line 275
    iget-object v8, v5, Lq7/d;->g:[C

    .line 276
    .line 277
    aget-char v10, v8, v4

    .line 278
    .line 279
    if-ne v10, v14, :cond_125

    .line 280
    .line 281
    iget v10, v5, Lq7/d;->e:I

    .line 282
    .line 283
    add-int/lit8 v11, v10, 0x1

    .line 284
    .line 285
    iput v11, v5, Lq7/d;->e:I

    .line 286
    .line 287
    aput-char v14, v8, v10

    .line 288
    .line 289
    add-int/lit8 v4, v4, 0x1

    .line 290
    .line 291
    iput v4, v5, Lq7/d;->c:I

    .line 292
    .line 293
    goto :goto_10e

    .line 294
    :cond_125
    if-eq v4, v9, :cond_131

    .line 295
    .line 296
    iget-object v8, v5, Lq7/d;->g:[C

    .line 297
    .line 298
    aget-char v4, v8, v4

    .line 299
    .line 300
    if-eq v4, v2, :cond_131

    .line 301
    .line 302
    if-eq v4, v3, :cond_131

    .line 303
    .line 304
    if-ne v4, v15, :cond_d7

    .line 305
    .line 306
    :cond_131
    new-instance v8, Ljava/lang/String;

    .line 307
    .line 308
    iget-object v4, v5, Lq7/d;->g:[C

    .line 309
    .line 310
    iget v10, v5, Lq7/d;->d:I

    .line 311
    .line 312
    iget v11, v5, Lq7/d;->f:I

    .line 313
    .line 314
    sub-int/2addr v11, v10

    .line 315
    invoke-direct {v8, v4, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_1fb

    .line 319
    .line 320
    :cond_13f
    move/from16 v17, v4

    .line 321
    .line 322
    const-string v8, ""

    .line 323
    .line 324
    goto/16 :goto_1fb

    .line 325
    .line 326
    :cond_145
    move/from16 v17, v4

    .line 327
    .line 328
    add-int/lit8 v4, v8, 0x4

    .line 329
    .line 330
    if-ge v4, v9, :cond_1c0

    .line 331
    .line 332
    iput v8, v5, Lq7/d;->d:I

    .line 333
    .line 334
    add-int/lit8 v8, v8, 0x1

    .line 335
    .line 336
    iput v8, v5, Lq7/d;->c:I

    .line 337
    .line 338
    :goto_151
    iget v4, v5, Lq7/d;->c:I

    .line 339
    .line 340
    if-eq v4, v9, :cond_189

    .line 341
    .line 342
    iget-object v8, v5, Lq7/d;->g:[C

    .line 343
    .line 344
    aget-char v10, v8, v4

    .line 345
    .line 346
    if-eq v10, v3, :cond_189

    .line 347
    .line 348
    if-eq v10, v2, :cond_189

    .line 349
    .line 350
    if-ne v10, v15, :cond_160

    .line 351
    .line 352
    goto :goto_189

    .line 353
    :cond_160
    if-ne v10, v14, :cond_177

    .line 354
    .line 355
    iput v4, v5, Lq7/d;->e:I

    .line 356
    .line 357
    add-int/lit8 v4, v4, 0x1

    .line 358
    .line 359
    iput v4, v5, Lq7/d;->c:I

    .line 360
    .line 361
    :goto_168
    iget v4, v5, Lq7/d;->c:I

    .line 362
    .line 363
    if-ge v4, v9, :cond_18b

    .line 364
    .line 365
    iget-object v8, v5, Lq7/d;->g:[C

    .line 366
    .line 367
    aget-char v8, v8, v4

    .line 368
    .line 369
    if-ne v8, v14, :cond_18b

    .line 370
    .line 371
    add-int/lit8 v4, v4, 0x1

    .line 372
    .line 373
    iput v4, v5, Lq7/d;->c:I

    .line 374
    .line 375
    goto :goto_168

    .line 376
    :cond_177
    const/16 v12, 0x41

    .line 377
    .line 378
    if-lt v10, v12, :cond_184

    .line 379
    .line 380
    const/16 v12, 0x46

    .line 381
    .line 382
    if-gt v10, v12, :cond_184

    .line 383
    .line 384
    add-int/lit8 v10, v10, 0x20

    .line 385
    .line 386
    int-to-char v10, v10

    .line 387
    aput-char v10, v8, v4

    .line 388
    .line 389
    :cond_184
    add-int/lit8 v4, v4, 0x1

    .line 390
    .line 391
    iput v4, v5, Lq7/d;->c:I

    .line 392
    .line 393
    goto :goto_151

    .line 394
    :cond_189
    :goto_189
    iput v4, v5, Lq7/d;->e:I

    .line 395
    .line 396
    :cond_18b
    iget v4, v5, Lq7/d;->e:I

    .line 397
    .line 398
    iget v8, v5, Lq7/d;->d:I

    .line 399
    .line 400
    sub-int/2addr v4, v8

    .line 401
    const/4 v10, 0x5

    .line 402
    if-lt v4, v10, :cond_1b7

    .line 403
    .line 404
    and-int/lit8 v10, v4, 0x1

    .line 405
    .line 406
    if-eqz v10, :cond_1b7

    .line 407
    .line 408
    div-int/lit8 v10, v4, 0x2

    .line 409
    .line 410
    new-array v11, v10, [B

    .line 411
    .line 412
    add-int/lit8 v8, v8, 0x1

    .line 413
    .line 414
    move/from16 v12, v16

    .line 415
    .line 416
    :goto_19f
    if-ge v12, v10, :cond_1ad

    .line 417
    .line 418
    invoke-virtual {v5, v8}, Lq7/d;->a(I)I

    .line 419
    .line 420
    .line 421
    move-result v13

    .line 422
    int-to-byte v13, v13

    .line 423
    aput-byte v13, v11, v12

    .line 424
    .line 425
    add-int/lit8 v8, v8, 0x2

    .line 426
    .line 427
    add-int/lit8 v12, v12, 0x1

    .line 428
    .line 429
    goto :goto_19f

    .line 430
    :cond_1ad
    new-instance v8, Ljava/lang/String;

    .line 431
    .line 432
    iget-object v10, v5, Lq7/d;->g:[C

    .line 433
    .line 434
    iget v11, v5, Lq7/d;->d:I

    .line 435
    .line 436
    invoke-direct {v8, v10, v11, v4}, Ljava/lang/String;-><init>([CII)V

    .line 437
    .line 438
    .line 439
    goto :goto_1fb

    .line 440
    :cond_1b7
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    :goto_1be
    const/4 v0, 0x0

    .line 448
    return v0

    .line 449
    :cond_1c0
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    goto :goto_1be

    .line 457
    :cond_1c8
    move/from16 v17, v4

    .line 458
    .line 459
    add-int/lit8 v8, v8, 0x1

    .line 460
    .line 461
    iput v8, v5, Lq7/d;->c:I

    .line 462
    .line 463
    iput v8, v5, Lq7/d;->d:I

    .line 464
    .line 465
    iput v8, v5, Lq7/d;->e:I

    .line 466
    .line 467
    :goto_1d2
    iget v4, v5, Lq7/d;->c:I

    .line 468
    .line 469
    if-eq v4, v9, :cond_25c

    .line 470
    .line 471
    iget-object v8, v5, Lq7/d;->g:[C

    .line 472
    .line 473
    aget-char v10, v8, v4

    .line 474
    .line 475
    if-ne v10, v13, :cond_241

    .line 476
    .line 477
    add-int/lit8 v4, v4, 0x1

    .line 478
    .line 479
    iput v4, v5, Lq7/d;->c:I

    .line 480
    .line 481
    :goto_1e0
    iget v4, v5, Lq7/d;->c:I

    .line 482
    .line 483
    if-ge v4, v9, :cond_1ef

    .line 484
    .line 485
    iget-object v8, v5, Lq7/d;->g:[C

    .line 486
    .line 487
    aget-char v8, v8, v4

    .line 488
    .line 489
    if-ne v8, v14, :cond_1ef

    .line 490
    .line 491
    add-int/lit8 v4, v4, 0x1

    .line 492
    .line 493
    iput v4, v5, Lq7/d;->c:I

    .line 494
    .line 495
    goto :goto_1e0

    .line 496
    :cond_1ef
    new-instance v8, Ljava/lang/String;

    .line 497
    .line 498
    iget-object v4, v5, Lq7/d;->g:[C

    .line 499
    .line 500
    iget v10, v5, Lq7/d;->d:I

    .line 501
    .line 502
    iget v11, v5, Lq7/d;->e:I

    .line 503
    .line 504
    sub-int/2addr v11, v10

    .line 505
    invoke-direct {v8, v4, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 506
    .line 507
    .line 508
    :goto_1fb
    const-string v4, "cn"

    .line 509
    .line 510
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    if-eqz v4, :cond_205

    .line 515
    .line 516
    move-object v7, v8

    .line 517
    goto :goto_209

    .line 518
    :cond_205
    iget v4, v5, Lq7/d;->c:I

    .line 519
    .line 520
    if-lt v4, v9, :cond_210

    .line 521
    .line 522
    :goto_209
    if-eqz v7, :cond_265

    .line 523
    .line 524
    invoke-static {v0, v7}, Lq7/e;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    return v0

    .line 529
    :cond_210
    iget-object v6, v5, Lq7/d;->g:[C

    .line 530
    .line 531
    aget-char v6, v6, v4

    .line 532
    .line 533
    const-string v8, "Malformed DN: "

    .line 534
    .line 535
    if-eq v6, v2, :cond_226

    .line 536
    .line 537
    if-ne v6, v15, :cond_21b

    .line 538
    .line 539
    goto :goto_226

    .line 540
    :cond_21b
    if-ne v6, v3, :cond_21e

    .line 541
    .line 542
    goto :goto_226

    .line 543
    :cond_21e
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_1be

    .line 551
    :cond_226
    :goto_226
    add-int/lit8 v4, v4, 0x1

    .line 552
    .line 553
    iput v4, v5, Lq7/d;->c:I

    .line 554
    .line 555
    invoke-virtual {v5}, Lq7/d;->c()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    if-eqz v6, :cond_238

    .line 560
    .line 561
    move/from16 v2, p0

    .line 562
    .line 563
    move/from16 v3, v16

    .line 564
    .line 565
    move/from16 v4, v17

    .line 566
    .line 567
    goto/16 :goto_7c

    .line 568
    .line 569
    :cond_238
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    goto/16 :goto_1be

    .line 577
    .line 578
    :cond_241
    iget v4, v5, Lq7/d;->e:I

    .line 579
    .line 580
    if-ne v10, v12, :cond_24c

    .line 581
    .line 582
    invoke-virtual {v5}, Lq7/d;->b()C

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    aput-char v10, v8, v4

    .line 587
    .line 588
    goto :goto_24e

    .line 589
    :cond_24c
    aput-char v10, v8, v4

    .line 590
    .line 591
    :goto_24e
    iget v4, v5, Lq7/d;->c:I

    .line 592
    .line 593
    add-int/lit8 v4, v4, 0x1

    .line 594
    .line 595
    iput v4, v5, Lq7/d;->c:I

    .line 596
    .line 597
    iget v4, v5, Lq7/d;->e:I

    .line 598
    .line 599
    add-int/lit8 v4, v4, 0x1

    .line 600
    .line 601
    iput v4, v5, Lq7/d;->e:I

    .line 602
    .line 603
    goto/16 :goto_1d2

    .line 604
    .line 605
    :cond_25c
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_1be

    .line 613
    .line 614
    :cond_265
    :goto_265
    return v16
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    if-eqz p0, :cond_9d

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9d

    .line 8
    .line 9
    const-string v0, "."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_9d

    .line 16
    .line 17
    const-string v1, ".."

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_9d

    .line 26
    .line 27
    :cond_1a
    if-eqz p1, :cond_9d

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_9d

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_9d

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_30

    .line 46
    .line 47
    goto/16 :goto_9d

    .line 48
    .line 49
    :cond_30
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3a

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_44

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_44
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "*"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_57

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_57
    const-string v0, "*."

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_9d

    .line 95
    .line 96
    const/16 v1, 0x2a

    .line 97
    .line 98
    const/4 v2, 0x1

    .line 99
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v3, -0x1

    .line 104
    if-eq v1, v3, :cond_6a

    .line 105
    .line 106
    goto :goto_9d

    .line 107
    :cond_6a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ge v1, v4, :cond_75

    .line 116
    .line 117
    goto :goto_9d

    .line 118
    :cond_75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7c

    .line 123
    .line 124
    goto :goto_9d

    .line 125
    :cond_7c
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_87

    .line 134
    .line 135
    goto :goto_9d

    .line 136
    :cond_87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    sub-int/2addr v0, p1

    .line 145
    if-lez v0, :cond_9c

    .line 146
    .line 147
    const/16 p1, 0x2e

    .line 148
    .line 149
    sub-int/2addr v0, v2

    .line 150
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eq p0, v3, :cond_9c

    .line 155
    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    return v2

    .line 158
    :cond_9d
    :goto_9d
    const/4 p0, 0x0

    .line 159
    return p0
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    aget-object p2, p2, v0

    .line 7
    .line 8
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lq7/e;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_e

    .line 14
    return p1

    .line 15
    :catch_e
    return v0
.end method
