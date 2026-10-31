.class public final Landroidx/core/os/BundleKt;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "bundleOf",
        "Landroid/os/Bundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/Bundle;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final bundleOf()Landroid/os/Bundle;
    .registers 2

    .line 416
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    return-object v0
.end method

.method public static final varargs bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_19e

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1e

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_18c

    .line 30
    .line 31
    :cond_1e
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz v5, :cond_2d

    .line 34
    .line 35
    check-cast v3, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_18c

    .line 45
    .line 46
    :cond_2d
    instance-of v5, v3, Ljava/lang/Byte;

    .line 47
    .line 48
    if-eqz v5, :cond_3c

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_18c

    .line 60
    .line 61
    :cond_3c
    instance-of v5, v3, Ljava/lang/Character;

    .line 62
    .line 63
    if-eqz v5, :cond_4b

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Character;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_18c

    .line 75
    .line 76
    :cond_4b
    instance-of v5, v3, Ljava/lang/Double;

    .line 77
    .line 78
    if-eqz v5, :cond_5a

    .line 79
    .line 80
    check-cast v3, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_18c

    .line 90
    .line 91
    :cond_5a
    instance-of v5, v3, Ljava/lang/Float;

    .line 92
    .line 93
    if-eqz v5, :cond_69

    .line 94
    .line 95
    check-cast v3, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_18c

    .line 105
    .line 106
    :cond_69
    instance-of v5, v3, Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v5, :cond_78

    .line 109
    .line 110
    check-cast v3, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_18c

    .line 120
    .line 121
    :cond_78
    instance-of v5, v3, Ljava/lang/Long;

    .line 122
    .line 123
    if-eqz v5, :cond_87

    .line 124
    .line 125
    check-cast v3, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_18c

    .line 135
    .line 136
    :cond_87
    instance-of v5, v3, Ljava/lang/Short;

    .line 137
    .line 138
    if-eqz v5, :cond_96

    .line 139
    .line 140
    check-cast v3, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_18c

    .line 150
    .line 151
    :cond_96
    instance-of v5, v3, Landroid/os/Bundle;

    .line 152
    .line 153
    if-eqz v5, :cond_a1

    .line 154
    .line 155
    check-cast v3, Landroid/os/Bundle;

    .line 156
    .line 157
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_18c

    .line 161
    .line 162
    :cond_a1
    instance-of v5, v3, Ljava/lang/CharSequence;

    .line 163
    .line 164
    if-eqz v5, :cond_ac

    .line 165
    .line 166
    check-cast v3, Ljava/lang/CharSequence;

    .line 167
    .line 168
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_18c

    .line 172
    .line 173
    :cond_ac
    instance-of v5, v3, Landroid/os/Parcelable;

    .line 174
    .line 175
    if-eqz v5, :cond_b7

    .line 176
    .line 177
    check-cast v3, Landroid/os/Parcelable;

    .line 178
    .line 179
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_18c

    .line 183
    .line 184
    :cond_b7
    instance-of v5, v3, [Z

    .line 185
    .line 186
    if-eqz v5, :cond_c2

    .line 187
    .line 188
    check-cast v3, [Z

    .line 189
    .line 190
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_18c

    .line 194
    .line 195
    :cond_c2
    instance-of v5, v3, [B

    .line 196
    .line 197
    if-eqz v5, :cond_cd

    .line 198
    .line 199
    check-cast v3, [B

    .line 200
    .line 201
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_18c

    .line 205
    .line 206
    :cond_cd
    instance-of v5, v3, [C

    .line 207
    .line 208
    if-eqz v5, :cond_d8

    .line 209
    .line 210
    check-cast v3, [C

    .line 211
    .line 212
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_18c

    .line 216
    .line 217
    :cond_d8
    instance-of v5, v3, [D

    .line 218
    .line 219
    if-eqz v5, :cond_e3

    .line 220
    .line 221
    check-cast v3, [D

    .line 222
    .line 223
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_18c

    .line 227
    .line 228
    :cond_e3
    instance-of v5, v3, [F

    .line 229
    .line 230
    if-eqz v5, :cond_ee

    .line 231
    .line 232
    check-cast v3, [F

    .line 233
    .line 234
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_18c

    .line 238
    .line 239
    :cond_ee
    instance-of v5, v3, [I

    .line 240
    .line 241
    if-eqz v5, :cond_f9

    .line 242
    .line 243
    check-cast v3, [I

    .line 244
    .line 245
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_18c

    .line 249
    .line 250
    :cond_f9
    instance-of v5, v3, [J

    .line 251
    .line 252
    if-eqz v5, :cond_104

    .line 253
    .line 254
    check-cast v3, [J

    .line 255
    .line 256
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_18c

    .line 260
    .line 261
    :cond_104
    instance-of v5, v3, [S

    .line 262
    .line 263
    if-eqz v5, :cond_10f

    .line 264
    .line 265
    check-cast v3, [S

    .line 266
    .line 267
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_18c

    .line 271
    .line 272
    :cond_10f
    instance-of v5, v3, [Ljava/lang/Object;

    .line 273
    .line 274
    const/16 v6, 0x22

    .line 275
    .line 276
    const-string v7, " for key \""

    .line 277
    .line 278
    if-eqz v5, :cond_165

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    const-class v8, Landroid/os/Parcelable;

    .line 292
    .line 293
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_130

    .line 298
    .line 299
    check-cast v3, [Landroid/os/Parcelable;

    .line 300
    .line 301
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 302
    .line 303
    .line 304
    goto :goto_18c

    .line 305
    :cond_130
    const-class v8, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-eqz v8, :cond_13e

    .line 312
    .line 313
    check-cast v3, [Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_18c

    .line 319
    :cond_13e
    const-class v8, Ljava/lang/CharSequence;

    .line 320
    .line 321
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    if-eqz v8, :cond_14c

    .line 326
    .line 327
    check-cast v3, [Ljava/lang/CharSequence;

    .line 328
    .line 329
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    goto :goto_18c

    .line 333
    :cond_14c
    const-class v8, Ljava/io/Serializable;

    .line 334
    .line 335
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    if-eqz v8, :cond_15a

    .line 340
    .line 341
    check-cast v3, Ljava/io/Serializable;

    .line 342
    .line 343
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 344
    .line 345
    .line 346
    goto :goto_18c

    .line 347
    :cond_15a
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    const-string v0, "Illegal value array type "

    .line 352
    .line 353
    invoke-static {v0, p0, v7, v4, v6}, Lai/onnxruntime/b;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 354
    .line 355
    .line 356
    :goto_163
    const/4 p0, 0x0

    .line 357
    return-object p0

    .line 358
    :cond_165
    instance-of v5, v3, Ljava/io/Serializable;

    .line 359
    .line 360
    if-eqz v5, :cond_16f

    .line 361
    .line 362
    check-cast v3, Ljava/io/Serializable;

    .line 363
    .line 364
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 365
    .line 366
    .line 367
    goto :goto_18c

    .line 368
    :cond_16f
    instance-of v5, v3, Landroid/os/IBinder;

    .line 369
    .line 370
    if-eqz v5, :cond_179

    .line 371
    .line 372
    check-cast v3, Landroid/os/IBinder;

    .line 373
    .line 374
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 375
    .line 376
    .line 377
    goto :goto_18c

    .line 378
    :cond_179
    instance-of v5, v3, Landroid/util/Size;

    .line 379
    .line 380
    if-eqz v5, :cond_183

    .line 381
    .line 382
    check-cast v3, Landroid/util/Size;

    .line 383
    .line 384
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->putSize(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    .line 385
    .line 386
    .line 387
    goto :goto_18c

    .line 388
    :cond_183
    instance-of v5, v3, Landroid/util/SizeF;

    .line 389
    .line 390
    if-eqz v5, :cond_190

    .line 391
    .line 392
    check-cast v3, Landroid/util/SizeF;

    .line 393
    .line 394
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->putSizeF(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    .line 395
    .line 396
    .line 397
    :goto_18c
    add-int/lit8 v2, v2, 0x1

    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_190
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    const-string v0, "Illegal value type "

    .line 410
    .line 411
    invoke-static {v0, p0, v7, v4, v6}, Lai/onnxruntime/b;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    goto :goto_163

    .line 415
    :cond_19e
    return-object v0
.end method
