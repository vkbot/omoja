.class public final Lkotlin/jvm/internal/ClassReference$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/ClassReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006R&\u0010\u0004\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/jvm/internal/ClassReference$Companion;",
        "",
        "<init>",
        "()V",
        "FUNCTION_CLASSES",
        "",
        "Ljava/lang/Class;",
        "Lkotlin/Function;",
        "",
        "classFqNameOf",
        "",
        "type",
        "simpleNameOf",
        "getClassSimpleName",
        "jClass",
        "getClassQualifiedName",
        "isInstance",
        "",
        "value",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final classFqNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "kotlin.Int"

    .line 6
    .line 7
    const-string v2, "kotlin.Float"

    .line 8
    .line 9
    const-string v3, "kotlin.Short"

    .line 10
    .line 11
    const-string v4, "kotlin.Char"

    .line 12
    .line 13
    const-string v5, "kotlin.Boolean"

    .line 14
    .line 15
    const-string v6, "kotlin.Byte"

    .line 16
    .line 17
    const-string v7, "kotlin.Long"

    .line 18
    .line 19
    const-string v8, "kotlin.Double"

    .line 20
    .line 21
    sparse-switch v0, :sswitch_data_354

    .line 22
    .line 23
    .line 24
    packed-switch v0, :pswitch_data_402

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_41a

    .line 28
    .line 29
    .line 30
    packed-switch v0, :pswitch_data_424

    .line 31
    .line 32
    .line 33
    goto/16 :goto_34f

    .line 34
    .line 35
    :pswitch_22
    const-string v0, "kotlin.jvm.functions.Function9"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2c

    .line 42
    .line 43
    goto/16 :goto_34f

    .line 44
    .line 45
    :cond_2c
    const-string p1, "kotlin.Function9"

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_2f
    const-string v0, "kotlin.jvm.functions.Function8"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_39

    .line 55
    .line 56
    goto/16 :goto_34f

    .line 57
    .line 58
    :cond_39
    const-string p1, "kotlin.Function8"

    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_3c
    const-string v0, "kotlin.jvm.functions.Function7"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_46

    .line 68
    .line 69
    goto/16 :goto_34f

    .line 70
    .line 71
    :cond_46
    const-string p1, "kotlin.Function7"

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_49
    const-string v0, "kotlin.jvm.functions.Function6"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_53

    .line 81
    .line 82
    goto/16 :goto_34f

    .line 83
    .line 84
    :cond_53
    const-string p1, "kotlin.Function6"

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_56
    const-string v0, "kotlin.jvm.functions.Function5"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_60

    .line 94
    .line 95
    goto/16 :goto_34f

    .line 96
    .line 97
    :cond_60
    const-string p1, "kotlin.Function5"

    .line 98
    .line 99
    return-object p1

    .line 100
    :pswitch_63
    const-string v0, "kotlin.jvm.functions.Function4"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_6d

    .line 107
    .line 108
    goto/16 :goto_34f

    .line 109
    .line 110
    :cond_6d
    const-string p1, "kotlin.Function4"

    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_70
    const-string v0, "kotlin.jvm.functions.Function3"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_7a

    .line 120
    .line 121
    goto/16 :goto_34f

    .line 122
    .line 123
    :cond_7a
    const-string p1, "kotlin.Function3"

    .line 124
    .line 125
    return-object p1

    .line 126
    :pswitch_7d
    const-string v0, "kotlin.jvm.functions.Function2"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_87

    .line 133
    .line 134
    goto/16 :goto_34f

    .line 135
    .line 136
    :cond_87
    const-string p1, "kotlin.Function2"

    .line 137
    .line 138
    return-object p1

    .line 139
    :pswitch_8a
    const-string v0, "kotlin.jvm.functions.Function1"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_94

    .line 146
    .line 147
    goto/16 :goto_34f

    .line 148
    .line 149
    :cond_94
    const-string p1, "kotlin.Function1"

    .line 150
    .line 151
    return-object p1

    .line 152
    :pswitch_97
    const-string v0, "kotlin.jvm.functions.Function0"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_a1

    .line 159
    .line 160
    goto/16 :goto_34f

    .line 161
    .line 162
    :cond_a1
    const-string p1, "kotlin.Function0"

    .line 163
    .line 164
    return-object p1

    .line 165
    :pswitch_a4
    const-string v0, "kotlin.jvm.functions.Function22"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_ae

    .line 172
    .line 173
    goto/16 :goto_34f

    .line 174
    .line 175
    :cond_ae
    const-string p1, "kotlin.Function22"

    .line 176
    .line 177
    return-object p1

    .line 178
    :pswitch_b1
    const-string v0, "kotlin.jvm.functions.Function21"

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_bb

    .line 185
    .line 186
    goto/16 :goto_34f

    .line 187
    .line 188
    :cond_bb
    const-string p1, "kotlin.Function21"

    .line 189
    .line 190
    return-object p1

    .line 191
    :pswitch_be
    const-string v0, "kotlin.jvm.functions.Function20"

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_c8

    .line 198
    .line 199
    goto/16 :goto_34f

    .line 200
    .line 201
    :cond_c8
    const-string p1, "kotlin.Function20"

    .line 202
    .line 203
    return-object p1

    .line 204
    :pswitch_cb
    const-string v0, "kotlin.jvm.functions.Function19"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_d5

    .line 211
    .line 212
    goto/16 :goto_34f

    .line 213
    .line 214
    :cond_d5
    const-string p1, "kotlin.Function19"

    .line 215
    .line 216
    return-object p1

    .line 217
    :pswitch_d8
    const-string v0, "kotlin.jvm.functions.Function18"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_e2

    .line 224
    .line 225
    goto/16 :goto_34f

    .line 226
    .line 227
    :cond_e2
    const-string p1, "kotlin.Function18"

    .line 228
    .line 229
    return-object p1

    .line 230
    :pswitch_e5
    const-string v0, "kotlin.jvm.functions.Function17"

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-nez p1, :cond_ef

    .line 237
    .line 238
    goto/16 :goto_34f

    .line 239
    .line 240
    :cond_ef
    const-string p1, "kotlin.Function17"

    .line 241
    .line 242
    return-object p1

    .line 243
    :pswitch_f2
    const-string v0, "kotlin.jvm.functions.Function16"

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_fc

    .line 250
    .line 251
    goto/16 :goto_34f

    .line 252
    .line 253
    :cond_fc
    const-string p1, "kotlin.Function16"

    .line 254
    .line 255
    return-object p1

    .line 256
    :pswitch_ff
    const-string v0, "kotlin.jvm.functions.Function15"

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_109

    .line 263
    .line 264
    goto/16 :goto_34f

    .line 265
    .line 266
    :cond_109
    const-string p1, "kotlin.Function15"

    .line 267
    .line 268
    return-object p1

    .line 269
    :pswitch_10c
    const-string v0, "kotlin.jvm.functions.Function14"

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_116

    .line 276
    .line 277
    goto/16 :goto_34f

    .line 278
    .line 279
    :cond_116
    const-string p1, "kotlin.Function14"

    .line 280
    .line 281
    return-object p1

    .line 282
    :pswitch_119
    const-string v0, "kotlin.jvm.functions.Function13"

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-nez p1, :cond_123

    .line 289
    .line 290
    goto/16 :goto_34f

    .line 291
    .line 292
    :cond_123
    const-string p1, "kotlin.Function13"

    .line 293
    .line 294
    return-object p1

    .line 295
    :pswitch_126
    const-string v0, "kotlin.jvm.functions.Function12"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-nez p1, :cond_130

    .line 302
    .line 303
    goto/16 :goto_34f

    .line 304
    .line 305
    :cond_130
    const-string p1, "kotlin.Function12"

    .line 306
    .line 307
    return-object p1

    .line 308
    :pswitch_133
    const-string v0, "kotlin.jvm.functions.Function11"

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_13d

    .line 315
    .line 316
    goto/16 :goto_34f

    .line 317
    .line 318
    :cond_13d
    const-string p1, "kotlin.Function11"

    .line 319
    .line 320
    return-object p1

    .line 321
    :pswitch_140
    const-string v0, "kotlin.jvm.functions.Function10"

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-nez p1, :cond_14a

    .line 328
    .line 329
    goto/16 :goto_34f

    .line 330
    .line 331
    :cond_14a
    const-string p1, "kotlin.Function10"

    .line 332
    .line 333
    return-object p1

    .line 334
    :sswitch_14d
    const-string v0, "kotlin.jvm.internal.IntCompanionObject"

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-nez p1, :cond_157

    .line 341
    .line 342
    goto/16 :goto_34f

    .line 343
    .line 344
    :cond_157
    const-string p1, "kotlin.Int.Companion"

    .line 345
    .line 346
    return-object p1

    .line 347
    :sswitch_15a
    const-string v0, "java.lang.Throwable"

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_164

    .line 354
    .line 355
    goto/16 :goto_34f

    .line 356
    .line 357
    :cond_164
    const-string p1, "kotlin.Throwable"

    .line 358
    .line 359
    return-object p1

    .line 360
    :sswitch_167
    const-string v0, "kotlin.jvm.internal.BooleanCompanionObject"

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_171

    .line 367
    .line 368
    goto/16 :goto_34f

    .line 369
    .line 370
    :cond_171
    const-string p1, "kotlin.Boolean.Companion"

    .line 371
    .line 372
    return-object p1

    .line 373
    :sswitch_174
    const-string v0, "java.lang.Iterable"

    .line 374
    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_17e

    .line 380
    .line 381
    goto/16 :goto_34f

    .line 382
    .line 383
    :cond_17e
    const-string p1, "kotlin.collections.Iterable"

    .line 384
    .line 385
    return-object p1

    .line 386
    :sswitch_181
    const-string v0, "java.lang.String"

    .line 387
    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_18b

    .line 393
    .line 394
    goto/16 :goto_34f

    .line 395
    .line 396
    :cond_18b
    const-string p1, "kotlin.String"

    .line 397
    .line 398
    return-object p1

    .line 399
    :sswitch_18e
    const-string v0, "java.lang.Object"

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-nez p1, :cond_198

    .line 406
    .line 407
    goto/16 :goto_34f

    .line 408
    .line 409
    :cond_198
    const-string p1, "kotlin.Any"

    .line 410
    .line 411
    return-object p1

    .line 412
    :sswitch_19b
    const-string v0, "java.lang.Number"

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-nez p1, :cond_1a5

    .line 419
    .line 420
    goto/16 :goto_34f

    .line 421
    .line 422
    :cond_1a5
    const-string p1, "kotlin.Number"

    .line 423
    .line 424
    return-object p1

    .line 425
    :sswitch_1a8
    const-string v0, "java.lang.Double"

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-nez p1, :cond_1b2

    .line 432
    .line 433
    goto/16 :goto_34f

    .line 434
    .line 435
    :cond_1b2
    return-object v8

    .line 436
    :sswitch_1b3
    const-string v0, "kotlin.jvm.internal.StringCompanionObject"

    .line 437
    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-nez p1, :cond_1bd

    .line 443
    .line 444
    goto/16 :goto_34f

    .line 445
    .line 446
    :cond_1bd
    const-string p1, "kotlin.String.Companion"

    .line 447
    .line 448
    return-object p1

    .line 449
    :sswitch_1c0
    const-string v0, "java.util.ListIterator"

    .line 450
    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-nez p1, :cond_1ca

    .line 456
    .line 457
    goto/16 :goto_34f

    .line 458
    .line 459
    :cond_1ca
    const-string p1, "kotlin.collections.ListIterator"

    .line 460
    .line 461
    return-object p1

    .line 462
    :sswitch_1cd
    const-string v0, "java.util.Iterator"

    .line 463
    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    if-nez p1, :cond_1d7

    .line 469
    .line 470
    goto/16 :goto_34f

    .line 471
    .line 472
    :cond_1d7
    const-string p1, "kotlin.collections.Iterator"

    .line 473
    .line 474
    return-object p1

    .line 475
    :sswitch_1da
    const-string v0, "kotlin.jvm.internal.FloatCompanionObject"

    .line 476
    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    if-nez p1, :cond_1e4

    .line 482
    .line 483
    goto/16 :goto_34f

    .line 484
    .line 485
    :cond_1e4
    const-string p1, "kotlin.Float.Companion"

    .line 486
    .line 487
    return-object p1

    .line 488
    :sswitch_1e7
    const-string v0, "java.lang.Long"

    .line 489
    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    if-nez p1, :cond_1f1

    .line 495
    .line 496
    goto/16 :goto_34f

    .line 497
    .line 498
    :cond_1f1
    return-object v7

    .line 499
    :sswitch_1f2
    const-string v0, "java.lang.Enum"

    .line 500
    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-nez p1, :cond_1fc

    .line 506
    .line 507
    goto/16 :goto_34f

    .line 508
    .line 509
    :cond_1fc
    const-string p1, "kotlin.Enum"

    .line 510
    .line 511
    return-object p1

    .line 512
    :sswitch_1ff
    const-string v0, "java.lang.Byte"

    .line 513
    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    if-nez p1, :cond_209

    .line 519
    .line 520
    goto/16 :goto_34f

    .line 521
    .line 522
    :cond_209
    return-object v6

    .line 523
    :sswitch_20a
    const-string v0, "java.lang.Boolean"

    .line 524
    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    if-nez p1, :cond_214

    .line 530
    .line 531
    goto/16 :goto_34f

    .line 532
    .line 533
    :cond_214
    return-object v5

    .line 534
    :sswitch_215
    const-string v0, "kotlin.jvm.internal.EnumCompanionObject"

    .line 535
    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    if-nez p1, :cond_21f

    .line 541
    .line 542
    goto/16 :goto_34f

    .line 543
    .line 544
    :cond_21f
    const-string p1, "kotlin.Enum.Companion"

    .line 545
    .line 546
    return-object p1

    .line 547
    :sswitch_222
    const-string v0, "java.lang.Character"

    .line 548
    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    if-nez p1, :cond_22c

    .line 554
    .line 555
    goto/16 :goto_34f

    .line 556
    .line 557
    :cond_22c
    return-object v4

    .line 558
    :sswitch_22d
    const-string v0, "short"

    .line 559
    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    if-nez p1, :cond_237

    .line 565
    .line 566
    goto/16 :goto_34f

    .line 567
    .line 568
    :cond_237
    return-object v3

    .line 569
    :sswitch_238
    const-string v0, "float"

    .line 570
    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    if-nez p1, :cond_242

    .line 576
    .line 577
    goto/16 :goto_34f

    .line 578
    .line 579
    :cond_242
    return-object v2

    .line 580
    :sswitch_243
    const-string v0, "kotlin.jvm.internal.ShortCompanionObject"

    .line 581
    .line 582
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    if-nez p1, :cond_24d

    .line 587
    .line 588
    goto/16 :goto_34f

    .line 589
    .line 590
    :cond_24d
    const-string p1, "kotlin.Short.Companion"

    .line 591
    .line 592
    return-object p1

    .line 593
    :sswitch_250
    const-string v0, "java.util.List"

    .line 594
    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p1

    .line 599
    if-nez p1, :cond_25a

    .line 600
    .line 601
    goto/16 :goto_34f

    .line 602
    .line 603
    :cond_25a
    const-string p1, "kotlin.collections.List"

    .line 604
    .line 605
    return-object p1

    .line 606
    :sswitch_25d
    const-string v0, "boolean"

    .line 607
    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    if-nez p1, :cond_267

    .line 613
    .line 614
    goto/16 :goto_34f

    .line 615
    .line 616
    :cond_267
    return-object v5

    .line 617
    :sswitch_268
    const-string v0, "long"

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    if-nez p1, :cond_272

    .line 624
    .line 625
    goto/16 :goto_34f

    .line 626
    .line 627
    :cond_272
    return-object v7

    .line 628
    :sswitch_273
    const-string v0, "char"

    .line 629
    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    if-nez p1, :cond_27d

    .line 635
    .line 636
    goto/16 :goto_34f

    .line 637
    .line 638
    :cond_27d
    return-object v4

    .line 639
    :sswitch_27e
    const-string v0, "byte"

    .line 640
    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result p1

    .line 645
    if-nez p1, :cond_288

    .line 646
    .line 647
    goto/16 :goto_34f

    .line 648
    .line 649
    :cond_288
    return-object v6

    .line 650
    :sswitch_289
    const-string v0, "int"

    .line 651
    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result p1

    .line 656
    if-nez p1, :cond_293

    .line 657
    .line 658
    goto/16 :goto_34f

    .line 659
    .line 660
    :cond_293
    return-object v1

    .line 661
    :sswitch_294
    const-string v0, "java.util.Map$Entry"

    .line 662
    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    if-nez p1, :cond_29e

    .line 668
    .line 669
    goto/16 :goto_34f

    .line 670
    .line 671
    :cond_29e
    const-string p1, "kotlin.collections.Map.Entry"

    .line 672
    .line 673
    return-object p1

    .line 674
    :sswitch_2a1
    const-string v0, "kotlin.jvm.internal.LongCompanionObject"

    .line 675
    .line 676
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result p1

    .line 680
    if-nez p1, :cond_2ab

    .line 681
    .line 682
    goto/16 :goto_34f

    .line 683
    .line 684
    :cond_2ab
    const-string p1, "kotlin.Long.Companion"

    .line 685
    .line 686
    return-object p1

    .line 687
    :sswitch_2ae
    const-string v0, "kotlin.jvm.internal.CharCompanionObject"

    .line 688
    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result p1

    .line 693
    if-nez p1, :cond_2b8

    .line 694
    .line 695
    goto/16 :goto_34f

    .line 696
    .line 697
    :cond_2b8
    const-string p1, "kotlin.Char.Companion"

    .line 698
    .line 699
    return-object p1

    .line 700
    :sswitch_2bb
    const-string v0, "java.lang.Short"

    .line 701
    .line 702
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result p1

    .line 706
    if-nez p1, :cond_2c5

    .line 707
    .line 708
    goto/16 :goto_34f

    .line 709
    .line 710
    :cond_2c5
    return-object v3

    .line 711
    :sswitch_2c6
    const-string v0, "java.lang.Float"

    .line 712
    .line 713
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    if-nez p1, :cond_2d0

    .line 718
    .line 719
    goto/16 :goto_34f

    .line 720
    .line 721
    :cond_2d0
    return-object v2

    .line 722
    :sswitch_2d1
    const-string v0, "java.util.Collection"

    .line 723
    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result p1

    .line 728
    if-nez p1, :cond_2db

    .line 729
    .line 730
    goto/16 :goto_34f

    .line 731
    .line 732
    :cond_2db
    const-string p1, "kotlin.collections.Collection"

    .line 733
    .line 734
    return-object p1

    .line 735
    :sswitch_2de
    const-string v0, "java.lang.CharSequence"

    .line 736
    .line 737
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result p1

    .line 741
    if-nez p1, :cond_2e8

    .line 742
    .line 743
    goto/16 :goto_34f

    .line 744
    .line 745
    :cond_2e8
    const-string p1, "kotlin.CharSequence"

    .line 746
    .line 747
    return-object p1

    .line 748
    :sswitch_2eb
    const-string v0, "kotlin.jvm.internal.ByteCompanionObject"

    .line 749
    .line 750
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    if-nez p1, :cond_2f4

    .line 755
    .line 756
    goto :goto_34f

    .line 757
    :cond_2f4
    const-string p1, "kotlin.Byte.Companion"

    .line 758
    .line 759
    return-object p1

    .line 760
    :sswitch_2f7
    const-string v0, "double"

    .line 761
    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result p1

    .line 766
    if-nez p1, :cond_300

    .line 767
    .line 768
    goto :goto_34f

    .line 769
    :cond_300
    return-object v8

    .line 770
    :sswitch_301
    const-string v0, "java.util.Set"

    .line 771
    .line 772
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result p1

    .line 776
    if-nez p1, :cond_30a

    .line 777
    .line 778
    goto :goto_34f

    .line 779
    :cond_30a
    const-string p1, "kotlin.collections.Set"

    .line 780
    .line 781
    return-object p1

    .line 782
    :sswitch_30d
    const-string v0, "java.util.Map"

    .line 783
    .line 784
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    if-nez p1, :cond_316

    .line 789
    .line 790
    goto :goto_34f

    .line 791
    :cond_316
    const-string p1, "kotlin.collections.Map"

    .line 792
    .line 793
    return-object p1

    .line 794
    :sswitch_319
    const-string v0, "java.lang.Comparable"

    .line 795
    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result p1

    .line 800
    if-nez p1, :cond_322

    .line 801
    .line 802
    goto :goto_34f

    .line 803
    :cond_322
    const-string p1, "kotlin.Comparable"

    .line 804
    .line 805
    return-object p1

    .line 806
    :sswitch_325
    const-string v0, "java.lang.annotation.Annotation"

    .line 807
    .line 808
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result p1

    .line 812
    if-nez p1, :cond_32e

    .line 813
    .line 814
    goto :goto_34f

    .line 815
    :cond_32e
    const-string p1, "kotlin.Annotation"

    .line 816
    .line 817
    return-object p1

    .line 818
    :sswitch_331
    const-string v0, "java.lang.Cloneable"

    .line 819
    .line 820
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result p1

    .line 824
    if-nez p1, :cond_33a

    .line 825
    .line 826
    goto :goto_34f

    .line 827
    :cond_33a
    const-string p1, "kotlin.Cloneable"

    .line 828
    .line 829
    return-object p1

    .line 830
    :sswitch_33d
    const-string v0, "java.lang.Integer"

    .line 831
    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result p1

    .line 836
    if-nez p1, :cond_346

    .line 837
    .line 838
    goto :goto_34f

    .line 839
    :cond_346
    return-object v1

    .line 840
    :sswitch_347
    const-string v0, "kotlin.jvm.internal.DoubleCompanionObject"

    .line 841
    .line 842
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result p1

    .line 846
    if-nez p1, :cond_351

    .line 847
    .line 848
    :goto_34f
    const/4 p1, 0x0

    .line 849
    return-object p1

    .line 850
    :cond_351
    const-string p1, "kotlin.Double.Companion"

    .line 851
    .line 852
    return-object p1

    .line 853
    :sswitch_data_354
    .sparse-switch
        -0x7ae0c43d -> :sswitch_347
        -0x7a988a96 -> :sswitch_33d
        -0x793eea9d -> :sswitch_331
        -0x75fda146 -> :sswitch_325
        -0x5dab6ad2 -> :sswitch_319
        -0x52743c64 -> :sswitch_30d
        -0x5274255e -> :sswitch_301
        -0x4f08842f -> :sswitch_2f7
        -0x46781814 -> :sswitch_2eb
        -0x3f507f75 -> :sswitch_2de
        -0x2906f7a2 -> :sswitch_2d1
        -0x1f76ce78 -> :sswitch_2c6
        -0x1ec16c58 -> :sswitch_2bb
        -0xeb0f022 -> :sswitch_2ae
        -0xc5a9408 -> :sswitch_2a1
        -0x9d7d2b6 -> :sswitch_294
        0x197ef -> :sswitch_289
        0x2e6108 -> :sswitch_27e
        0x2e9356 -> :sswitch_273
        0x32c67c -> :sswitch_268
        0x3db6c28 -> :sswitch_25d
        0x3ec5a5e -> :sswitch_250
        0x49a71c6 -> :sswitch_243
        0x5d0225c -> :sswitch_238
        0x685847c -> :sswitch_22d
        0x9415455 -> :sswitch_222
        0xd7b22d3 -> :sswitch_215
        0x148d6054 -> :sswitch_20a
        0x17c0bc5c -> :sswitch_1ff
        0x17c1f055 -> :sswitch_1f2
        0x17c521d0 -> :sswitch_1e7
        0x1cc457e6 -> :sswitch_1da
        0x1dcad22e -> :sswitch_1cd
        0x226988ec -> :sswitch_1c0
        0x23b44f83 -> :sswitch_1b3
        0x2d605225 -> :sswitch_1a8
        0x3ec1b19d -> :sswitch_19b
        0x3f697993 -> :sswitch_18e
        0x473e3665 -> :sswitch_181
        0x4c0855c6 -> :sswitch_174
        0x52797ada -> :sswitch_167
        0x612cf26c -> :sswitch_15a
        0x6fe35bb3 -> :sswitch_14d
    .end sparse-switch

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :pswitch_data_402
    .packed-switch -0x6bf3d83c
        :pswitch_140
        :pswitch_133
        :pswitch_126
        :pswitch_119
        :pswitch_10c
        :pswitch_ff
        :pswitch_f2
        :pswitch_e5
        :pswitch_d8
        :pswitch_cb
    .end packed-switch

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :pswitch_data_41a
    .packed-switch -0x6bf3d81d
        :pswitch_be
        :pswitch_b1
        :pswitch_a4
    .end packed-switch

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    :pswitch_data_424
    .packed-switch 0x4c695eb
        :pswitch_97
        :pswitch_8a
        :pswitch_7d
        :pswitch_70
        :pswitch_63
        :pswitch_56
        :pswitch_49
        :pswitch_3c
        :pswitch_2f
        :pswitch_22
    .end packed-switch
.end method

.method private final simpleNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Int"

    .line 6
    .line 7
    const-string v2, "Float"

    .line 8
    .line 9
    const-string v3, "Short"

    .line 10
    .line 11
    const-string v4, "Char"

    .line 12
    .line 13
    const-string v5, "Boolean"

    .line 14
    .line 15
    const-string v6, "Byte"

    .line 16
    .line 17
    const-string v7, "Long"

    .line 18
    .line 19
    const-string v8, "Double"

    .line 20
    .line 21
    const-string v9, "Companion"

    .line 22
    .line 23
    sparse-switch v0, :sswitch_data_342

    .line 24
    .line 25
    .line 26
    packed-switch v0, :pswitch_data_3f0

    .line 27
    .line 28
    .line 29
    packed-switch v0, :pswitch_data_408

    .line 30
    .line 31
    .line 32
    packed-switch v0, :pswitch_data_412

    .line 33
    .line 34
    .line 35
    goto/16 :goto_33f

    .line 36
    .line 37
    :pswitch_24
    const-string v0, "kotlin.jvm.functions.Function9"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2e

    .line 44
    .line 45
    goto/16 :goto_33f

    .line 46
    .line 47
    :cond_2e
    const-string p1, "Function9"

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_31
    const-string v0, "kotlin.jvm.functions.Function8"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3b

    .line 57
    .line 58
    goto/16 :goto_33f

    .line 59
    .line 60
    :cond_3b
    const-string p1, "Function8"

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_3e
    const-string v0, "kotlin.jvm.functions.Function7"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_48

    .line 70
    .line 71
    goto/16 :goto_33f

    .line 72
    .line 73
    :cond_48
    const-string p1, "Function7"

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_4b
    const-string v0, "kotlin.jvm.functions.Function6"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_55

    .line 83
    .line 84
    goto/16 :goto_33f

    .line 85
    .line 86
    :cond_55
    const-string p1, "Function6"

    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_58
    const-string v0, "kotlin.jvm.functions.Function5"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_62

    .line 96
    .line 97
    goto/16 :goto_33f

    .line 98
    .line 99
    :cond_62
    const-string p1, "Function5"

    .line 100
    .line 101
    return-object p1

    .line 102
    :pswitch_65
    const-string v0, "kotlin.jvm.functions.Function4"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_6f

    .line 109
    .line 110
    goto/16 :goto_33f

    .line 111
    .line 112
    :cond_6f
    const-string p1, "Function4"

    .line 113
    .line 114
    return-object p1

    .line 115
    :pswitch_72
    const-string v0, "kotlin.jvm.functions.Function3"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_7c

    .line 122
    .line 123
    goto/16 :goto_33f

    .line 124
    .line 125
    :cond_7c
    const-string p1, "Function3"

    .line 126
    .line 127
    return-object p1

    .line 128
    :pswitch_7f
    const-string v0, "kotlin.jvm.functions.Function2"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_89

    .line 135
    .line 136
    goto/16 :goto_33f

    .line 137
    .line 138
    :cond_89
    const-string p1, "Function2"

    .line 139
    .line 140
    return-object p1

    .line 141
    :pswitch_8c
    const-string v0, "kotlin.jvm.functions.Function1"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_96

    .line 148
    .line 149
    goto/16 :goto_33f

    .line 150
    .line 151
    :cond_96
    const-string p1, "Function1"

    .line 152
    .line 153
    return-object p1

    .line 154
    :pswitch_99
    const-string v0, "kotlin.jvm.functions.Function0"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_a3

    .line 161
    .line 162
    goto/16 :goto_33f

    .line 163
    .line 164
    :cond_a3
    const-string p1, "Function0"

    .line 165
    .line 166
    return-object p1

    .line 167
    :pswitch_a6
    const-string v0, "kotlin.jvm.functions.Function22"

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_b0

    .line 174
    .line 175
    goto/16 :goto_33f

    .line 176
    .line 177
    :cond_b0
    const-string p1, "Function22"

    .line 178
    .line 179
    return-object p1

    .line 180
    :pswitch_b3
    const-string v0, "kotlin.jvm.functions.Function21"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_bd

    .line 187
    .line 188
    goto/16 :goto_33f

    .line 189
    .line 190
    :cond_bd
    const-string p1, "Function21"

    .line 191
    .line 192
    return-object p1

    .line 193
    :pswitch_c0
    const-string v0, "kotlin.jvm.functions.Function20"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_ca

    .line 200
    .line 201
    goto/16 :goto_33f

    .line 202
    .line 203
    :cond_ca
    const-string p1, "Function20"

    .line 204
    .line 205
    return-object p1

    .line 206
    :pswitch_cd
    const-string v0, "kotlin.jvm.functions.Function19"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_d7

    .line 213
    .line 214
    goto/16 :goto_33f

    .line 215
    .line 216
    :cond_d7
    const-string p1, "Function19"

    .line 217
    .line 218
    return-object p1

    .line 219
    :pswitch_da
    const-string v0, "kotlin.jvm.functions.Function18"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_e4

    .line 226
    .line 227
    goto/16 :goto_33f

    .line 228
    .line 229
    :cond_e4
    const-string p1, "Function18"

    .line 230
    .line 231
    return-object p1

    .line 232
    :pswitch_e7
    const-string v0, "kotlin.jvm.functions.Function17"

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_f1

    .line 239
    .line 240
    goto/16 :goto_33f

    .line 241
    .line 242
    :cond_f1
    const-string p1, "Function17"

    .line 243
    .line 244
    return-object p1

    .line 245
    :pswitch_f4
    const-string v0, "kotlin.jvm.functions.Function16"

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_fe

    .line 252
    .line 253
    goto/16 :goto_33f

    .line 254
    .line 255
    :cond_fe
    const-string p1, "Function16"

    .line 256
    .line 257
    return-object p1

    .line 258
    :pswitch_101
    const-string v0, "kotlin.jvm.functions.Function15"

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_10b

    .line 265
    .line 266
    goto/16 :goto_33f

    .line 267
    .line 268
    :cond_10b
    const-string p1, "Function15"

    .line 269
    .line 270
    return-object p1

    .line 271
    :pswitch_10e
    const-string v0, "kotlin.jvm.functions.Function14"

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_118

    .line 278
    .line 279
    goto/16 :goto_33f

    .line 280
    .line 281
    :cond_118
    const-string p1, "Function14"

    .line 282
    .line 283
    return-object p1

    .line 284
    :pswitch_11b
    const-string v0, "kotlin.jvm.functions.Function13"

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_125

    .line 291
    .line 292
    goto/16 :goto_33f

    .line 293
    .line 294
    :cond_125
    const-string p1, "Function13"

    .line 295
    .line 296
    return-object p1

    .line 297
    :pswitch_128
    const-string v0, "kotlin.jvm.functions.Function12"

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_132

    .line 304
    .line 305
    goto/16 :goto_33f

    .line 306
    .line 307
    :cond_132
    const-string p1, "Function12"

    .line 308
    .line 309
    return-object p1

    .line 310
    :pswitch_135
    const-string v0, "kotlin.jvm.functions.Function11"

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-nez p1, :cond_13f

    .line 317
    .line 318
    goto/16 :goto_33f

    .line 319
    .line 320
    :cond_13f
    const-string p1, "Function11"

    .line 321
    .line 322
    return-object p1

    .line 323
    :pswitch_142
    const-string v0, "kotlin.jvm.functions.Function10"

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_14c

    .line 330
    .line 331
    goto/16 :goto_33f

    .line 332
    .line 333
    :cond_14c
    const-string p1, "Function10"

    .line 334
    .line 335
    return-object p1

    .line 336
    :sswitch_14f
    const-string v0, "kotlin.jvm.internal.IntCompanionObject"

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-nez p1, :cond_159

    .line 343
    .line 344
    goto/16 :goto_33f

    .line 345
    .line 346
    :cond_159
    return-object v9

    .line 347
    :sswitch_15a
    const-string v0, "java.lang.Throwable"

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_164

    .line 354
    .line 355
    goto/16 :goto_33f

    .line 356
    .line 357
    :cond_164
    const-string p1, "Throwable"

    .line 358
    .line 359
    return-object p1

    .line 360
    :sswitch_167
    const-string v0, "kotlin.jvm.internal.BooleanCompanionObject"

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_171

    .line 367
    .line 368
    goto/16 :goto_33f

    .line 369
    .line 370
    :cond_171
    return-object v9

    .line 371
    :sswitch_172
    const-string v0, "java.lang.Iterable"

    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_17c

    .line 378
    .line 379
    goto/16 :goto_33f

    .line 380
    .line 381
    :cond_17c
    const-string p1, "Iterable"

    .line 382
    .line 383
    return-object p1

    .line 384
    :sswitch_17f
    const-string v0, "java.lang.String"

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-nez p1, :cond_189

    .line 391
    .line 392
    goto/16 :goto_33f

    .line 393
    .line 394
    :cond_189
    const-string p1, "String"

    .line 395
    .line 396
    return-object p1

    .line 397
    :sswitch_18c
    const-string v0, "java.lang.Object"

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-nez p1, :cond_196

    .line 404
    .line 405
    goto/16 :goto_33f

    .line 406
    .line 407
    :cond_196
    const-string p1, "Any"

    .line 408
    .line 409
    return-object p1

    .line 410
    :sswitch_199
    const-string v0, "java.lang.Number"

    .line 411
    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-nez p1, :cond_1a3

    .line 417
    .line 418
    goto/16 :goto_33f

    .line 419
    .line 420
    :cond_1a3
    const-string p1, "Number"

    .line 421
    .line 422
    return-object p1

    .line 423
    :sswitch_1a6
    const-string v0, "java.lang.Double"

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-nez p1, :cond_1b0

    .line 430
    .line 431
    goto/16 :goto_33f

    .line 432
    .line 433
    :cond_1b0
    return-object v8

    .line 434
    :sswitch_1b1
    const-string v0, "kotlin.jvm.internal.StringCompanionObject"

    .line 435
    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-nez p1, :cond_1bb

    .line 441
    .line 442
    goto/16 :goto_33f

    .line 443
    .line 444
    :cond_1bb
    return-object v9

    .line 445
    :sswitch_1bc
    const-string v0, "java.util.ListIterator"

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-nez p1, :cond_1c6

    .line 452
    .line 453
    goto/16 :goto_33f

    .line 454
    .line 455
    :cond_1c6
    const-string p1, "ListIterator"

    .line 456
    .line 457
    return-object p1

    .line 458
    :sswitch_1c9
    const-string v0, "java.util.Iterator"

    .line 459
    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    if-nez p1, :cond_1d3

    .line 465
    .line 466
    goto/16 :goto_33f

    .line 467
    .line 468
    :cond_1d3
    const-string p1, "Iterator"

    .line 469
    .line 470
    return-object p1

    .line 471
    :sswitch_1d6
    const-string v0, "kotlin.jvm.internal.FloatCompanionObject"

    .line 472
    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-nez p1, :cond_1e0

    .line 478
    .line 479
    goto/16 :goto_33f

    .line 480
    .line 481
    :cond_1e0
    return-object v9

    .line 482
    :sswitch_1e1
    const-string v0, "java.lang.Long"

    .line 483
    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    if-nez p1, :cond_1eb

    .line 489
    .line 490
    goto/16 :goto_33f

    .line 491
    .line 492
    :cond_1eb
    return-object v7

    .line 493
    :sswitch_1ec
    const-string v0, "java.lang.Enum"

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    if-nez p1, :cond_1f6

    .line 500
    .line 501
    goto/16 :goto_33f

    .line 502
    .line 503
    :cond_1f6
    const-string p1, "Enum"

    .line 504
    .line 505
    return-object p1

    .line 506
    :sswitch_1f9
    const-string v0, "java.lang.Byte"

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    if-nez p1, :cond_203

    .line 513
    .line 514
    goto/16 :goto_33f

    .line 515
    .line 516
    :cond_203
    return-object v6

    .line 517
    :sswitch_204
    const-string v0, "java.lang.Boolean"

    .line 518
    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-nez p1, :cond_20e

    .line 524
    .line 525
    goto/16 :goto_33f

    .line 526
    .line 527
    :cond_20e
    return-object v5

    .line 528
    :sswitch_20f
    const-string v0, "kotlin.jvm.internal.EnumCompanionObject"

    .line 529
    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-nez p1, :cond_219

    .line 535
    .line 536
    goto/16 :goto_33f

    .line 537
    .line 538
    :cond_219
    return-object v9

    .line 539
    :sswitch_21a
    const-string v0, "java.lang.Character"

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-nez p1, :cond_224

    .line 546
    .line 547
    goto/16 :goto_33f

    .line 548
    .line 549
    :cond_224
    return-object v4

    .line 550
    :sswitch_225
    const-string v0, "short"

    .line 551
    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result p1

    .line 556
    if-nez p1, :cond_22f

    .line 557
    .line 558
    goto/16 :goto_33f

    .line 559
    .line 560
    :cond_22f
    return-object v3

    .line 561
    :sswitch_230
    const-string v0, "float"

    .line 562
    .line 563
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    if-nez p1, :cond_23a

    .line 568
    .line 569
    goto/16 :goto_33f

    .line 570
    .line 571
    :cond_23a
    return-object v2

    .line 572
    :sswitch_23b
    const-string v0, "kotlin.jvm.internal.ShortCompanionObject"

    .line 573
    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-nez p1, :cond_245

    .line 579
    .line 580
    goto/16 :goto_33f

    .line 581
    .line 582
    :cond_245
    return-object v9

    .line 583
    :sswitch_246
    const-string v0, "java.util.List"

    .line 584
    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-nez p1, :cond_250

    .line 590
    .line 591
    goto/16 :goto_33f

    .line 592
    .line 593
    :cond_250
    const-string p1, "List"

    .line 594
    .line 595
    return-object p1

    .line 596
    :sswitch_253
    const-string v0, "boolean"

    .line 597
    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    if-nez p1, :cond_25d

    .line 603
    .line 604
    goto/16 :goto_33f

    .line 605
    .line 606
    :cond_25d
    return-object v5

    .line 607
    :sswitch_25e
    const-string v0, "long"

    .line 608
    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-nez p1, :cond_268

    .line 614
    .line 615
    goto/16 :goto_33f

    .line 616
    .line 617
    :cond_268
    return-object v7

    .line 618
    :sswitch_269
    const-string v0, "char"

    .line 619
    .line 620
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result p1

    .line 624
    if-nez p1, :cond_273

    .line 625
    .line 626
    goto/16 :goto_33f

    .line 627
    .line 628
    :cond_273
    return-object v4

    .line 629
    :sswitch_274
    const-string v0, "byte"

    .line 630
    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-nez p1, :cond_27e

    .line 636
    .line 637
    goto/16 :goto_33f

    .line 638
    .line 639
    :cond_27e
    return-object v6

    .line 640
    :sswitch_27f
    const-string v0, "int"

    .line 641
    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    if-nez p1, :cond_289

    .line 647
    .line 648
    goto/16 :goto_33f

    .line 649
    .line 650
    :cond_289
    return-object v1

    .line 651
    :sswitch_28a
    const-string v0, "java.util.Map$Entry"

    .line 652
    .line 653
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-nez p1, :cond_294

    .line 658
    .line 659
    goto/16 :goto_33f

    .line 660
    .line 661
    :cond_294
    const-string p1, "Entry"

    .line 662
    .line 663
    return-object p1

    .line 664
    :sswitch_297
    const-string v0, "kotlin.jvm.internal.LongCompanionObject"

    .line 665
    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-nez p1, :cond_2a1

    .line 671
    .line 672
    goto/16 :goto_33f

    .line 673
    .line 674
    :cond_2a1
    return-object v9

    .line 675
    :sswitch_2a2
    const-string v0, "kotlin.jvm.internal.CharCompanionObject"

    .line 676
    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result p1

    .line 681
    if-nez p1, :cond_2ac

    .line 682
    .line 683
    goto/16 :goto_33f

    .line 684
    .line 685
    :cond_2ac
    return-object v9

    .line 686
    :sswitch_2ad
    const-string v0, "java.lang.Short"

    .line 687
    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result p1

    .line 692
    if-nez p1, :cond_2b7

    .line 693
    .line 694
    goto/16 :goto_33f

    .line 695
    .line 696
    :cond_2b7
    return-object v3

    .line 697
    :sswitch_2b8
    const-string v0, "java.lang.Float"

    .line 698
    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result p1

    .line 703
    if-nez p1, :cond_2c2

    .line 704
    .line 705
    goto/16 :goto_33f

    .line 706
    .line 707
    :cond_2c2
    return-object v2

    .line 708
    :sswitch_2c3
    const-string v0, "java.util.Collection"

    .line 709
    .line 710
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result p1

    .line 714
    if-nez p1, :cond_2cd

    .line 715
    .line 716
    goto/16 :goto_33f

    .line 717
    .line 718
    :cond_2cd
    const-string p1, "Collection"

    .line 719
    .line 720
    return-object p1

    .line 721
    :sswitch_2d0
    const-string v0, "java.lang.CharSequence"

    .line 722
    .line 723
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    if-nez p1, :cond_2da

    .line 728
    .line 729
    goto/16 :goto_33f

    .line 730
    .line 731
    :cond_2da
    const-string p1, "CharSequence"

    .line 732
    .line 733
    return-object p1

    .line 734
    :sswitch_2dd
    const-string v0, "kotlin.jvm.internal.ByteCompanionObject"

    .line 735
    .line 736
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result p1

    .line 740
    if-nez p1, :cond_2e6

    .line 741
    .line 742
    goto :goto_33f

    .line 743
    :cond_2e6
    return-object v9

    .line 744
    :sswitch_2e7
    const-string v0, "double"

    .line 745
    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    if-nez p1, :cond_2f0

    .line 751
    .line 752
    goto :goto_33f

    .line 753
    :cond_2f0
    return-object v8

    .line 754
    :sswitch_2f1
    const-string v0, "java.util.Set"

    .line 755
    .line 756
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    if-nez p1, :cond_2fa

    .line 761
    .line 762
    goto :goto_33f

    .line 763
    :cond_2fa
    const-string p1, "Set"

    .line 764
    .line 765
    return-object p1

    .line 766
    :sswitch_2fd
    const-string v0, "java.util.Map"

    .line 767
    .line 768
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result p1

    .line 772
    if-nez p1, :cond_306

    .line 773
    .line 774
    goto :goto_33f

    .line 775
    :cond_306
    const-string p1, "Map"

    .line 776
    .line 777
    return-object p1

    .line 778
    :sswitch_309
    const-string v0, "java.lang.Comparable"

    .line 779
    .line 780
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result p1

    .line 784
    if-nez p1, :cond_312

    .line 785
    .line 786
    goto :goto_33f

    .line 787
    :cond_312
    const-string p1, "Comparable"

    .line 788
    .line 789
    return-object p1

    .line 790
    :sswitch_315
    const-string v0, "java.lang.annotation.Annotation"

    .line 791
    .line 792
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result p1

    .line 796
    if-nez p1, :cond_31e

    .line 797
    .line 798
    goto :goto_33f

    .line 799
    :cond_31e
    const-string p1, "Annotation"

    .line 800
    .line 801
    return-object p1

    .line 802
    :sswitch_321
    const-string v0, "java.lang.Cloneable"

    .line 803
    .line 804
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result p1

    .line 808
    if-nez p1, :cond_32a

    .line 809
    .line 810
    goto :goto_33f

    .line 811
    :cond_32a
    const-string p1, "Cloneable"

    .line 812
    .line 813
    return-object p1

    .line 814
    :sswitch_32d
    const-string v0, "java.lang.Integer"

    .line 815
    .line 816
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result p1

    .line 820
    if-nez p1, :cond_336

    .line 821
    .line 822
    goto :goto_33f

    .line 823
    :cond_336
    return-object v1

    .line 824
    :sswitch_337
    const-string v0, "kotlin.jvm.internal.DoubleCompanionObject"

    .line 825
    .line 826
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result p1

    .line 830
    if-nez p1, :cond_341

    .line 831
    .line 832
    :goto_33f
    const/4 p1, 0x0

    .line 833
    return-object p1

    .line 834
    :cond_341
    return-object v9

    .line 835
    :sswitch_data_342
    .sparse-switch
        -0x7ae0c43d -> :sswitch_337
        -0x7a988a96 -> :sswitch_32d
        -0x793eea9d -> :sswitch_321
        -0x75fda146 -> :sswitch_315
        -0x5dab6ad2 -> :sswitch_309
        -0x52743c64 -> :sswitch_2fd
        -0x5274255e -> :sswitch_2f1
        -0x4f08842f -> :sswitch_2e7
        -0x46781814 -> :sswitch_2dd
        -0x3f507f75 -> :sswitch_2d0
        -0x2906f7a2 -> :sswitch_2c3
        -0x1f76ce78 -> :sswitch_2b8
        -0x1ec16c58 -> :sswitch_2ad
        -0xeb0f022 -> :sswitch_2a2
        -0xc5a9408 -> :sswitch_297
        -0x9d7d2b6 -> :sswitch_28a
        0x197ef -> :sswitch_27f
        0x2e6108 -> :sswitch_274
        0x2e9356 -> :sswitch_269
        0x32c67c -> :sswitch_25e
        0x3db6c28 -> :sswitch_253
        0x3ec5a5e -> :sswitch_246
        0x49a71c6 -> :sswitch_23b
        0x5d0225c -> :sswitch_230
        0x685847c -> :sswitch_225
        0x9415455 -> :sswitch_21a
        0xd7b22d3 -> :sswitch_20f
        0x148d6054 -> :sswitch_204
        0x17c0bc5c -> :sswitch_1f9
        0x17c1f055 -> :sswitch_1ec
        0x17c521d0 -> :sswitch_1e1
        0x1cc457e6 -> :sswitch_1d6
        0x1dcad22e -> :sswitch_1c9
        0x226988ec -> :sswitch_1bc
        0x23b44f83 -> :sswitch_1b1
        0x2d605225 -> :sswitch_1a6
        0x3ec1b19d -> :sswitch_199
        0x3f697993 -> :sswitch_18c
        0x473e3665 -> :sswitch_17f
        0x4c0855c6 -> :sswitch_172
        0x52797ada -> :sswitch_167
        0x612cf26c -> :sswitch_15a
        0x6fe35bb3 -> :sswitch_14f
    .end sparse-switch

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    :pswitch_data_3f0
    .packed-switch -0x6bf3d83c
        :pswitch_142
        :pswitch_135
        :pswitch_128
        :pswitch_11b
        :pswitch_10e
        :pswitch_101
        :pswitch_f4
        :pswitch_e7
        :pswitch_da
        :pswitch_cd
    .end packed-switch

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    :pswitch_data_408
    .packed-switch -0x6bf3d81d
        :pswitch_c0
        :pswitch_b3
        :pswitch_a6
    .end packed-switch

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :pswitch_data_412
    .packed-switch 0x4c695eb
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_4b
        :pswitch_3e
        :pswitch_31
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public final getClassQualifiedName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_38

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_32

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference$Companion;->classFqNameOf(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_32

    .line 44
    .line 45
    const-string v0, "Array"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    if-nez v1, :cond_37

    .line 52
    .line 53
    const-string p1, "kotlin.Array"

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_37
    return-object v1

    .line 57
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/ClassReference$Companion;->classFqNameOf(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_47

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_47
    return-object v0
.end method

.method public final getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5b

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x24

    .line 27
    .line 28
    if-eqz v1, :cond_38

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_37

    .line 54
    .line 55
    goto :goto_38

    .line 56
    :cond_37
    return-object v1

    .line 57
    :cond_38
    :goto_38
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_56

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_56
    invoke-static {v0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7f

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const-string v2, "Array"

    .line 107
    .line 108
    if-eqz v0, :cond_7b

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_7b

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_7b
    if-nez v1, :cond_7e

    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_7e
    return-object v1

    .line 128
    :cond_7f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_8e

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :cond_8e
    return-object v0
.end method

.method public final isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    # getter for: Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;
    invoke-static {}, Lkotlin/jvm/internal/ClassReference;->access$getFUNCTION_CLASSES$cp()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v0, :cond_1b

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_29

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :cond_29
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method
