.class public final Lq0/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:J

.field public final d:Ljava/lang/Double;

.field public final e:Ljava/lang/Float;

.field public final f:Ljava/lang/Float;

.field public final g:Ljava/lang/Float;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/Float;

.field public final l:Ljava/lang/Float;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V
    .registers 17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lq0/q;->a:D

    .line 5
    .line 6
    iput-wide p3, p0, Lq0/q;->b:D

    .line 7
    .line 8
    iput-wide p5, p0, Lq0/q;->c:J

    .line 9
    .line 10
    iput-object p7, p0, Lq0/q;->d:Ljava/lang/Double;

    .line 11
    .line 12
    iput-object p8, p0, Lq0/q;->e:Ljava/lang/Float;

    .line 13
    .line 14
    iput-object p9, p0, Lq0/q;->f:Ljava/lang/Float;

    .line 15
    .line 16
    iput-object p10, p0, Lq0/q;->g:Ljava/lang/Float;

    .line 17
    .line 18
    iput p11, p0, Lq0/q;->h:I

    .line 19
    .line 20
    iput p12, p0, Lq0/q;->i:I

    .line 21
    .line 22
    iput p13, p0, Lq0/q;->j:I

    .line 23
    .line 24
    iput-object p14, p0, Lq0/q;->k:Ljava/lang/Float;

    .line 25
    .line 26
    iput-object p15, p0, Lq0/q;->l:Ljava/lang/Float;

    .line 27
    .line 28
    move-object/from16 p1, p16

    .line 29
    .line 30
    iput-object p1, p0, Lq0/q;->m:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public static a(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lq0/q;
    .registers 35

    .line 1
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v0, p0, v0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-ltz v0, :cond_73

    .line 11
    .line 12
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmpl-double v0, p0, v2

    .line 18
    .line 19
    if-gtz v0, :cond_73

    .line 20
    .line 21
    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpg-double v0, p2, v2

    .line 27
    .line 28
    if-ltz v0, :cond_73

    .line 29
    .line 30
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpl-double v0, p2, v2

    .line 36
    .line 37
    if-gtz v0, :cond_73

    .line 38
    .line 39
    new-instance v2, Lq0/q;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    cmp-long v0, p4, v3

    .line 44
    .line 45
    if-lez v0, :cond_31

    .line 46
    .line 47
    move-wide/from16 v7, p4

    .line 48
    .line 49
    goto :goto_36

    .line 50
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    move-wide v7, v3

    .line 55
    :goto_36
    if-eqz p15, :cond_5c

    .line 56
    .line 57
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_43

    .line 66
    .line 67
    goto :goto_5c

    .line 68
    :cond_43
    move-object/from16 v18, p15

    .line 69
    .line 70
    :goto_45
    move-wide/from16 v3, p0

    .line 71
    .line 72
    move-wide/from16 v5, p2

    .line 73
    .line 74
    move-object/from16 v9, p6

    .line 75
    .line 76
    move-object/from16 v10, p7

    .line 77
    .line 78
    move-object/from16 v11, p8

    .line 79
    .line 80
    move-object/from16 v12, p9

    .line 81
    .line 82
    move/from16 v13, p10

    .line 83
    .line 84
    move/from16 v14, p11

    .line 85
    .line 86
    move/from16 v15, p12

    .line 87
    .line 88
    move-object/from16 v16, p13

    .line 89
    .line 90
    move-object/from16 v17, p14

    .line 91
    .line 92
    goto :goto_6f

    .line 93
    :cond_5c
    :goto_5c
    const/16 v0, 0xa

    .line 94
    .line 95
    new-array v0, v0, [B

    .line 96
    .line 97
    fill-array-data v0, :array_8a

    .line 98
    .line 99
    .line 100
    new-array v1, v1, [B

    .line 101
    .line 102
    fill-array-data v1, :array_94

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object/from16 v18, v0

    .line 110
    .line 111
    goto :goto_45

    .line 112
    :goto_6f
    invoke-direct/range {v2 .. v18}, Lq0/q;-><init>(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_73
    new-instance v0, Lorg/json/JSONException;

    .line 117
    .line 118
    const/16 v2, 0x13

    .line 119
    .line 120
    new-array v2, v2, [B

    .line 121
    .line 122
    fill-array-data v2, :array_9c

    .line 123
    .line 124
    .line 125
    new-array v1, v1, [B

    .line 126
    .line 127
    fill-array-data v1, :array_aa

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    nop

    .line 139
    :array_8a
    .array-data 1
        -0x3bt
        -0x24t
        -0x2ct
        0x1dt
        0x58t
        -0x45t
        -0x79t
        -0x7t
        -0x39t
        -0x36t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    :array_94
    .array-data 1
        -0x49t
        -0x47t
        -0x47t
        0x72t
        0x2ct
        -0x22t
        -0x28t
        -0x62t
    .end array-data

    :array_9c
    .array-data 1
        -0x1t
        -0x64t
        0x6dt
        0x39t
        0x72t
        0x27t
        0xet
        -0x36t
        -0x2bt
        -0x63t
        0x74t
        0x2at
        0x7at
        0x27t
        0x4t
        -0x75t
        -0x3et
        -0x69t
        0x68t
    .end array-data

    :array_aa
    .array-data 1
        -0x4at
        -0xet
        0x1bt
        0x58t
        0x1et
        0x4et
        0x6at
        -0x16t
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Lq0/q;
    .registers 26

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1f2

    .line 12
    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    fill-array-data v4, :array_1f8

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x3

    .line 26
    new-array v5, v4, [B

    .line 27
    .line 28
    fill-array-data v5, :array_200

    .line 29
    .line 30
    .line 31
    new-array v6, v3, [B

    .line 32
    .line 33
    fill-array-data v6, :array_206

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-array v5, v4, [B

    .line 45
    .line 46
    fill-array-data v5, :array_20e

    .line 47
    .line 48
    .line 49
    new-array v6, v3, [B

    .line 50
    .line 51
    fill-array-data v6, :array_214

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x0

    .line 63
    if-nez v5, :cond_55

    .line 64
    .line 65
    new-array v5, v3, [B

    .line 66
    .line 67
    fill-array-data v5, :array_21c

    .line 68
    .line 69
    .line 70
    new-array v7, v3, [B

    .line 71
    .line 72
    fill-array-data v7, :array_224

    .line 73
    .line 74
    .line 75
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_55

    .line 84
    .line 85
    return-object v6

    .line 86
    :cond_55
    new-array v2, v4, [B

    .line 87
    .line 88
    fill-array-data v2, :array_22c

    .line 89
    .line 90
    .line 91
    new-array v5, v3, [B

    .line 92
    .line 93
    fill-array-data v5, :array_232

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-array v5, v3, [B

    .line 101
    .line 102
    fill-array-data v5, :array_23a

    .line 103
    .line 104
    .line 105
    new-array v7, v3, [B

    .line 106
    .line 107
    fill-array-data v7, :array_242

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_7d

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    :goto_7b
    move-wide v9, v7

    .line 125
    goto :goto_82

    .line 126
    :cond_7d
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 127
    .line 128
    .line 129
    move-result-wide v7

    .line 130
    goto :goto_7b

    .line 131
    :goto_82
    new-array v2, v4, [B

    .line 132
    .line 133
    fill-array-data v2, :array_24a

    .line 134
    .line 135
    .line 136
    new-array v4, v3, [B

    .line 137
    .line 138
    fill-array-data v4, :array_250

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/16 v4, 0x9

    .line 146
    .line 147
    new-array v5, v4, [B

    .line 148
    .line 149
    fill-array-data v5, :array_258

    .line 150
    .line 151
    .line 152
    new-array v7, v3, [B

    .line 153
    .line 154
    fill-array-data v7, :array_262

    .line 155
    .line 156
    .line 157
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_ac

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    :goto_aa
    move-wide v11, v7

    .line 172
    goto :goto_b1

    .line 173
    :cond_ac
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 174
    .line 175
    .line 176
    move-result-wide v7

    .line 177
    goto :goto_aa

    .line 178
    :goto_b1
    new-array v1, v1, [B

    .line 179
    .line 180
    fill-array-data v1, :array_26a

    .line 181
    .line 182
    .line 183
    new-array v2, v3, [B

    .line 184
    .line 185
    fill-array-data v2, :array_270

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-array v2, v4, [B

    .line 193
    .line 194
    fill-array-data v2, :array_278

    .line 195
    .line 196
    .line 197
    new-array v4, v3, [B

    .line 198
    .line 199
    fill-array-data v4, :array_282

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    new-array v1, v3, [B

    .line 219
    .line 220
    fill-array-data v1, :array_28a

    .line 221
    .line 222
    .line 223
    new-array v2, v3, [B

    .line 224
    .line 225
    fill-array-data v2, :array_292

    .line 226
    .line 227
    .line 228
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_fc

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_f4

    .line 243
    .line 244
    goto :goto_fc

    .line 245
    :cond_f4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 246
    .line 247
    .line 248
    move-result-wide v1

    .line 249
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    :cond_fc
    :goto_fc
    move-object v15, v6

    .line 254
    new-array v1, v3, [B

    .line 255
    .line 256
    fill-array-data v1, :array_29a

    .line 257
    .line 258
    .line 259
    new-array v2, v3, [B

    .line 260
    .line 261
    fill-array-data v2, :array_2a2

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    filled-new-array {v1}, [Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lq0/q;->c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;

    .line 273
    .line 274
    .line 275
    move-result-object v16

    .line 276
    const/4 v1, 0x7

    .line 277
    new-array v2, v1, [B

    .line 278
    .line 279
    fill-array-data v2, :array_2aa

    .line 280
    .line 281
    .line 282
    new-array v4, v3, [B

    .line 283
    .line 284
    fill-array-data v4, :array_2b2

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    filled-new-array {v2}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v0, v2}, Lq0/q;->c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;

    .line 296
    .line 297
    .line 298
    move-result-object v17

    .line 299
    const/4 v2, 0x5

    .line 300
    new-array v2, v2, [B

    .line 301
    .line 302
    fill-array-data v2, :array_2ba

    .line 303
    .line 304
    .line 305
    new-array v4, v3, [B

    .line 306
    .line 307
    fill-array-data v4, :array_2c2

    .line 308
    .line 309
    .line 310
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    filled-new-array {v2}, [Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v0, v2}, Lq0/q;->c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;

    .line 319
    .line 320
    .line 321
    move-result-object v18

    .line 322
    const/16 v2, 0xa

    .line 323
    .line 324
    new-array v2, v2, [B

    .line 325
    .line 326
    fill-array-data v2, :array_2ca

    .line 327
    .line 328
    .line 329
    new-array v4, v3, [B

    .line 330
    .line 331
    fill-array-data v4, :array_2d4

    .line 332
    .line 333
    .line 334
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    const/4 v4, 0x0

    .line 339
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v19

    .line 343
    const/16 v2, 0x11

    .line 344
    .line 345
    new-array v2, v2, [B

    .line 346
    .line 347
    fill-array-data v2, :array_2dc

    .line 348
    .line 349
    .line 350
    new-array v5, v3, [B

    .line 351
    .line 352
    fill-array-data v5, :array_2ea

    .line 353
    .line 354
    .line 355
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 360
    .line 361
    .line 362
    move-result v20

    .line 363
    const/16 v2, 0x13

    .line 364
    .line 365
    new-array v2, v2, [B

    .line 366
    .line 367
    fill-array-data v2, :array_2f2

    .line 368
    .line 369
    .line 370
    new-array v5, v3, [B

    .line 371
    .line 372
    fill-array-data v5, :array_300

    .line 373
    .line 374
    .line 375
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 380
    .line 381
    .line 382
    move-result v21

    .line 383
    new-array v1, v1, [B

    .line 384
    .line 385
    fill-array-data v1, :array_308

    .line 386
    .line 387
    .line 388
    new-array v2, v3, [B

    .line 389
    .line 390
    fill-array-data v2, :array_310

    .line 391
    .line 392
    .line 393
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    const/16 v2, 0xb

    .line 398
    .line 399
    new-array v2, v2, [B

    .line 400
    .line 401
    fill-array-data v2, :array_318

    .line 402
    .line 403
    .line 404
    new-array v4, v3, [B

    .line 405
    .line 406
    fill-array-data v4, :array_322

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Lq0/q;->c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;

    .line 418
    .line 419
    .line 420
    move-result-object v22

    .line 421
    const/4 v1, 0x6

    .line 422
    new-array v1, v1, [B

    .line 423
    .line 424
    fill-array-data v1, :array_32a

    .line 425
    .line 426
    .line 427
    new-array v2, v3, [B

    .line 428
    .line 429
    fill-array-data v2, :array_332

    .line 430
    .line 431
    .line 432
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    const/16 v2, 0xa

    .line 437
    .line 438
    new-array v2, v2, [B

    .line 439
    .line 440
    fill-array-data v2, :array_33a

    .line 441
    .line 442
    .line 443
    new-array v4, v3, [B

    .line 444
    .line 445
    fill-array-data v4, :array_344

    .line 446
    .line 447
    .line 448
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-static {v0, v1}, Lq0/q;->c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;

    .line 457
    .line 458
    .line 459
    move-result-object v23

    .line 460
    new-array v1, v3, [B

    .line 461
    .line 462
    fill-array-data v1, :array_34c

    .line 463
    .line 464
    .line 465
    new-array v2, v3, [B

    .line 466
    .line 467
    fill-array-data v2, :array_354

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    const/16 v2, 0xa

    .line 475
    .line 476
    new-array v2, v2, [B

    .line 477
    .line 478
    fill-array-data v2, :array_35c

    .line 479
    .line 480
    .line 481
    new-array v3, v3, [B

    .line 482
    .line 483
    fill-array-data v3, :array_366

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v24

    .line 494
    invoke-static/range {v9 .. v24}, Lq0/q;->a(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lq0/q;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    return-object v0

    .line 499
    :array_1f2
    .array-data 1
        -0x7at
        0x2t
        0x39t
        0x6dt
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_1f8
    .array-data 1
        -0xet
        0x7bt
        0x49t
        0x8t
        -0x2bt
        -0x38t
        -0x71t
        0x7ct
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_200
    .array-data 1
        0x5ct
        -0x77t
        -0x40t
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_206
    .array-data 1
        0x3bt
        -0x7t
        -0x4dt
        -0x31t
        0xct
        0x24t
        0x28t
        -0x4t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_20e
    .array-data 1
        -0x28t
        -0x78t
        -0xet
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_214
    .array-data 1
        -0x41t
        -0x8t
        -0x7ft
        0x6ft
        0x69t
        0x5t
        -0x1dt
        -0x39t
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_21c
    .array-data 1
        0x65t
        -0x22t
        -0x7dt
        -0x57t
        0x3t
        -0x7ct
        -0x41t
        0x6at
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_224
    .array-data 1
        0x9t
        -0x4ft
        -0x20t
        -0x38t
        0x77t
        -0x13t
        -0x30t
        0x4t
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_22c
    .array-data 1
        0x2t
        -0x7ft
        0x54t
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_232
    .array-data 1
        0x6et
        -0x20t
        0x20t
        -0x18t
        -0x35t
        -0x67t
        -0x1ft
        -0x6t
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_23a
    .array-data 1
        -0x71t
        -0x16t
        0x1dt
        0x20t
        -0x4at
        -0x20t
        -0x47t
        -0x25t
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_242
    .array-data 1
        -0x1dt
        -0x75t
        0x69t
        0x49t
        -0x3et
        -0x6bt
        -0x23t
        -0x42t
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_24a
    .array-data 1
        -0x7bt
        0x60t
        0x59t
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_250
    .array-data 1
        -0x17t
        0xft
        0x37t
        -0x72t
        0x72t
        0x4ft
        -0x79t
        -0x26t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_258
    .array-data 1
        -0x29t
        0x21t
        -0x69t
        0x28t
        0x5dt
        0x28t
        0x59t
        0x48t
        -0x22t
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    nop

    .line 611
    :array_262
    .array-data 1
        -0x45t
        0x4et
        -0x7t
        0x4ft
        0x34t
        0x5ct
        0x2ct
        0x2ct
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_26a
    .array-data 1
        -0x52t
        -0x41t
        -0x29t
        0x3ct
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_270
    .array-data 1
        -0x26t
        -0x2at
        -0x46t
        0x59t
        -0x2at
        -0x32t
        0x11t
        -0x62t
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_278
    .array-data 1
        -0x3dt
        -0x7t
        0x1dt
        -0x11t
        0x5et
        -0x21t
        -0x6t
        -0x4ft
        -0x39t
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    nop

    .line 643
    :array_282
    .array-data 1
        -0x49t
        -0x70t
        0x70t
        -0x76t
        0x2dt
        -0x55t
        -0x65t
        -0x24t
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_28a
    .array-data 1
        0x1ct
        0x72t
        0x7at
        0x54t
        0x37t
        0x42t
        -0x5at
        -0x43t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_292
    .array-data 1
        0x7dt
        0x1et
        0xet
        0x3dt
        0x43t
        0x37t
        -0x3et
        -0x28t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_29a
    .array-data 1
        -0x10t
        0xdt
        0x23t
        -0x64t
        0x7ft
        -0x46t
        0x14t
        -0x48t
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_2a2
    .array-data 1
        -0x6ft
        0x6et
        0x40t
        -0x17t
        0xdt
        -0x25t
        0x77t
        -0x3ft
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_2aa
    .array-data 1
        0x56t
        0xft
        0x3ct
        0x56t
        0x7bt
        0x3at
        -0x54t
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_2b2
    .array-data 1
        0x34t
        0x6at
        0x5dt
        0x24t
        0x12t
        0x54t
        -0x35t
        0x33t
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_2ba
    .array-data 1
        0x46t
        0x54t
        0xbt
        -0x4ct
        -0x3t
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    nop

    .line 707
    :array_2c2
    .array-data 1
        0x35t
        0x24t
        0x6et
        -0x2ft
        -0x67t
        -0x9t
        0x13t
        -0x5ft
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_2ca
    .array-data 1
        0x5et
        0x41t
        0x73t
        0x1at
        0x42t
        0x4ct
        -0x25t
        -0x5ft
        0x48t
        0x53t
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    nop

    .line 725
    :array_2d4
    .array-data 1
        0x2dt
        0x20t
        0x7t
        0x7ft
        0x2et
        0x20t
        -0x4et
        -0x2bt
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_2dc
    .array-data 1
        0x76t
        0x76t
        0x49t
        0xdt
        -0xdt
        0x3at
        -0x61t
        0x3ft
        0x60t
        0x64t
        0x6bt
        0x1t
        -0x14t
        0x3ft
        -0x6ct
        0x27t
        0x60t
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    nop

    .line 747
    :array_2ea
    .array-data 1
        0x5t
        0x17t
        0x3dt
        0x68t
        -0x61t
        0x56t
        -0xat
        0x4bt
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_2f2
    .array-data 1
        -0x7bt
        -0xet
        -0x8t
        0x7ft
        -0x59t
        0xct
        0x60t
        0x27t
        -0x6dt
        -0x20t
        -0x27t
        0x69t
        -0x52t
        0x4t
        0x40t
        0x3dt
        -0x50t
        -0x6t
        -0xct
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_300
    .array-data 1
        -0xat
        -0x6dt
        -0x74t
        0x1at
        -0x35t
        0x60t
        0x9t
        0x53t
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_308
    .array-data 1
        -0x20t
        0x71t
        -0x64t
        0xct
        0x1at
        0x75t
        -0x69t
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_310
    .array-data 1
        -0x73t
        0x14t
        -0x3t
        0x62t
        0x59t
        0x1bt
        -0x59t
        0x7ct
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_318
    .array-data 1
        -0xat
        0xct
        0x45t
        0x3ct
        -0x1t
        -0x6bt
        -0x15t
        0x2bt
        -0x7t
        0x21t
        0x5et
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_322
    .array-data 1
        -0x65t
        0x69t
        0x24t
        0x52t
        -0x44t
        -0x5t
        -0x25t
        0x6ft
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_32a
    .array-data 1
        0x2et
        0x6et
        -0x40t
        0x74t
        0x58t
        0x40t
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    nop

    .line 819
    :array_332
    .array-data 1
        0x43t
        0xft
        -0x48t
        0x37t
        0x36t
        0x70t
        0x9t
        0x65t
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_33a
    .array-data 1
        -0x6bt
        -0x50t
        -0x53t
        0x63t
        -0x43t
        -0x60t
        -0x33t
        -0x15t
        -0x50t
        -0x55t
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    nop

    .line 837
    :array_344
    .array-data 1
        -0x8t
        -0x2ft
        -0x2bt
        0x20t
        -0x2dt
        -0x70t
        -0x77t
        -0x77t
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_34c
    .array-data 1
        -0x7bt
        0x4et
        -0x79t
        0x17t
        -0x2ft
        0x7t
        0x13t
        0x5bt
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :array_354
    .array-data 1
        -0xbt
        0x3ct
        -0x18t
        0x61t
        -0x48t
        0x63t
        0x76t
        0x29t
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_35c
    .array-data 1
        -0x15t
        0x44t
        0x1dt
        0x9t
        -0x2ft
        0x71t
        0x1bt
        -0x3at
        -0x17t
        0x52t
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    nop

    .line 871
    :array_366
    .array-data 1
        -0x67t
        0x21t
        0x70t
        0x66t
        -0x5bt
        0x14t
        0x44t
        -0x5ft
    .end array-data
.end method

.method public static varargs c(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Float;
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_1f

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1c

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1c

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    double-to-float p0, p0

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
